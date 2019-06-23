# nRF key

Interface for Nordic nRF24L01 wireless modules.

## Project structure

In this repository you can find:
```
nRF-key
 |__ schematics --> KiCAD schematic
 |__ code       --> source code for ATtiny2313 microcontroller
```

## BOM

|Designator    | Description                | MPN               |
|--------------|----------------------------|-------------------|
|C2 C7 C8 C10  | capacitor 100n 0805        | 0805F104M500NT    |
|C9            | capacitor tantalum 10u     | TAJA106K016RNJ    |
|C5 C6         | capacitor 22p 0805         | 0805N220J500CT    |
|D1 D2 D3      | red led 0805               | QBLP631-R         |
|R1 R5         | resistor 10k 0805          | RC0805JR-0710KL   |
|R2 R3 R4      | Resistor 330 0805          | 0805W8J0331T5E    |
|U2            | microcontroller ATtiny2313 | ATTINY2313A-SU    |
|U1            | usb ttl uart ch340c        | CH340C            |
|U3            | LDO voltage regulator 3v3  | MCP1700T-3302E/TT |
|Y1            | crystal 8M                 | 1C208000BC0R      |


## Code features

Communication with nRF key is via 9600baud 8N1 serial port. Data received from another module is printed. Data to send is packaged in a 32byte maximum structure and must be followed by CR. Bytes over 32 (except for CR) will be ignored.
This is not a transparent bridge, but can be easily implemented.

nRF24L01 registers (i.e. tx/rx addresses) can be reprogrammed pressing programming button (i.e. holding low BTN/PD4 line) while inserting key. Programming mode is selected (both TX_LED and RX_LED will turn on), next 32byte will be stored in settings EEPROM. Data is structured as following:

| Byte n. |                       Function                  |  nRF reg. |
|---------|-------------------------------------------------|-----------|
|    0    |Configure register                               |     0     |
|    1    |Enable automatic answer function                 |     1     |
|    2    |Enable receive address                           |     2     |
|    3    |Setup address width                              |     3     |
|    4    |Automatic retransmission                         |     4     |
|    5    |Set channel frequency                            |     5     |
|    6    |Set transmission rate, LNA gain, transmit power  |     6     |
| 7&div;11|RX address for data channel 0                    |     10    |
|12&div;16|RX address for data channel 1                    |     11    |
|   17    |RX address for data channel 2                    |     12    |
|   18    |RX address for data channel 3                    |     13    |
|   19    |RX address for data channel 4                    |     14    |
|   20    |RX address for data channel 5                    |     15    |
|21&div;25|TX address                                       |     16    |
|   26    |RX data for channel 0                            |     17    |
|   27    |RX data for channel 1                            |     18    |
|   28    |RX data for channel 2                            |     19    |
|   29    |RX data for channel 3                            |     20    |
|   30    |RX data for channel 4                            |     21    |
|   31    |RX data for channel 5                            |     22    |

## How To

⋅⋅⋅ Make the PCB and solde it (I have a protoboard version too);
⋅⋅⋅ Obtain an AVR programmer (usbasp or Arduino as ISP)
⋅⋅⋅ Compile the code:
 * install `gcc-avr` `avr-libc` `avrdude`;
 * move in code directory;
 * type `make`;
 * check in Makefile if the programmer is correct;
 * type `make eeprom` then `make flash`.

## Authors

* **Giulio Fieramosca** - [giuliof](https://github.com/giuliof)


## License

This project is released under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
