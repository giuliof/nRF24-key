#include "GPIO.h"
#include "UART.h"
#include "nRF24L01.h"
#include "utils.h"
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <util/delay.h>

static char dataBuffer_rx[RX_PLOAD_WIDTH];
static char dataBuffer[TX_PLOAD_WIDTH];
static uint8_t dataCnt = 0;

int main() {
  _delay_ms(100);

  UART_init();

  NRF24L01_Init();

  GPIO_init();

  while (NRF24L01_Check()) {
    UART_send(error);
    _delay_ms(500);
  }

  // Enter in programming mode
  if (!(PIND & _BV(4))) {
    TXLED_ON();
    RXLED_ON();
    NRF24L01_UpdateCfg();
    TXLED_OFF();
    RXLED_OFF();
  }

  NRF24L01_SetUp();

  while (1) {
    char ch;

    // Check if someone is writing on serial
    if (UART_RXC()) {
      // Check if buffer overflow
      if (UART_OF()) {
        for (uint8_t i = 0; i < dataCnt; i++)
          dataBuffer[i] = 0;
        dataCnt = 0;

        // Flush corrupted buffer
        while (UART_RXC())
          ch = UDR;
      } else {
        ch = UDR;

        if (ch == '\r') {
          if (dataCnt == 0) {
            NRF24L01_DumpCfg();
            continue;
          }
          // Turn on TX LED
          TXLED_ON();

          // Temporary set as TX
          NRF24L01_TX_Mode();

          // Send all data
          if (NRF24L01_TxPacket((uint8_t *)dataBuffer) != TX_OK)
            UART_send(error);
          else
            UART_send(success);

          // Fallback to RX
          NRF24L01_RX_Mode();

          for (uint8_t c = 0; c < dataCnt; c++) {
            while (!UART_DRE())
              ;

            UDR = dataBuffer[c];

            dataBuffer[c] = 0;
          }

          dataCnt = 0;

          // Turn off TX LED
          TXLED_OFF();
        } else if (dataCnt < TX_PLOAD_WIDTH) {
          dataBuffer[dataCnt++] = ch;
        }
      }
    }

    // Check if incoming data on nRF is present
    if (NRF24L01_RxPacket((uint8_t *)dataBuffer_rx) == 0) {
      RXLED_ON();

      UART_send(dataBuffer_rx, RX_PLOAD_WIDTH);

      RXLED_OFF();
    }
  }
}