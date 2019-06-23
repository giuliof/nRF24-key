#ifndef UTILS_H_
#define UTILS_H_

/* Macros for bit management */
#define low(x) ((x)&0xFF)
#define high(x) ((x >> 8) & 0xFF)

#define _BS16(x) __builtin_bswap16(x)

/* Macros for port management */
#define xCAT2(a, b) a##b
#define CAT2(a, b) xCAT2(a, b)

#define xCAT3(a, b, c) a##b##c
#define CAT3(a, b, c) xCAT3(a, b, c)

#define CAT_PORT(a, b, c) xCAT2(a, b)
#define OUT(a) (CAT_PORT(PORT, a))
#define DDR(a) (CAT_PORT(DDR, a))
#define IN(a) (CAT_PORT(PIN, a))

#define CAT_PIN(a, b) b
#define PIN(a) (CAT_PIN(a))

#endif
