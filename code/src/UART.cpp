#include "UART.h"
#include <avr/io.h>

const char error[] = "Error\r\n";
const char success[] = "Success\r\n";
static const char TOHEX[] = "0123456789ABCDEF";

// UART_init is inline

void UART_send(const char *str, uint8_t size) {
  while (*str != '\0' && size != 0) {
    while (!(UCSRA & _BV(UDRE)))
      ;

    UDR = *str;

    str++;
    size--;
  }
}

void UART_sendHex(uint8_t *raw, uint8_t size) {
  for (uint8_t c = 0; c < size; c++) {
    UART_send(&TOHEX[raw[c] >> 4], 1);
    UART_send(&TOHEX[raw[c] & 0xf], 1);
  }
}