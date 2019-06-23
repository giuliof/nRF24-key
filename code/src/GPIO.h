#ifndef GPIO_H_
#define GPIO_H_

#define PIN_PRG_BTN    D,4
#define PIN_TX_LED 	   B,0
#define PIN_RX_LED 	   B,1

inline void GPIO_init() {
  DDR(PIN_PRG_BTN) &= ~_BV(PIN(PIN_PRG_BTN));
  OUT(PIN_PRG_BTN) |= _BV(PIN(PIN_PRG_BTN));
  DDR(PIN_RX_LED) |= _BV(PIN(PIN_RX_LED));
  DDR(PIN_TX_LED) |= _BV(PIN(PIN_TX_LED));
}

#define TXLED_ON() (OUT(PIN_TX_LED) |= _BV(PIN(PIN_TX_LED)))
#define TXLED_OFF() (OUT(PIN_TX_LED) &= ~_BV(PIN(PIN_TX_LED)))
#define RXLED_ON() (OUT(PIN_RX_LED) |= _BV(PIN(PIN_RX_LED)))
#define RXLED_OFF() (OUT(PIN_RX_LED) &= ~_BV(PIN(PIN_RX_LED)))

#endif