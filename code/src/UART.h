#ifndef UART_H_
#define UART_H_

// Message constants
extern const char error[];
extern const char success[];

inline void UART_init() {
  // 9600 baud UART
  UBRRH = 0;
  UBRRL = 51;

  UCSRB = _BV(RXEN) | _BV(TXEN);
}

void UART_send(const char *str, uint8_t size = 255);
void UART_sendHex(uint8_t *raw, uint8_t size);

// Pseudo-functions
#define UART_RXC() (UCSRA & _BV(RXC))
#define UART_OF() (UCSRA & _BV(DOR))
#define UART_DRE() (UCSRA & _BV(UDRE))
#endif