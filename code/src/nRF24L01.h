#ifndef __24L01_H
#define __24L01_H
#include "utils.h"

#define PIN_SPI_CS    	   B,3 // CSN
#define PIN_24L01_CE 	     B,4 // CE

#define PIN_24L01_IRQ 	   B,2

#define SPI_CS_HIGH()        (OUT(PIN_SPI_CS) |= _BV(PIN(PIN_SPI_CS)))
#define SPI_CS_LOW()         (OUT(PIN_SPI_CS) &= ~_BV(PIN(PIN_SPI_CS)))

#define NRF24L01_CE_HIGH()   (OUT(PIN_24L01_CE) |= _BV(PIN(PIN_24L01_CE)))
#define NRF24L01_CE_LOW()    (OUT(PIN_24L01_CE) &= ~_BV(PIN(PIN_24L01_CE)))

#define NRF24L01_IRQ()       (IN(PIN_24L01_IRQ) & _BV(PIN(PIN_24L01_IRQ)))

// Commands
#define NRF_READ_REG    0x00  // Read register. lower 5 bits are register address
#define NRF_WRITE_REG   0x20  // Write register. lower 5 bits are register address
#define RD_RX_PLOAD     0x61  // Read RX data
#define WR_TX_PLOAD     0xA0  // Write TX data
#define FLUSH_TX        0xE1  // Clear FIFO TX register
#define FLUSH_RX        0xE2  // Clear FIFO RX register
#define REUSE_TX_PL     0xE3  // Reuse previous packet
#define NOP             0xFF  // Null operation (read status register)

// Register Addresses
#define CONFIG          0x00  // Configure register
#define EN_AA           0x01  // Enable automatic answer function
#define EN_RXADDR       0x02  // Enable receive address
#define SETUP_AW        0x03  // Setup address width
#define SETUP_RETR      0x04  // Automatic retransmission
#define RF_CH           0x05  // Set channel frequency
#define RF_SETUP        0x06  // Set transmission rate, LNA gain, transmit power
#define STATUS          0x07  // Status register
#define OBSERVE_TX      0x08  // Transmission detection
#define CD              0x09  // Carrier detection
#define RX_ADDR_P0      0x0A  // RX address for data channel 0
#define RX_ADDR_P1      0x0B  // RX address for data channel 1
#define RX_ADDR_P2      0x0C  // RX address for data channel 2
#define RX_ADDR_P3      0x0D  // RX address for data channel 3
#define RX_ADDR_P4      0x0E  // RX address for data channel 4
#define RX_ADDR_P5      0x0F  // RX address for data channel 5
#define TX_ADDR         0x10  // TX address
#define RX_PW_P0        0x11  // RX data for channel 0
#define RX_PW_P1        0x12  // RX data for channel 1
#define RX_PW_P2        0x13  // RX data for channel 2
#define RX_PW_P3        0x14  // RX data for channel 3
#define RX_PW_P4        0x15  // RX data for channel 4
#define RX_PW_P5        0x16  // RX data for channel 5
#define NRF_FIFO_STATUS 0x17  // FIFO status register

// Return values
enum {
  MAX_TX 	= 0x10,
  TX_OK  	= 0x20,
  RX_OK  	= 0x40 
};

#define TX_ADR_WIDTH    5 
#define RX_ADR_WIDTH    5 
#define TX_PLOAD_WIDTH  32
#define RX_PLOAD_WIDTH  32

void NRF24L01_Init(void);
void NRF24L01_SetUp(void);
void NRF24L01_RX_Mode(void);
void NRF24L01_TX_Mode(void);
uint8_t NRF24L01_Check(void);
uint8_t NRF24L01_TxPacket(uint8_t *txbuf);
uint8_t NRF24L01_RxPacket(uint8_t *rxbuf);
void NRF24L01_DumpCfg(void);
void NRF24L01_UpdateCfg(void);
#endif