#include <avr/io.h>
#include <util/delay.h>
#include <avr/eeprom.h>
#include "nRF24L01.h"
#include "UART.h"

static void SPI_Init() {
  // Set DO and SCL as output with pullups
  DDRB |= _BV(PB6);  // as output (DO) - data out
  DDRB |= _BV(PB7);  // as output (USISCK) - clock
  DDRB &= ~_BV(PB5); // as input (DI) - data in
  PORTB |= _BV(PB5); // pullup on (DI)

  DDR(PIN_SPI_CS) |= _BV(PIN(PIN_SPI_CS));

  SPI_CS_HIGH();
}

static uint8_t SPI_ReadWriteByte(uint8_t dat) {
  USIDR = dat;

  // Clear Overflow Interrupt Flag
  USISR = _BV(USIOIF);

  // Do this loop 16times
  do {
    // Send clock pulse
    USICR |= _BV(USITC) | _BV(USIWM0) | _BV(USICS1) | _BV(USICLK);
    // 100kHz SPI
    _delay_us(5);
  } while (!(USISR & _BV(USIOIF)));

  return USIDR;
}


/* NRF24L01_Read_Reg: read an nRF register content
 * reg: register address
 * Return value: register's content
 */
static uint8_t NRF24L01_Read_Reg(uint8_t reg) {
  uint8_t reg_val;

  SPI_CS_LOW();
  SPI_ReadWriteByte(reg);
  reg_val = SPI_ReadWriteByte(0XFF);
  SPI_CS_HIGH();

  return reg_val;
}

/* NRF24L01_Write_Reg: write an nRF register
 * reg: register address
 * value: register value
 * Return value: status
 */
static uint8_t NRF24L01_Write_Reg(uint8_t reg, uint8_t value) {
  uint8_t status;

  SPI_CS_LOW();
  status = SPI_ReadWriteByte(reg);
  SPI_ReadWriteByte(value);
  SPI_CS_HIGH();

  return status;
}

/* NRF24L01_Read_Buf: read specified data length at specified nRF address
 * reg:  nRF register location
 * pBuf: data buffer
 * len:  data length
 * return value: status register value
 */
static uint8_t NRF24L01_Read_Buf(uint8_t reg, uint8_t *pBuf, uint8_t len) {
  uint8_t status;

  SPI_CS_LOW();
  status = SPI_ReadWriteByte(reg);
  for (uint8_t c = 0; c < len; c++)
    pBuf[c] = SPI_ReadWriteByte(0xFF); // gibberish data
  SPI_CS_HIGH();

  return status;
}

/* NRF24L01_Write_Buf: write data buffer to certain nRF address
 * reg:  nRF register location
 * pBuf: data buffer
 * len:  data length
 * return value: status register value
 */
static uint8_t NRF24L01_Write_Buf(uint8_t reg, uint8_t *pBuf, uint8_t len) {
  uint8_t status;

  SPI_CS_LOW();
  _delay_us(5);
  status = SPI_ReadWriteByte(reg);
  for (uint8_t c = 0; c < len; c++) {
    SPI_ReadWriteByte(*pBuf++);
  }
  _delay_us(5);
  SPI_CS_HIGH();

  return status;
}


// NRF24L01 initialisation
void NRF24L01_Init() {
  DDR(PIN_24L01_CE) |= _BV(PIN(PIN_24L01_CE));
  DDR(PIN_24L01_IRQ) &= ~_BV(PIN(PIN_24L01_IRQ));
  OUT(PIN_24L01_IRQ) |= _BV(PIN(PIN_24L01_IRQ));

  SPI_Init();

  NRF24L01_CE_LOW();
  SPI_CS_HIGH();
}

// Check presence of nRF24 module
uint8_t NRF24L01_Check() {
  uint8_t buf[5] = {0xA5, 0xA5, 0xA5, 0xA5, 0xA5};
  uint8_t i;

  NRF24L01_Write_Buf(NRF_WRITE_REG + TX_ADDR, buf, 5);
  NRF24L01_Read_Buf(TX_ADDR, buf, 5);
  for (i = 0; i < 5; i++)
    if (buf[i] != 0xA5)
      break;
  if (i != 5)
    return 1;
  return 0;
}

void NRF24L01_SetUp() {
  // Data buffer containing setting read from EEPROM
	uint8_t eebuffer[7];

  NRF24L01_CE_LOW();

  eeprom_read_block(eebuffer, (const void*)0, 7);
  for (uint8_t i = 0; i < 7; i++)
    NRF24L01_Write_Reg(NRF_WRITE_REG + CONFIG + i, eebuffer[i]); // Enable CRC, 16-bit wide
  
  // Set RX address 0
	eeprom_read_block(eebuffer, (const void*)7, RX_ADR_WIDTH);
  //UART_sendHex(eebuffer, 5);
  NRF24L01_Write_Buf(NRF_WRITE_REG + RX_ADDR_P0, eebuffer, RX_ADR_WIDTH);
  // Set RX address 1
	eeprom_read_block(eebuffer, (const void*)12, RX_ADR_WIDTH);
  //UART_sendHex(eebuffer, 5);
  NRF24L01_Write_Buf(NRF_WRITE_REG + RX_ADDR_P1, eebuffer, RX_ADR_WIDTH);
  // Set RX address 2-5
  eeprom_read_block(eebuffer, (const void*)17, 4);
  //UART_sendHex(eebuffer, 4);
  for (uint8_t i = 0; i < 4; i++)
    NRF24L01_Write_Reg(NRF_WRITE_REG + RX_ADDR_P2 + i, eebuffer[i]);

	// Set TX address
	eeprom_read_block(eebuffer, (const void*)21, TX_ADR_WIDTH);
  //UART_sendHex(eebuffer, 5);
  NRF24L01_Write_Buf(NRF_WRITE_REG + TX_ADDR, eebuffer, TX_ADR_WIDTH);

  // Set RX_ADDR_P*
  eeprom_read_block(eebuffer, (const void*)26, 6);
  //UART_sendHex(eebuffer, 6);
  for (uint8_t i = 0; i < 6; i++)
    NRF24L01_Write_Reg(NRF_WRITE_REG + RX_PW_P0 + i, eebuffer[i]);
  
  NRF24L01_CE_HIGH();
}

/* NRF24L01_TxPacket: send data packet with nRF24
 * txbuf: address of first byte to send
 * Return value: send completion status
 */
uint8_t NRF24L01_TxPacket(uint8_t *txbuf) {
  uint8_t status;

  NRF24L01_CE_LOW();
  NRF24L01_Write_Buf(WR_TX_PLOAD, txbuf, TX_PLOAD_WIDTH);
  NRF24L01_CE_HIGH();

  while (NRF24L01_IRQ() != 0)
    ;

  status = NRF24L01_Read_Reg(STATUS);
  NRF24L01_Write_Reg(NRF_WRITE_REG + STATUS, status);

  // Maximum number of retransmission reached
  if (status & MAX_TX) {
    NRF24L01_Write_Reg(FLUSH_TX, 0xff);
    return MAX_TX;
  }

  if (status & TX_OK)
    return TX_OK;

  return 0xff;
}

/* NRF24L01_RxPacket: receive data packet with nRF24
 * rxbuf: address of first byte of receive data buffer
 * Return value: 0 if success, 1 if no data present
 */
uint8_t NRF24L01_RxPacket(uint8_t *rxbuf) {
  uint8_t status;

  status = NRF24L01_Read_Reg(STATUS);
  NRF24L01_Write_Reg(NRF_WRITE_REG + STATUS, status);
  if (status & RX_OK) {
    NRF24L01_Read_Buf(RD_RX_PLOAD, rxbuf, RX_PLOAD_WIDTH);
    NRF24L01_Write_Reg(FLUSH_RX, 0xff);
    return 0;
  }
  return 1;
}

void NRF24L01_RX_Mode() {
  uint8_t cfg;
  cfg = NRF24L01_Read_Reg(NRF_READ_REG + CONFIG);
  NRF24L01_CE_LOW();
  NRF24L01_Write_Reg(NRF_WRITE_REG + CONFIG, cfg | _BV(0));
  NRF24L01_CE_HIGH();
}

void NRF24L01_TX_Mode() {
  uint8_t cfg;
  cfg = NRF24L01_Read_Reg(NRF_READ_REG + CONFIG);
  NRF24L01_CE_LOW();
  NRF24L01_Write_Reg(NRF_WRITE_REG + CONFIG, cfg & ~_BV(0));
  NRF24L01_CE_HIGH();
}

void NRF24L01_DumpCfg() {
  uint8_t eebuffer[7];

  for (uint8_t i = 0; i < 7; i++)
   eebuffer[i] = NRF24L01_Read_Reg(NRF_READ_REG + CONFIG + i); // Enable CRC, 16-bit wide
  UART_sendHex(eebuffer, 7);

  NRF24L01_Read_Buf(NRF_READ_REG + RX_ADDR_P0, eebuffer, RX_ADR_WIDTH);
  UART_sendHex(eebuffer, 5);

  NRF24L01_Read_Buf(NRF_READ_REG + RX_ADDR_P1, eebuffer, RX_ADR_WIDTH);
  UART_sendHex(eebuffer, 5);

  for (uint8_t i = 0; i < 4; i++)
    eebuffer[i] = NRF24L01_Read_Reg(NRF_READ_REG + RX_ADDR_P2 + i);
  UART_sendHex(eebuffer, 4);


  NRF24L01_Read_Buf(NRF_READ_REG + TX_ADDR, eebuffer, TX_ADR_WIDTH);
  UART_sendHex(eebuffer, 5);

  for (uint8_t i = 0; i < 6; i++)
    eebuffer[i] = NRF24L01_Read_Reg(NRF_READ_REG + RX_PW_P0 + i);
  UART_sendHex(eebuffer, 6);
}

void NRF24L01_UpdateCfg() {
  // flush previous data
  while (UART_RXC())
    uint8_t tmp = UDR;

  for (uint8_t* i = 0; i < (const uint8_t*)32; i++) {
    uint8_t data;
    // send ready to receive
    UDR = (int)i;

    // wait for data
    while (!UART_RXC())
      ;
    
    data = UDR;  
    eeprom_update_byte(i, data);
  }
}