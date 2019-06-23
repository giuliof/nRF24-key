EESchema Schematic File Version 4
LIBS:nRF-key-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_A J1
U 1 1 5C799EB1
P 900 2450
F 0 "J1" H 955 2917 50  0000 C CNN
F 1 "USB_A" H 955 2826 50  0000 C CNN
F 2 "connectors:usb-PCB" H 1050 2400 50  0001 C CNN
F 3 " ~" H 1050 2400 50  0001 C CNN
F 4 "-" H -600 250 50  0001 C CNN "Manufacturer"
F 5 "-" H -600 250 50  0001 C CNN "Part no"
F 6 "-" H 0   0   50  0001 C CNN "Link"
F 7 "-" H 0   0   50  0001 C CNN "Source"
	1    900  2450
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:CH340G U1
U 1 1 5C799F76
P 2600 2550
F 0 "U1" H 2850 1950 50  0000 C CNN
F 1 "CH340C" H 2850 1850 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2650 2000 50  0001 L CNN
F 3 "https://www.mpja.com/download/35227cpdata.pdf" H 2250 3350 50  0001 C CNN
F 4 "http://www.wch.cn/search?t=all&q=CH340C" H -450 250 50  0001 C CNN "Link"
F 5 "WCH" H -450 250 50  0001 C CNN "Manufacturer"
F 6 "CH340C" H -450 250 50  0001 C CNN "Part no"
F 7 "WCH" H -450 250 50  0001 C CNN "Source"
	1    2600 2550
	1    0    0    -1  
$EndComp
$Comp
L _wireless:NRF24L01+_SHIELD J3
U 1 1 5C79A49E
P 8850 3300
F 0 "J3" H 8850 3815 50  0000 C CNN
F 1 "NRF24L01+_SHIELD" H 8850 3724 50  0000 C CNN
F 2 "_connectors:nRF24-2x05_P2.54mm" H 8850 3300 50  0001 C CNN
F 3 "" H 8850 3300 50  0001 C CNN
F 4 "https://www.ebay.it/itm/12Pcs-2X5-Pin-10P-2-54MM-Double-Row-Female-Straight-Header-Pin-Strip-rw/252899862924?hash=item3ae201a98c:g:bRAAAOSw8hxbPeGj" H -750 -250 50  0001 C CNN "Link"
F 5 "Ebay" H -750 -250 50  0001 C CNN "Source"
F 6 "-" H -750 -250 50  0001 C CNN "Manufacturer"
F 7 "-" H -750 -250 50  0001 C CNN "Part no"
	1    8850 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2450 1300 2450
Wire Wire Line
	1200 2550 1300 2550
$Comp
L Device:CP C9
U 1 1 5C79A7D0
P 9200 1850
F 0 "C9" H 9318 1896 50  0000 L CNN
F 1 "10u" H 9318 1805 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-12_Kemet-S" H 9238 1700 50  0001 C CNN
F 3 "~" H 9200 1850 50  0001 C CNN
F 4 "AVX" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "TAJA106K016RNJ" H 0   0   50  0001 C CNN "Part no"
F 6 "Seeed OPL" H 0   0   50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    9200 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5C79A87C
P 9700 1850
F 0 "C10" H 9815 1896 50  0000 L CNN
F 1 "100n" H 9815 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9738 1700 50  0001 C CNN
F 3 "~" H 9700 1850 50  0001 C CNN
F 4 "FH" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "0805F104M500NT" H 0   0   50  0001 C CNN "Part no"
F 6 "OPL" H 0   0   50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    9700 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5C79ADDC
P 1450 2200
F 0 "#PWR02" H 1450 2050 50  0001 C CNN
F 1 "+5V" H 1465 2373 50  0000 C CNN
F 2 "" H 1450 2200 50  0001 C CNN
F 3 "" H 1450 2200 50  0001 C CNN
	1    1450 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5C79AE13
P 2600 1850
F 0 "#PWR06" H 2600 1700 50  0001 C CNN
F 1 "+5V" H 2615 2023 50  0000 C CNN
F 2 "" H 2600 1850 50  0001 C CNN
F 3 "" H 2600 1850 50  0001 C CNN
	1    2600 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5C79AE4A
P 5600 1500
F 0 "#PWR012" H 5600 1350 50  0001 C CNN
F 1 "+5V" H 5615 1673 50  0000 C CNN
F 2 "" H 5600 1500 50  0001 C CNN
F 3 "" H 5600 1500 50  0001 C CNN
	1    5600 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5C79AF0B
P 5600 3750
F 0 "#PWR013" H 5600 3500 50  0001 C CNN
F 1 "GND" H 5605 3577 50  0000 C CNN
F 2 "" H 5600 3750 50  0001 C CNN
F 3 "" H 5600 3750 50  0001 C CNN
	1    5600 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2250 1300 2250
Wire Wire Line
	1450 2250 1450 2200
$Comp
L power:GND #PWR01
U 1 1 5C79B293
P 900 2850
F 0 "#PWR01" H 900 2600 50  0001 C CNN
F 1 "GND" H 905 2677 50  0000 C CNN
F 2 "" H 900 2850 50  0001 C CNN
F 3 "" H 900 2850 50  0001 C CNN
	1    900  2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5C79B2B3
P 2600 3150
F 0 "#PWR07" H 2600 2900 50  0001 C CNN
F 1 "GND" H 2605 2977 50  0000 C CNN
F 2 "" H 2600 3150 50  0001 C CNN
F 3 "" H 2600 3150 50  0001 C CNN
	1    2600 3150
	1    0    0    -1  
$EndComp
NoConn ~ 800  2850
Wire Wire Line
	2500 1900 2500 1950
Wire Wire Line
	5600 1500 5600 1550
$Comp
L MCU_Microchip_ATtiny:ATtiny2313A-SU U2
U 1 1 5C79BC4A
P 5600 2650
F 0 "U2" H 6000 3850 50  0000 C CNN
F 1 "ATtiny2313A-SU" H 6000 3750 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 5600 2650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8246.pdf" H 5600 2650 50  0001 C CNN
F 4 "https://www.mouser.com" H 0   -200 50  0001 C CNN "Link"
F 5 "Microchip" H 0   -200 50  0001 C CNN "Manufacturer"
F 6 "ATTINY2313A-SU" H 0   -200 50  0001 C CNN "Part no"
F 7 "Mouser" H 0   -200 50  0001 C CNN "Source"
	1    5600 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5C79BFF6
P 6950 3750
F 0 "C7" H 7065 3796 50  0000 L CNN
F 1 "100n" H 7065 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6988 3600 50  0001 C CNN
F 3 "~" H 6950 3750 50  0001 C CNN
F 4 "OPL" H 6950 3750 50  0001 C CNN "Source"
F 5 "0805F104M500NT" H 6950 3750 50  0001 C CNN "Part no"
F 6 "FH" H 6950 3750 50  0001 C CNN "Manufacturer"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    6950 3750
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MCP1700-3302E_SOT23 U3
U 1 1 5C79C36E
P 8550 1600
F 0 "U3" H 8550 1842 50  0000 C CNN
F 1 "MCP1700-3302E_SOT23" H 8550 1751 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8550 1825 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MCP1700-Low-Quiescent-Current-LDO-20001826E.pdf" H 8550 1600 50  0001 C CNN
F 4 "https://www.mouser.com" H 8550 1600 50  0001 C CNN "Link"
F 5 "Microchip" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "MCP1700T-3302E/TT " H 0   0   50  0001 C CNN "Part no"
F 7 "Mouser" H 0   0   50  0001 C CNN "Source"
	1    8550 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5C79C513
P 7900 1850
F 0 "C8" H 8015 1896 50  0000 L CNN
F 1 "100n" H 8015 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7938 1700 50  0001 C CNN
F 3 "~" H 7900 1850 50  0001 C CNN
F 4 "FH" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "0805F104M500NT" H 0   0   50  0001 C CNN "Part no"
F 6 "OPL" H 0   0   50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    7900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1850 2600 1950
$Comp
L Device:C C2
U 1 1 5C79C7CD
P 1900 1900
F 0 "C2" V 1648 1900 50  0000 C CNN
F 1 "100n" V 1739 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1938 1750 50  0001 C CNN
F 3 "~" H 1900 1900 50  0001 C CNN
F 4 "FH" H -450 250 50  0001 C CNN "Manufacturer"
F 5 "0805F104M500NT" H -450 250 50  0001 C CNN "Part no"
F 6 "OPL" H -450 250 50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    1900 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 1900 2500 1900
Wire Wire Line
	1750 1900 1700 1900
Wire Wire Line
	1700 1900 1700 2100
$Comp
L power:GND #PWR03
U 1 1 5C79C8EB
P 1700 2100
F 0 "#PWR03" H 1700 1850 50  0001 C CNN
F 1 "GND" H 1705 1927 50  0000 C CNN
F 2 "" H 1700 2100 50  0001 C CNN
F 3 "" H 1700 2100 50  0001 C CNN
	1    1700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2150 3250 2150
Wire Wire Line
	3000 2250 3250 2250
Text Label 3250 2150 2    50   ~ 0
RX
Text Label 3250 2250 2    50   ~ 0
TX
NoConn ~ 3000 2450
NoConn ~ 3000 2550
NoConn ~ 3000 2650
NoConn ~ 3000 2750
NoConn ~ 3000 2850
NoConn ~ 3000 2950
NoConn ~ 2200 2250
Wire Wire Line
	6200 2750 6500 2750
Wire Wire Line
	6200 2850 6500 2850
Text Label 6500 2750 2    50   ~ 0
RX
Text Label 6500 2850 2    50   ~ 0
TX
$Comp
L power:+5V #PWR014
U 1 1 5C79F96E
P 7900 1550
F 0 "#PWR014" H 7900 1400 50  0001 C CNN
F 1 "+5V" H 7915 1723 50  0000 C CNN
F 2 "" H 7900 1550 50  0001 C CNN
F 3 "" H 7900 1550 50  0001 C CNN
	1    7900 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1600 7900 1600
Wire Wire Line
	7900 1550 7900 1600
Connection ~ 7900 1600
Wire Wire Line
	7900 1700 7900 1600
Wire Wire Line
	7900 2000 7900 2050
Wire Wire Line
	7900 2050 8550 2050
Wire Wire Line
	8550 2050 8550 1900
Wire Wire Line
	8550 2050 9200 2050
Wire Wire Line
	9200 2050 9200 2000
Connection ~ 8550 2050
Wire Wire Line
	9200 1700 9200 1600
Wire Wire Line
	9200 1600 8850 1600
Wire Wire Line
	9200 2050 9700 2050
Wire Wire Line
	9700 2050 9700 2000
Connection ~ 9200 2050
Wire Wire Line
	9700 1700 9700 1600
Wire Wire Line
	9700 1600 9200 1600
Connection ~ 9200 1600
$Comp
L power:GND #PWR015
U 1 1 5C7A178C
P 8550 2100
F 0 "#PWR015" H 8550 1850 50  0001 C CNN
F 1 "GND" H 8555 1927 50  0000 C CNN
F 2 "" H 8550 2100 50  0001 C CNN
F 3 "" H 8550 2100 50  0001 C CNN
	1    8550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2100 8550 2050
$Comp
L power:+3.3V #PWR016
U 1 1 5C7A1C5C
P 9700 1550
F 0 "#PWR016" H 9700 1400 50  0001 C CNN
F 1 "+3.3V" H 9715 1723 50  0000 C CNN
F 2 "" H 9700 1550 50  0001 C CNN
F 3 "" H 9700 1550 50  0001 C CNN
	1    9700 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1550 9700 1600
Connection ~ 9700 1600
Wire Wire Line
	9150 3050 9400 3050
Wire Wire Line
	8550 3150 8300 3150
Wire Wire Line
	8550 3250 8300 3250
Wire Wire Line
	8550 3350 8300 3350
Wire Wire Line
	8550 3450 8300 3450
Wire Wire Line
	9400 3150 9150 3150
Wire Wire Line
	9400 3250 9150 3250
Wire Wire Line
	9400 3350 9150 3350
Wire Wire Line
	9400 3450 9150 3450
Text Label 8300 3450 0    50   ~ 0
GND
Text Label 8300 3350 0    50   ~ 0
DI
Text Label 8300 3250 0    50   ~ 0
SCL
Text Label 8300 3150 0    50   ~ 0
~CE~
Text Label 9400 3050 2    50   ~ 0
+3V3
Text Label 9400 3150 2    50   ~ 0
~CSN~
Text Label 9400 3250 2    50   ~ 0
DO
Text Label 9400 3350 2    50   ~ 0
IRQ
Text Label 9400 3450 2    50   ~ 0
GND
Wire Wire Line
	6200 2550 6500 2550
Wire Wire Line
	6200 2450 6500 2450
Wire Wire Line
	6200 2350 6500 2350
Text Label 6500 2550 2    50   ~ 0
SCL
Text Label 6500 2450 2    50   ~ 0
DO
Text Label 6500 2350 2    50   ~ 0
DI
Wire Wire Line
	5000 2050 4150 2050
Wire Wire Line
	4150 2050 4150 2400
Wire Wire Line
	4150 2400 4300 2400
Wire Wire Line
	4600 2400 4750 2400
Wire Wire Line
	4750 2400 4750 2250
Wire Wire Line
	4750 2250 5000 2250
$Comp
L Device:C C5
U 1 1 5C7A8FAB
P 4150 2650
F 0 "C5" H 4265 2696 50  0000 L CNN
F 1 "22p" H 4265 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4188 2500 50  0001 C CNN
F 3 "~" H 4150 2650 50  0001 C CNN
F 4 "Walsin" H -250 -200 50  0001 C CNN "Manufacturer"
F 5 "0805N220J500CT" H -250 -200 50  0001 C CNN "Part no"
F 6 "OPL" H -250 -200 50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    4150 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5C7A9013
P 4750 2650
F 0 "C6" H 4865 2696 50  0000 L CNN
F 1 "22p" H 4865 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4788 2500 50  0001 C CNN
F 3 "~" H 4750 2650 50  0001 C CNN
F 4 "Walsin" H -50 -200 50  0001 C CNN "Manufacturer"
F 5 "0805N220J500CT" H -50 -200 50  0001 C CNN "Part no"
F 6 "OPL" H -50 -200 50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    4750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2500 4150 2400
Connection ~ 4150 2400
Wire Wire Line
	4750 2500 4750 2400
Connection ~ 4750 2400
$Comp
L power:GND #PWR08
U 1 1 5C7AAA4D
P 4150 2800
F 0 "#PWR08" H 4150 2550 50  0001 C CNN
F 1 "GND" H 4155 2627 50  0000 C CNN
F 2 "" H 4150 2800 50  0001 C CNN
F 3 "" H 4150 2800 50  0001 C CNN
	1    4150 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5C7AAA7A
P 4750 2800
F 0 "#PWR09" H 4750 2550 50  0001 C CNN
F 1 "GND" H 4755 2627 50  0000 C CNN
F 2 "" H 4750 2800 50  0001 C CNN
F 3 "" H 4750 2800 50  0001 C CNN
	1    4750 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5C7AACE3
P 6950 3900
F 0 "#PWR011" H 6950 3650 50  0001 C CNN
F 1 "GND" H 6955 3727 50  0000 C CNN
F 2 "" H 6950 3900 50  0001 C CNN
F 3 "" H 6950 3900 50  0001 C CNN
	1    6950 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5C7AAD10
P 6950 3600
F 0 "#PWR010" H 6950 3450 50  0001 C CNN
F 1 "+5V" H 6965 3773 50  0000 C CNN
F 2 "" H 6950 3600 50  0001 C CNN
F 3 "" H 6950 3600 50  0001 C CNN
	1    6950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2050 6500 2050
Wire Wire Line
	6200 2250 6500 2250
Wire Wire Line
	6200 2150 6500 2150
Text Label 6500 2050 2    50   ~ 0
IRQ
Text Label 6500 2250 2    50   ~ 0
~CE~
Text Label 6500 2150 2    50   ~ 0
~CSN~
$Comp
L Jumper:SolderJumper_3_Bridged12 J4
U 1 1 5C7AF2B8
P 8000 3050
F 0 "J4" V 7954 3118 50  0000 L CNN
F 1 "SJ" V 8045 3118 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8000 3050 50  0001 C CNN
F 3 "~" H 8000 3050 50  0001 C CNN
F 4 "-" H -2450 -250 50  0001 C CNN "Manufacturer"
F 5 "-" H -2450 -250 50  0001 C CNN "Part no"
F 6 "-" H 0   0   50  0001 C CNN "Link"
F 7 "-" H 0   0   50  0001 C CNN "Source"
	1    8000 3050
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5C7B065E
P 8000 3250
F 0 "#PWR018" H 8000 3000 50  0001 C CNN
F 1 "GND" H 8005 3077 50  0000 C CNN
F 2 "" H 8000 3250 50  0001 C CNN
F 3 "" H 8000 3250 50  0001 C CNN
	1    8000 3250
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR017
U 1 1 5C7B068D
P 8000 2850
F 0 "#PWR017" H 8000 2700 50  0001 C CNN
F 1 "+3.3V" H 8015 3023 50  0000 C CNN
F 2 "" H 8000 2850 50  0001 C CNN
F 3 "" H 8000 2850 50  0001 C CNN
	1    8000 2850
	-1   0    0    -1  
$EndComp
$Comp
L Graphic:Logo_Open_Hardware_Small LOGO1
U 1 1 5C7B15A0
P 1150 6150
F 0 "LOGO1" H 1150 6425 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 1150 5925 50  0001 C CNN
F 2 "Logos:oshw-logo-10mm" H 1150 6150 50  0001 C CNN
F 3 "~" H 1150 6150 50  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "-" H 0   0   50  0001 C CNN "Part no"
F 6 "-" H 0   0   50  0001 C CNN "Link"
F 7 "-" H 0   0   50  0001 C CNN "Source"
	1    1150 6150
	1    0    0    -1  
$EndComp
NoConn ~ 2200 2950
NoConn ~ 2200 2750
Wire Wire Line
	5000 1850 4750 1850
Wire Wire Line
	4750 1850 4750 1750
$Comp
L Device:R R1
U 1 1 5C93F2AF
P 4750 1600
F 0 "R1" H 4820 1646 50  0000 L CNN
F 1 "10k" H 4820 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4680 1600 50  0001 C CNN
F 3 "~" H 4750 1600 50  0001 C CNN
F 4 "Yageo" H -50 -200 50  0001 C CNN "Manufacturer"
F 5 "RC0805JR-0710KL" H -50 -200 50  0001 C CNN "Part no"
F 6 "OPL" H -50 -200 50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    4750 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5C93F31D
P 4750 1450
F 0 "#PWR0101" H 4750 1300 50  0001 C CNN
F 1 "+5V" H 4765 1623 50  0000 C CNN
F 2 "" H 4750 1450 50  0001 C CNN
F 3 "" H 4750 1450 50  0001 C CNN
	1    4750 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5CA54293
P 1650 4650
F 0 "R2" H 1580 4604 50  0000 R CNN
F 1 "330" H 1580 4695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1580 4650 50  0001 C CNN
F 3 "~" H 1650 4650 50  0001 C CNN
F 4 "Uniohm" H -300 900 50  0001 C CNN "Manufacturer"
F 5 "0805W8J0331T5E" H -300 900 50  0001 C CNN "Part no"
F 6 "OPL" H -300 900 50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    1650 4650
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5CA543B3
P 1650 5000
F 0 "D1" V 1688 4883 50  0000 R CNN
F 1 "LED" V 1597 4883 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 1650 5000 50  0001 C CNN
F 3 "~" H 1650 5000 50  0001 C CNN
F 4 "QT" H -300 900 50  0001 C CNN "Manufacturer"
F 5 "QBLP631-R" H -300 900 50  0001 C CNN "Part no"
F 6 "OPL" H -300 900 50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    1650 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5CA544E5
P 1650 5200
F 0 "#PWR0102" H 1650 4950 50  0001 C CNN
F 1 "GND" H 1655 5027 50  0000 C CNN
F 2 "" H 1650 5200 50  0001 C CNN
F 3 "" H 1650 5200 50  0001 C CNN
	1    1650 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5CA5457C
P 1650 4500
F 0 "#PWR0103" H 1650 4350 50  0001 C CNN
F 1 "+5V" H 1665 4673 50  0000 C CNN
F 2 "" H 1650 4500 50  0001 C CNN
F 3 "" H 1650 4500 50  0001 C CNN
	1    1650 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5CA54624
P 2500 4650
F 0 "R4" H 2430 4604 50  0000 R CNN
F 1 "330" H 2430 4695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2430 4650 50  0001 C CNN
F 3 "~" H 2500 4650 50  0001 C CNN
F 4 "Uniohm" H 50  900 50  0001 C CNN "Manufacturer"
F 5 "0805W8J0331T5E" H 50  900 50  0001 C CNN "Part no"
F 6 "OPL" H 50  900 50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    2500 4650
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5CA5462B
P 2500 5000
F 0 "D3" V 2538 4883 50  0000 R CNN
F 1 "LED" V 2447 4883 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 2500 5000 50  0001 C CNN
F 3 "~" H 2500 5000 50  0001 C CNN
F 4 "QT" H 50  900 50  0001 C CNN "Manufacturer"
F 5 "QBLP631-R" H 50  900 50  0001 C CNN "Part no"
F 6 "OPL" H 50  900 50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    2500 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5CA54632
P 2500 5200
F 0 "#PWR0104" H 2500 4950 50  0001 C CNN
F 1 "GND" H 2505 5027 50  0000 C CNN
F 2 "" H 2500 5200 50  0001 C CNN
F 3 "" H 2500 5200 50  0001 C CNN
	1    2500 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5CA553B2
P 2050 4650
F 0 "R3" H 1980 4604 50  0000 R CNN
F 1 "330" H 1980 4695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1980 4650 50  0001 C CNN
F 3 "~" H 2050 4650 50  0001 C CNN
F 4 "Uniohm" H -850 900 50  0001 C CNN "Manufacturer"
F 5 "0805W8J0331T5E" H -850 900 50  0001 C CNN "Part no"
F 6 "OPL" H -850 900 50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    2050 4650
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5CA553B9
P 2050 5000
F 0 "D2" V 2088 4883 50  0000 R CNN
F 1 "LED" V 1997 4883 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 2050 5000 50  0001 C CNN
F 3 "~" H 2050 5000 50  0001 C CNN
F 4 "QT" H -850 900 50  0001 C CNN "Manufacturer"
F 5 "QBLP631-R" H -850 900 50  0001 C CNN "Part no"
F 6 "OPL" H -850 900 50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    2050 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5CA553C0
P 2050 5200
F 0 "#PWR0105" H 2050 4950 50  0001 C CNN
F 1 "GND" H 2055 5027 50  0000 C CNN
F 2 "" H 2050 5200 50  0001 C CNN
F 3 "" H 2050 5200 50  0001 C CNN
	1    2050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4500 2500 4400
Wire Wire Line
	2050 4500 2050 4400
Text Label 2500 4400 0    50   ~ 0
RX_LED
Text Label 2050 4400 0    50   ~ 0
TX_LED
$Comp
L Switch:SW_Push SW1
U 1 1 5CA5874E
P 3050 5000
F 0 "SW1" V 3004 5148 50  0000 L CNN
F 1 "SW_Push" V 3095 5148 50  0000 L CNN
F 2 "_div:_PTS525SK15-SMT-Pushbutton" H 3050 5200 50  0001 C CNN
F 3 "" H 3050 5200 50  0001 C CNN
F 4 "-" H -300 900 50  0001 C CNN "Manufacturer"
F 5 "-" H -300 900 50  0001 C CNN "Part no"
F 6 "-" H 0   0   50  0001 C CNN "Link"
F 7 "-" H 0   0   50  0001 C CNN "Source"
	1    3050 5000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5CA6AB65
P 3050 5200
F 0 "#PWR0106" H 3050 4950 50  0001 C CNN
F 1 "GND" H 3055 5027 50  0000 C CNN
F 2 "" H 3050 5200 50  0001 C CNN
F 3 "" H 3050 5200 50  0001 C CNN
	1    3050 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5CA6ABEF
P 3050 4650
F 0 "R5" H 2980 4604 50  0000 R CNN
F 1 "10k" H 2980 4695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2980 4650 50  0001 C CNN
F 3 "~" H 3050 4650 50  0001 C CNN
F 4 "Yageo" H -300 900 50  0001 C CNN "Manufacturer"
F 5 "RC0805JR-0710KL" H -300 900 50  0001 C CNN "Part no"
F 6 "OPL" H -300 900 50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    3050 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 4850 1650 4800
Wire Wire Line
	1650 5200 1650 5150
Wire Wire Line
	2500 5200 2500 5150
Wire Wire Line
	2500 4850 2500 4800
Wire Wire Line
	2050 5200 2050 5150
Wire Wire Line
	2050 4850 2050 4800
Text Label 3400 4800 2    50   ~ 0
BTN
Text Label 6500 3150 2    50   ~ 0
BTN
Wire Wire Line
	6200 1950 6500 1950
Wire Wire Line
	6200 1850 6500 1850
Wire Wire Line
	6200 3150 6500 3150
Text Label 6500 1850 2    50   ~ 0
TX_LED
Text Label 6500 1950 2    50   ~ 0
RX_LED
Wire Wire Line
	4750 1850 4400 1850
Connection ~ 4750 1850
Text Label 4400 1850 0    50   ~ 0
RESET
$Comp
L Connector:AVR-ISP-6 J2
U 1 1 5CA822DA
P 8750 4450
F 0 "J2" H 8470 4546 50  0000 R CNN
F 1 "AVR-ISP-6" H 8470 4455 50  0000 R CNN
F 2 "_connectors:PogoPins-2x03-ICSP" V 8500 4500 50  0001 C CNN
F 3 " ~" H 7475 3900 50  0001 C CNN
F 4 "-" H -750 -250 50  0001 C CNN "Manufacturer"
F 5 "-" H -750 -250 50  0001 C CNN "Part no"
F 6 "-" H 0   0   50  0001 C CNN "Link"
F 7 "-" H 0   0   50  0001 C CNN "Source"
	1    8750 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5CA82384
P 8650 3950
F 0 "#PWR0107" H 8650 3800 50  0001 C CNN
F 1 "+5V" H 8665 4123 50  0000 C CNN
F 2 "" H 8650 3950 50  0001 C CNN
F 3 "" H 8650 3950 50  0001 C CNN
	1    8650 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CA82493
P 8650 4850
F 0 "#PWR0108" H 8650 4600 50  0001 C CNN
F 1 "GND" H 8655 4677 50  0000 C CNN
F 2 "" H 8650 4850 50  0001 C CNN
F 3 "" H 8650 4850 50  0001 C CNN
	1    8650 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4250 9500 4250
Wire Wire Line
	9150 4350 9500 4350
Wire Wire Line
	9150 4450 9500 4450
Wire Wire Line
	9150 4550 9500 4550
Text Label 9500 4550 2    50   ~ 0
RESET
Text Label 9500 4450 2    50   ~ 0
SCL
Text Label 9500 4350 2    50   ~ 0
DI
Text Label 9500 4250 2    50   ~ 0
DO
$Comp
L power:+5V #PWR0109
U 1 1 5CAA61A6
P 3050 4500
F 0 "#PWR0109" H 3050 4350 50  0001 C CNN
F 1 "+5V" H 3065 4673 50  0000 C CNN
F 2 "" H 3050 4500 50  0001 C CNN
F 3 "" H 3050 4500 50  0001 C CNN
	1    3050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4800 3400 4800
Connection ~ 3050 4800
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5CBF53B7
P 4450 2400
F 0 "Y1" H 4550 2700 50  0000 L CNN
F 1 "8M" H 4550 2600 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 4450 2400 50  0001 C CNN
F 3 "~" H 4450 2400 50  0001 C CNN
F 4 "KDS" H -150 -200 50  0001 C CNN "Manufacturer"
F 5 "1C208000BC0R" H -150 -200 50  0001 C CNN "Part no"
F 6 "OPL" H -150 -200 50  0001 C CNN "Source"
F 7 "https://www.seeedstudio.com/opl.html" H 0   0   50  0001 C CNN "Link"
	1    4450 2400
	1    0    0    -1  
$EndComp
NoConn ~ 4450 2200
NoConn ~ 4450 2600
Wire Wire Line
	8550 3050 8150 3050
$Comp
L Connector:TestPoint TP1
U 1 1 5CC6829A
P 6550 2950
F 0 "TP1" V 6550 3150 50  0000 L CNN
F 1 "TestPoint" V 6550 3350 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 6750 2950 50  0001 C CNN
F 3 "~" H 6750 2950 50  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Link"
F 5 "-" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "-" H 0   0   50  0001 C CNN "Part no"
F 7 "-" H 0   0   50  0001 C CNN "Source"
	1    6550 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5CC68458
P 6550 3050
F 0 "TP2" V 6550 3250 50  0000 L CNN
F 1 "TestPoint" V 6550 3450 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 6750 3050 50  0001 C CNN
F 3 "~" H 6750 3050 50  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Link"
F 5 "-" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "-" H 0   0   50  0001 C CNN "Part no"
F 7 "-" H 0   0   50  0001 C CNN "Source"
	1    6550 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 3050 6200 3050
Wire Wire Line
	6200 2950 6550 2950
$Comp
L Connector:TestPoint TP3
U 1 1 5CC6B5BD
P 6550 3250
F 0 "TP3" V 6550 3450 50  0000 L CNN
F 1 "TestPoint" V 6550 3650 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 6750 3250 50  0001 C CNN
F 3 "~" H 6750 3250 50  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Link"
F 5 "-" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "-" H 0   0   50  0001 C CNN "Part no"
F 7 "-" H 0   0   50  0001 C CNN "Source"
	1    6550 3250
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5CC6B5C4
P 6550 3350
F 0 "TP4" V 6550 3550 50  0000 L CNN
F 1 "TestPoint" V 6550 3750 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 6750 3350 50  0001 C CNN
F 3 "~" H 6750 3350 50  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Link"
F 5 "-" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "-" H 0   0   50  0001 C CNN "Part no"
F 7 "-" H 0   0   50  0001 C CNN "Source"
	1    6550 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 3350 6200 3350
Wire Wire Line
	6200 3250 6550 3250
$Comp
L Connector:TestPoint TP5
U 1 1 5CC764D3
P 1300 2250
F 0 "TP5" H 1200 2450 50  0000 L CNN
F 1 "+5V" H 1200 2550 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 1500 2250 50  0001 C CNN
F 3 "~" H 1500 2250 50  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Link"
F 5 "-" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "-" H 0   0   50  0001 C CNN "Part no"
F 7 "-" H 0   0   50  0001 C CNN "Source"
	1    1300 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5CC764DA
P 1350 2400
F 0 "TP6" V 1350 2600 50  0000 L CNN
F 1 "D-" V 1350 2800 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 1550 2400 50  0001 C CNN
F 3 "~" H 1550 2400 50  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Link"
F 5 "-" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "-" H 0   0   50  0001 C CNN "Part no"
F 7 "-" H 0   0   50  0001 C CNN "Source"
	1    1350 2400
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 5CC764E1
P 1350 2600
F 0 "TP7" V 1350 2800 50  0000 L CNN
F 1 "D+" V 1350 3000 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 1550 2600 50  0001 C CNN
F 3 "~" H 1550 2600 50  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Link"
F 5 "-" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "-" H 0   0   50  0001 C CNN "Part no"
F 7 "-" H 0   0   50  0001 C CNN "Source"
	1    1350 2600
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5CC764E8
P 1350 2800
F 0 "TP8" V 1350 3000 50  0000 L CNN
F 1 "GND" V 1350 3200 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.0mm_Drill0.5mm" H 1550 2800 50  0001 C CNN
F 3 "~" H 1550 2800 50  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Link"
F 5 "-" H 0   0   50  0001 C CNN "Manufacturer"
F 6 "-" H 0   0   50  0001 C CNN "Part no"
F 7 "-" H 0   0   50  0001 C CNN "Source"
	1    1350 2800
	0    1    1    0   
$EndComp
Connection ~ 1300 2250
Wire Wire Line
	1300 2250 1450 2250
Wire Wire Line
	1350 2400 1300 2400
Wire Wire Line
	1300 2400 1300 2450
Connection ~ 1300 2450
Wire Wire Line
	1300 2450 2200 2450
Wire Wire Line
	1350 2600 1300 2600
Wire Wire Line
	1300 2600 1300 2550
Connection ~ 1300 2550
Wire Wire Line
	1300 2550 2200 2550
Wire Wire Line
	1350 2800 1300 2800
Wire Wire Line
	1300 2800 1300 2850
$Comp
L power:GND #PWR0110
U 1 1 5CC88BFC
P 1300 2850
F 0 "#PWR0110" H 1300 2600 50  0001 C CNN
F 1 "GND" H 1305 2677 50  0000 C CNN
F 2 "" H 1300 2850 50  0001 C CNN
F 3 "" H 1300 2850 50  0001 C CNN
	1    1300 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CCA6832
P 2850 1200
F 0 "#PWR?" H 2850 950 50  0001 C CNN
F 1 "GND" H 2855 1027 50  0000 C CNN
F 2 "" H 2850 1200 50  0001 C CNN
F 3 "" H 2850 1200 50  0001 C CNN
	1    2850 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5CCA687D
P 2550 1050
F 0 "#PWR?" H 2550 900 50  0001 C CNN
F 1 "+5V" H 2565 1223 50  0000 C CNN
F 2 "" H 2550 1050 50  0001 C CNN
F 3 "" H 2550 1050 50  0001 C CNN
	1    2550 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5CCA68C8
P 3150 1050
F 0 "#PWR?" H 3150 900 50  0001 C CNN
F 1 "+3.3V" H 3165 1223 50  0000 C CNN
F 2 "" H 3150 1050 50  0001 C CNN
F 3 "" H 3150 1050 50  0001 C CNN
	1    3150 1050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5CCA69C8
P 2850 1150
F 0 "#FLG?" H 2850 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 2850 1324 50  0000 C CNN
F 2 "" H 2850 1150 50  0001 C CNN
F 3 "~" H 2850 1150 50  0001 C CNN
	1    2850 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1150 2850 1200
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5CCA8E25
P 2550 1050
F 0 "#FLG?" H 2550 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 2550 1223 50  0000 C CNN
F 2 "" H 2550 1050 50  0001 C CNN
F 3 "~" H 2550 1050 50  0001 C CNN
	1    2550 1050
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5CCA8EB0
P 3150 1050
F 0 "#FLG?" H 3150 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 3150 1223 50  0000 C CNN
F 2 "" H 3150 1050 50  0001 C CNN
F 3 "~" H 3150 1050 50  0001 C CNN
	1    3150 1050
	-1   0    0    1   
$EndComp
$EndSCHEMATC
