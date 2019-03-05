EESchema Schematic File Version 4
LIBS:cz19-badge-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "CampZone 2019 Event Badge"
Date "2019-02-19"
Rev ""
Comp "HackZone"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1050 900  1650 800 
U 5C6C6B0C
F0 "LEDs" 50
F1 "LEDs.sch" 50
F2 "LEDS_IN" I L 1050 1100 50 
F3 "LEDS_OUT" I L 1050 1400 50 
F4 "VCC" I R 2700 1100 50 
F5 "LGND" I R 2700 1400 50 
$EndSheet
Text GLabel 2750 1100 2    50   UnSpc ~ 0
VCC
Text GLabel 4050 2000 2    50   UnSpc ~ 0
GND
$Comp
L RF_Module:ESP32-WROOM-32D U3
U 1 1 5C6EF884
P 1850 5850
F 0 "U3" H 1150 4600 50  0000 C CNN
F 1 "ESP32-WROOM-32D" V 1950 5850 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 1850 4350 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 1550 5900 50  0001 C CNN
	1    1850 5850
	1    0    0    -1  
$EndComp
Text GLabel 1850 4100 1    50   UnSpc ~ 0
3V3
Text GLabel 1850 7400 3    50   UnSpc ~ 0
GND
Wire Wire Line
	1850 7400 1850 7250
$Comp
L Device:R R4
U 1 1 5C6EFE2A
P 1100 4350
F 0 "R4" V 893 4350 50  0000 C CNN
F 1 "10k" V 984 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1030 4350 50  0001 C CNN
F 3 "~" H 1100 4350 50  0001 C CNN
	1    1100 4350
	-1   0    0    1   
$EndComp
Text GLabel 2950 4650 2    50   Input ~ 0
ESP_FLASH
$Comp
L Device:R R5
U 1 1 5C6F02EE
P 2600 4350
F 0 "R5" V 2393 4350 50  0000 C CNN
F 1 "10k" V 2484 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2530 4350 50  0001 C CNN
F 3 "~" H 2600 4350 50  0001 C CNN
	1    2600 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4500 2600 4650
Connection ~ 2600 4650
Wire Wire Line
	2600 4650 2450 4650
Wire Wire Line
	1850 4100 1850 4350
Text GLabel 1100 4100 1    50   UnSpc ~ 0
3V3
Text GLabel 2600 4100 1    50   UnSpc ~ 0
3V3
Text GLabel 900  4650 3    50   Input ~ 0
ESP_EN
Wire Wire Line
	1100 4500 1100 4650
Connection ~ 1100 4650
Wire Wire Line
	1100 4650 1250 4650
$Comp
L Device:R R6
U 1 1 5C6F13F0
P 2750 4850
F 0 "R6" V 2700 4700 50  0000 C CNN
F 1 "10k" V 2750 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2680 4850 50  0001 C CNN
F 3 "~" H 2750 4850 50  0001 C CNN
	1    2750 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 4850 2450 4850
Text GLabel 2950 4850 2    50   UnSpc ~ 0
GND
Wire Wire Line
	2950 4850 2900 4850
NoConn ~ 2450 5250
NoConn ~ 2450 5550
Text GLabel 2950 4750 2    50   Output ~ 0
ESP_TX
Text GLabel 2950 4950 2    50   Input ~ 0
ESP_RX
Wire Wire Line
	2950 4750 2450 4750
Wire Wire Line
	2450 4950 2950 4950
Text Notes 2500 5300 0    50   ~ 0
Sets VDD_SDIO to 1.8V when driven HIGH
Text Notes 2500 5600 0    50   ~ 0
Hides bootloader output when driven LOW
NoConn ~ 2450 5150
Text Notes 2500 5200 0    50   ~ 0
Changes SDIO timing when driven LOW
Text Notes 3150 4900 0    50   ~ 0
Enables serial bootloader when ESP_FLASH is driven LOW
Text GLabel 2950 5850 2    50   Output ~ 0
LEDS_ENABLE
Text GLabel 2950 5950 2    50   Output ~ 0
LEDS_IN
Wire Wire Line
	4050 2000 4000 2000
Text GLabel 900  1100 0    50   Input ~ 0
LEDS_IN
Wire Wire Line
	900  1100 1050 1100
Text GLabel 900  1400 0    50   Output ~ 0
LEDS_OUT
Wire Wire Line
	900  1400 1050 1400
$Comp
L Interface_USB:CH340G U1
U 1 1 5C797759
P 8750 1700
F 0 "U1" H 8750 922 50  0000 C CNN
F 1 "CH340C" H 8750 1013 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8800 1150 50  0001 L CNN
F 3 "https://www.mpja.com/download/35227cpdata.pdf" H 8400 2500 50  0001 C CNN
	1    8750 1700
	-1   0    0    1   
$EndComp
NoConn ~ 9150 1300
NoConn ~ 9150 1500
Text GLabel 7800 2000 0    50   Input ~ 0
ESP_TX
Text GLabel 7800 2100 0    50   Output ~ 0
ESP_RX
Wire Wire Line
	8350 2000 8000 2000
Wire Wire Line
	7800 2100 8150 2100
Text GLabel 6850 1800 0    50   Output ~ 0
ESP_EN
Text GLabel 6850 900  0    50   Output ~ 0
ESP_FLASH
NoConn ~ 8350 1800
NoConn ~ 8350 1700
NoConn ~ 8350 1600
NoConn ~ 8350 1500
NoConn ~ 9150 2000
Wire Wire Line
	8850 2300 8750 2300
Text GLabel 8750 2450 3    50   UnSpc ~ 0
3V3
Wire Wire Line
	8750 2450 8750 2300
Connection ~ 8750 2300
$Comp
L Connector:USB_B_Micro J1
U 1 1 5C79B386
P 10500 1700
F 0 "J1" H 10271 1598 50  0000 R CNN
F 1 "USB_B_Micro" H 10271 1689 50  0000 R CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 10650 1650 50  0001 C CNN
F 3 "~" H 10650 1650 50  0001 C CNN
	1    10500 1700
	-1   0    0    1   
$EndComp
NoConn ~ 10200 1500
Text GLabel 10150 1900 0    50   UnSpc ~ 0
5V_USB
Wire Wire Line
	10150 1900 10200 1900
Wire Wire Line
	10600 1300 10500 1300
Text GLabel 10500 1200 1    50   UnSpc ~ 0
GND
Wire Wire Line
	10500 1200 10500 1300
Connection ~ 10500 1300
Wire Wire Line
	6850 900  6900 900 
Wire Wire Line
	6850 1800 6900 1800
$Comp
L Device:R R1
U 1 1 5C72BD16
P 7850 1100
F 0 "R1" V 7750 1100 50  0000 C CNN
F 1 "10k" V 7850 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 1100 50  0001 C CNN
F 3 "~" H 7850 1100 50  0001 C CNN
	1    7850 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5C72BEF3
P 7850 1600
F 0 "R3" V 7750 1600 50  0000 C CNN
F 1 "10k" V 7850 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 1600 50  0001 C CNN
F 3 "~" H 7850 1600 50  0001 C CNN
	1    7850 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 1600 7600 1600
Wire Wire Line
	7600 1100 7700 1100
Wire Wire Line
	8000 1300 8000 1100
Wire Wire Line
	8000 1300 7750 1300
Wire Wire Line
	7750 1300 7750 1350
Wire Wire Line
	7750 1350 7650 1350
Wire Wire Line
	7650 1350 7650 1400
Connection ~ 8000 1300
Wire Wire Line
	7700 1300 7700 1400
Wire Wire Line
	7700 1400 8000 1400
Wire Wire Line
	8000 1400 8000 1600
Connection ~ 8000 1400
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 5C7325F3
P 7050 1300
F 0 "JP5" H 7050 1505 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6800 1400 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7050 1300 50  0001 C CNN
F 3 "~" H 7050 1300 50  0001 C CNN
	1    7050 1300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP6
U 1 1 5C73410B
P 7050 1400
F 0 "JP6" H 7050 1200 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6800 1300 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7050 1400 50  0001 C CNN
F 3 "~" H 7050 1400 50  0001 C CNN
	1    7050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1400 8350 1400
Wire Wire Line
	8000 1300 8350 1300
Wire Wire Line
	6900 1300 6900 900 
Connection ~ 6900 900 
Wire Wire Line
	6900 900  7300 900 
Wire Wire Line
	6900 1400 6900 1800
Connection ~ 6900 1800
Wire Wire Line
	6900 1800 7300 1800
Text Notes 5500 1400 0    50   ~ 0
Jumpers are for prototype so\nwe won’t have to use the fets
$Comp
L Regulator_Linear:AMS1117 U2
U 1 1 5C73D096
P 7900 4650
F 0 "U2" H 7900 4892 50  0000 C CNN
F 1 "AMS1117" H 7900 4801 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 7900 4850 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 8000 4400 50  0001 C CNN
	1    7900 4650
	1    0    0    -1  
$EndComp
Text GLabel 7500 4650 0    50   UnSpc ~ 0
VCC
Wire Wire Line
	7500 4650 7600 4650
Text GLabel 8300 4650 2    50   UnSpc ~ 0
3V3
Wire Wire Line
	8300 4650 8200 4650
Text GLabel 7900 5050 3    50   UnSpc ~ 0
GND
Wire Wire Line
	7900 5050 7900 4950
Wire Wire Line
	2600 4100 2600 4200
$Comp
L Device:C C193
U 1 1 5C7936CA
P 900 4350
F 0 "C193" H 1015 4396 50  0000 L CNN
F 1 "100nF" H 1015 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 938 4200 50  0001 C CNN
F 3 "~" H 900 4350 50  0001 C CNN
	1    900  4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	900  4500 900  4650
Text GLabel 900  4100 1    50   UnSpc ~ 0
GND
Wire Wire Line
	900  4100 900  4200
$Comp
L Device:C C194
U 1 1 5C795C91
P 1700 4350
F 0 "C194" V 1448 4350 50  0000 C CNN
F 1 "100nF" V 1539 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1738 4200 50  0001 C CNN
F 3 "~" H 1700 4350 50  0001 C CNN
	1    1700 4350
	0    1    1    0   
$EndComp
Connection ~ 1850 4350
Wire Wire Line
	1850 4350 1850 4450
Text GLabel 1550 4100 1    50   UnSpc ~ 0
GND
Wire Wire Line
	1550 4100 1550 4350
$Comp
L Transistor_FET:DMN2050L Q2
U 1 1 5C79C987
P 7400 1100
F 0 "Q2" H 7250 1200 50  0000 L CNN
F 1 "AO3400 (A09T)" H 7200 1350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7600 1025 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 7400 1100 50  0001 L CNN
	1    7400 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 1300 7300 1300
Connection ~ 7300 1300
Wire Wire Line
	7300 1300 7700 1300
Wire Wire Line
	7200 1400 7300 1400
$Comp
L Transistor_FET:DMN2050L Q4
U 1 1 5C79E677
P 7400 1600
F 0 "Q4" H 7250 1700 50  0000 L CNN
F 1 "AO3400 (A09T)" H 7200 1850 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7600 1525 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 7400 1600 50  0001 L CNN
	1    7400 1600
	-1   0    0    1   
$EndComp
Connection ~ 7300 1400
Wire Wire Line
	7300 1400 7650 1400
$Comp
L Transistor_FET:DMN2050L Q5
U 1 1 5C7A070A
P 3800 2100
F 0 "Q5" V 3950 1900 50  0000 L CNN
F 1 "AO3400 (A09T)" V 4050 1700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 2025 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 3800 2100 50  0001 L CNN
	1    3800 2100
	0    -1   -1   0   
$EndComp
Text GLabel 4050 1400 2    50   UnSpc ~ 0
GND
Wire Wire Line
	4050 1400 4000 1400
Text GLabel 4850 1400 3    50   Input ~ 0
LEDS_ENABLE
$Comp
L Transistor_FET:DMN2050L Q3
U 1 1 5C7A59C7
P 3800 1500
F 0 "Q3" V 3950 1300 50  0000 L CNN
F 1 "AO3400 (A09T)" V 4050 1100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 1425 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 3800 1500 50  0001 L CNN
	1    3800 1500
	0    -1   -1   0   
$EndComp
Text GLabel 4050 800  2    50   UnSpc ~ 0
GND
Wire Wire Line
	4050 800  4000 800 
$Comp
L Transistor_FET:DMN2050L Q1
U 1 1 5C7A6AC3
P 3800 900
F 0 "Q1" V 3950 700 50  0000 L CNN
F 1 "AO3400 (A09T)" V 4050 500 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 825 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 3800 900 50  0001 L CNN
	1    3800 900 
	0    -1   -1   0   
$EndComp
Connection ~ 3600 1400
Wire Wire Line
	3600 1400 3600 2000
Wire Wire Line
	3600 800  3600 1400
Wire Wire Line
	4450 1700 3800 1700
Wire Wire Line
	4450 1100 3800 1100
Wire Wire Line
	4450 1700 4450 2300
Wire Wire Line
	4450 2300 3800 2300
Connection ~ 4450 1700
$Comp
L power:+BATT #PWR01
U 1 1 5C7B5CB3
P 9400 4600
F 0 "#PWR01" H 9400 4450 50  0001 C CNN
F 1 "+BATT" H 9415 4773 50  0000 C CNN
F 2 "" H 9400 4600 50  0001 C CNN
F 3 "" H 9400 4600 50  0001 C CNN
	1    9400 4600
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR02
U 1 1 5C7B5E7B
P 10800 4600
F 0 "#PWR02" H 10800 4450 50  0001 C CNN
F 1 "-BATT" H 10815 4773 50  0000 C CNN
F 2 "" H 10800 4600 50  0001 C CNN
F 3 "" H 10800 4600 50  0001 C CNN
	1    10800 4600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:DMN2050L Q9
U 1 1 5C7B6A21
P 10150 6100
F 0 "Q9" V 10300 5900 50  0000 L CNN
F 1 "AO3400 (A09T)" V 10400 5700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10350 6025 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 10150 6100 50  0001 L CNN
	1    10150 6100
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:DMN2050L Q7
U 1 1 5C7B6A2B
P 10150 5600
F 0 "Q7" V 10300 5400 50  0000 L CNN
F 1 "AO3400 (A09T)" V 10400 5200 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10350 5525 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 10150 5600 50  0001 L CNN
	1    10150 5600
	0    -1   -1   0   
$EndComp
Text GLabel 9850 5000 0    50   UnSpc ~ 0
GND
$Comp
L Transistor_FET:DMN2050L Q6
U 1 1 5C7B6A34
P 10150 5100
F 0 "Q6" V 10300 4900 50  0000 L CNN
F 1 "AO3400 (A09T)" V 10400 4700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10350 5025 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 10150 5100 50  0001 L CNN
	1    10150 5100
	0    -1   -1   0   
$EndComp
Text GLabel 9850 5500 0    50   UnSpc ~ 0
GND
Text GLabel 9850 6000 0    50   UnSpc ~ 0
GND
Wire Wire Line
	10350 5000 10600 5000
Wire Wire Line
	10600 5000 10600 5500
Wire Wire Line
	10600 5500 10800 5500
Wire Wire Line
	10600 5500 10350 5500
Connection ~ 10600 5500
Wire Wire Line
	10350 6000 10600 6000
Wire Wire Line
	10600 6000 10600 5500
Wire Wire Line
	9950 5000 9850 5000
Wire Wire Line
	9950 5500 9850 5500
Wire Wire Line
	9950 6000 9850 6000
Wire Wire Line
	9400 6300 10150 6300
Wire Wire Line
	10150 5300 9600 5300
Wire Wire Line
	9600 5300 9600 5500
Wire Wire Line
	9600 5500 9400 5500
Wire Wire Line
	9400 5500 9400 5800
Wire Wire Line
	10150 5800 9400 5800
Connection ~ 9400 5800
Wire Wire Line
	9400 5800 9400 6300
Text GLabel 9300 4650 0    50   UnSpc ~ 0
VCC
$Comp
L Device:R R7
U 1 1 5C7E3C14
P 9400 5150
F 0 "R7" V 9300 5150 50  0000 C CNN
F 1 "10k" V 9400 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9330 5150 50  0001 C CNN
F 3 "~" H 9400 5150 50  0001 C CNN
	1    9400 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 4650 9400 4650
Wire Wire Line
	9400 4650 9400 4600
Connection ~ 9400 4650
Wire Wire Line
	10800 4600 10800 5500
Wire Wire Line
	9400 5300 9400 5500
Connection ~ 9400 5500
Wire Wire Line
	9400 4650 9400 5000
NoConn ~ 1250 5850
NoConn ~ 1250 5950
NoConn ~ 1250 6050
NoConn ~ 1250 6150
NoConn ~ 1250 6250
NoConn ~ 1250 6350
$Comp
L Device:R R8
U 1 1 5C76D27F
P 2750 5850
F 0 "R8" V 2700 5700 50  0000 C CNN
F 1 "10k" V 2750 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2680 5850 50  0001 C CNN
F 3 "~" H 2750 5850 50  0001 C CNN
	1    2750 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5C76D3B2
P 2750 5950
F 0 "R9" V 2700 5800 50  0000 C CNN
F 1 "10k" V 2750 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2680 5950 50  0001 C CNN
F 3 "~" H 2750 5950 50  0001 C CNN
	1    2750 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 5950 2950 5950
Wire Wire Line
	2950 5850 2900 5850
Wire Wire Line
	2600 5850 2450 5850
Wire Wire Line
	2450 5950 2600 5950
Wire Notes Line
	5000 450  5000 2750
Wire Notes Line
	7000 6550 7000 2750
Wire Notes Line
	11200 4150 7000 4150
Wire Notes Line
	450  2750 11200 2750
Text Notes 650  2550 0    98   ~ 0
LED matrix
Text Notes 6250 2550 0    98   ~ 0
USB + UART
Text Notes 7100 4400 0    98   ~ 0
3V power
Text Notes 9400 6500 0    98   ~ 0
Battery reverse polarity
Text Notes 650  3100 0    98   ~ 0
Microcontroller
Wire Wire Line
	1100 4100 1100 4200
Wire Wire Line
	900  4650 1100 4650
Wire Wire Line
	2600 4650 2950 4650
$Comp
L Device:Battery BT1
U 1 1 5C76EEF3
P 10100 4600
F 0 "BT1" V 10345 4600 50  0000 C CNN
F 1 "Battery" V 10254 4600 50  0000 C CNN
F 2 "LiPoHolder:BatteryHolder_Keystone_1042_1x18650" V 10100 4660 50  0001 C CNN
F 3 "~" V 10100 4660 50  0001 C CNN
	1    10100 4600
	0    -1   -1   0   
$EndComp
$Comp
L power:+BATT #PWR0101
U 1 1 5C76F2E7
P 9800 4600
F 0 "#PWR0101" H 9800 4450 50  0001 C CNN
F 1 "+BATT" H 9815 4773 50  0000 C CNN
F 2 "" H 9800 4600 50  0001 C CNN
F 3 "" H 9800 4600 50  0001 C CNN
	1    9800 4600
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR0102
U 1 1 5C76F61E
P 10400 4600
F 0 "#PWR0102" H 10400 4450 50  0001 C CNN
F 1 "-BATT" H 10415 4773 50  0000 C CNN
F 2 "" H 10400 4600 50  0001 C CNN
F 3 "" H 10400 4600 50  0001 C CNN
	1    10400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 4600 10300 4600
Wire Wire Line
	9900 4600 9800 4600
Text GLabel 10200 1600 0    50   BiDi ~ 0
USB_DN
Text GLabel 10200 1700 0    50   BiDi ~ 0
USB_DP
Text GLabel 9150 1700 2    50   BiDi ~ 0
USB_DN
Text GLabel 9150 1800 2    50   BiDi ~ 0
USB_DP
Text GLabel 2750 1400 2    50   UnSpc ~ 0
LED_GND
Text GLabel 3550 1400 0    50   UnSpc ~ 0
LED_GND
Wire Wire Line
	3550 1400 3600 1400
Wire Wire Line
	4450 1100 4450 1400
Wire Wire Line
	4450 1400 4650 1400
Connection ~ 4450 1400
Wire Wire Line
	4450 1400 4450 1700
Wire Wire Line
	2750 1400 2700 1400
Wire Wire Line
	2750 1100 2700 1100
Text Notes 2300 3200 0    50   ~ 0
TODO:\n- Add audio
$Comp
L Device:R R2
U 1 1 5C797B8C
P 4650 1250
F 0 "R2" V 4600 1100 50  0000 C CNN
F 1 "10k" V 4650 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 1250 50  0001 C CNN
F 3 "~" H 4650 1250 50  0001 C CNN
	1    4650 1250
	-1   0    0    1   
$EndComp
Connection ~ 4650 1400
Wire Wire Line
	4650 1400 4850 1400
Text GLabel 4650 1050 1    50   UnSpc ~ 0
GND
Wire Wire Line
	4650 1050 4650 1100
$Comp
L tp4056:TP4056 U4
U 1 1 5C7AE179
P 9850 3450
F 0 "U4" H 9850 3987 60  0000 C CNN
F 1 "TP4056" H 9850 3881 60  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.35x2.35mm" H 9850 3450 60  0001 C CNN
F 3 "" H 9850 3450 60  0000 C CNN
	1    9850 3450
	1    0    0    -1  
$EndComp
Text GLabel 10450 3500 2    50   UnSpc ~ 0
GND
Wire Wire Line
	10450 3500 10350 3500
$Comp
L Device:R R15
U 1 1 5C7BCAAC
P 10350 3750
F 0 "R15" V 10250 3750 50  0000 C CNN
F 1 "1k" V 10350 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10280 3750 50  0001 C CNN
F 3 "~" H 10350 3750 50  0001 C CNN
	1    10350 3750
	1    0    0    -1  
$EndComp
Text GLabel 10450 3900 2    50   UnSpc ~ 0
GND
Wire Wire Line
	10450 3900 10350 3900
$Comp
L power:+BATT #PWR0103
U 1 1 5C7C0444
P 10450 3150
F 0 "#PWR0103" H 10450 3000 50  0001 C CNN
F 1 "+BATT" H 10465 3323 50  0000 C CNN
F 2 "" H 10450 3150 50  0001 C CNN
F 3 "" H 10450 3150 50  0001 C CNN
	1    10450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3200 10350 3200
Text GLabel 9300 2950 2    50   UnSpc ~ 0
5V_USB
Wire Wire Line
	9250 3200 9350 3200
$Comp
L Device:LED D195
U 1 1 5C7C6E07
P 8800 3800
F 0 "D195" H 8750 3700 50  0000 C CNN
F 1 "RED" H 8900 3700 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8800 3800 50  0001 C CNN
F 3 "~" H 8800 3800 50  0001 C CNN
	1    8800 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D196
U 1 1 5C7C714C
P 8800 3900
F 0 "D196" H 8750 4000 50  0000 C CNN
F 1 "GREEN" H 8950 4000 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8800 3900 50  0001 C CNN
F 3 "~" H 8800 3900 50  0001 C CNN
	1    8800 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 3600 9350 3600
Wire Wire Line
	10450 3150 10450 3200
$Comp
L Device:R R14
U 1 1 5C7DA34D
P 9250 3750
F 0 "R14" V 9150 3750 50  0000 C CNN
F 1 "1k" V 9250 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9180 3750 50  0001 C CNN
F 3 "~" H 9250 3750 50  0001 C CNN
	1    9250 3750
	-1   0    0    -1  
$EndComp
Text Notes 10400 3800 0    50   ~ 0
Actually needs 1.2k
$Comp
L Device:R R13
U 1 1 5C7EAB03
P 9150 3650
F 0 "R13" V 9050 3650 50  0000 C CNN
F 1 "1k" V 9150 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9080 3650 50  0001 C CNN
F 3 "~" H 9150 3650 50  0001 C CNN
	1    9150 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3500 9350 3500
Wire Wire Line
	8950 3800 9150 3800
Wire Wire Line
	9250 3900 8950 3900
Text GLabel 8500 3800 0    50   UnSpc ~ 0
5V_USB
Wire Wire Line
	8550 3800 8550 3900
Wire Wire Line
	8550 3900 8650 3900
Wire Wire Line
	8550 3800 8650 3800
Wire Wire Line
	8500 3800 8550 3800
Connection ~ 8550 3800
$Comp
L Device:R R12
U 1 1 5C806A57
P 9000 3150
F 0 "R12" V 8900 3150 50  0000 C CNN
F 1 "10k" V 9000 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8930 3150 50  0001 C CNN
F 3 "~" H 9000 3150 50  0001 C CNN
	1    9000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3300 9000 3300
Wire Wire Line
	9000 3000 9000 2950
Wire Wire Line
	9250 2950 9300 2950
Wire Wire Line
	9250 2950 9250 3200
Text GLabel 8300 3150 0    50   UnSpc ~ 0
GND
$Comp
L Transistor_FET:DMN2050L Q8
U 1 1 5C81B1EE
P 8550 3250
F 0 "Q8" V 8700 3050 50  0000 L CNN
F 1 "AO3400 (A09T)" V 8800 2950 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8750 3175 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/ao3400.pdf" H 8550 3250 50  0001 L CNN
	1    8550 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 3150 8300 3150
Wire Wire Line
	9000 2950 9250 2950
Connection ~ 9250 2950
Wire Wire Line
	8750 3150 8750 3300
Wire Wire Line
	8750 3300 9000 3300
Connection ~ 9000 3300
Text GLabel 2950 6050 2    50   Output ~ 0
CHARGE_ENABLE
$Comp
L Device:R R18
U 1 1 5C853925
P 2750 6050
F 0 "R18" V 2700 5900 50  0000 C CNN
F 1 "10k" V 2750 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2680 6050 50  0001 C CNN
F 3 "~" H 2750 6050 50  0001 C CNN
	1    2750 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 6050 2900 6050
Wire Wire Line
	2600 6050 2450 6050
Text GLabel 8450 3450 0    50   Output ~ 0
CHARGE_ENABLE
Wire Wire Line
	8450 3450 8550 3450
Text Notes 7100 3000 0    98   ~ 0
LiPo charging
Wire Notes Line
	8800 4150 8800 6550
Text GLabel 2950 6850 2    50   Input ~ 0
VUSB_SENSE
Text GLabel 2950 6950 2    50   Input ~ 0
VBAT_SENSE
Wire Wire Line
	2450 6850 2950 6850
Wire Wire Line
	2950 6950 2450 6950
Text GLabel 5400 7100 0    50   Output ~ 0
VUSB_SENSE
Text GLabel 5650 6700 1    50   UnSpc ~ 0
5V_USB
$Comp
L Device:R R23
U 1 1 5C8A411C
P 5650 6900
F 0 "R23" V 5550 6900 50  0000 C CNN
F 1 "10k" V 5650 6900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5580 6900 50  0001 C CNN
F 3 "~" H 5650 6900 50  0001 C CNN
	1    5650 6900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R25
U 1 1 5C8A8EA2
P 5650 7300
F 0 "R25" V 5550 7300 50  0000 C CNN
F 1 "10k" V 5650 7300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5580 7300 50  0001 C CNN
F 3 "~" H 5650 7300 50  0001 C CNN
	1    5650 7300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 7050 5650 7100
Wire Wire Line
	5400 7100 5500 7100
Connection ~ 5650 7100
Wire Wire Line
	5650 7100 5650 7150
Text GLabel 5650 7500 3    50   UnSpc ~ 0
GND
Text GLabel 5500 7500 3    50   UnSpc ~ 0
GND
Wire Wire Line
	5650 7500 5650 7450
$Comp
L Device:C C195
U 1 1 5C8C2E73
P 5500 7300
F 0 "C195" V 5248 7300 50  0000 C CNN
F 1 "100nF" V 5339 7300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5538 7150 50  0001 C CNN
F 3 "~" H 5500 7300 50  0001 C CNN
	1    5500 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 7150 5500 7100
Connection ~ 5500 7100
Wire Wire Line
	5500 7100 5650 7100
Wire Wire Line
	5500 7450 5500 7500
Text GLabel 6350 7100 2    50   Output ~ 0
VBAT_SENSE
$Comp
L Device:R R24
U 1 1 5C8CE6E8
P 6100 6900
F 0 "R24" V 6000 6900 50  0000 C CNN
F 1 "10k" V 6100 6900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6030 6900 50  0001 C CNN
F 3 "~" H 6100 6900 50  0001 C CNN
	1    6100 6900
	1    0    0    1   
$EndComp
$Comp
L Device:R R26
U 1 1 5C8CE6F0
P 6100 7300
F 0 "R26" V 6000 7300 50  0000 C CNN
F 1 "10k" V 6100 7300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6030 7300 50  0001 C CNN
F 3 "~" H 6100 7300 50  0001 C CNN
	1    6100 7300
	1    0    0    1   
$EndComp
Wire Wire Line
	6100 7050 6100 7100
Wire Wire Line
	6350 7100 6250 7100
Connection ~ 6100 7100
Wire Wire Line
	6100 7100 6100 7150
Text GLabel 6100 7500 3    50   UnSpc ~ 0
GND
Text GLabel 6250 7500 3    50   UnSpc ~ 0
GND
Wire Wire Line
	6100 7500 6100 7450
$Comp
L Device:C C196
U 1 1 5C8CE6FE
P 6250 7300
F 0 "C196" V 5998 7300 50  0000 C CNN
F 1 "100nF" V 6089 7300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6288 7150 50  0001 C CNN
F 3 "~" H 6250 7300 50  0001 C CNN
	1    6250 7300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6250 7150 6250 7100
Connection ~ 6250 7100
Wire Wire Line
	6250 7100 6100 7100
Wire Wire Line
	6250 7450 6250 7500
$Comp
L power:+BATT #PWR0104
U 1 1 5C8E046C
P 6100 6700
F 0 "#PWR0104" H 6100 6550 50  0001 C CNN
F 1 "+BATT" H 6115 6873 50  0000 C CNN
F 2 "" H 6100 6700 50  0001 C CNN
F 3 "" H 6100 6700 50  0001 C CNN
	1    6100 6700
	1    0    0    -1  
$EndComp
Text Notes 4750 6150 0    98   ~ 0
Voltage sensing\n(5V > 2.5V divider)
Wire Notes Line
	7000 5850 4600 5850
Wire Notes Line
	4600 5850 4600 7800
$Comp
L Device:R R10
U 1 1 5C92B8D7
P 8000 2300
F 0 "R10" V 7900 2300 50  0000 C CNN
F 1 "1k" V 8000 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7930 2300 50  0001 C CNN
F 3 "~" H 8000 2300 50  0001 C CNN
	1    8000 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5C92BB93
P 8150 2300
F 0 "R11" V 8050 2300 50  0000 C CNN
F 1 "1k" V 8150 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8080 2300 50  0001 C CNN
F 3 "~" H 8150 2300 50  0001 C CNN
	1    8150 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 2150 8000 2000
Connection ~ 8000 2000
Wire Wire Line
	8000 2000 7800 2000
Wire Wire Line
	8150 2150 8150 2100
Connection ~ 8150 2100
Wire Wire Line
	8150 2100 8350 2100
$Comp
L Device:LED D193
U 1 1 5C93762E
P 7750 2450
F 0 "D193" H 7700 2350 50  0000 C CNN
F 1 "YELLOW" H 7900 2350 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 7750 2450 50  0001 C CNN
F 3 "~" H 7750 2450 50  0001 C CNN
	1    7750 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7900 2450 8000 2450
$Comp
L Device:LED D194
U 1 1 5C93E19A
P 7750 2650
F 0 "D194" H 7700 2550 50  0000 C CNN
F 1 "RED" H 7850 2550 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 7750 2650 50  0001 C CNN
F 3 "~" H 7750 2650 50  0001 C CNN
	1    7750 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7900 2650 8150 2650
Wire Wire Line
	8150 2650 8150 2450
Text GLabel 7500 2450 0    50   UnSpc ~ 0
VCC
Text GLabel 7500 2650 0    50   UnSpc ~ 0
VCC
Wire Wire Line
	7500 2650 7600 2650
Wire Wire Line
	7600 2450 7500 2450
Wire Wire Line
	6100 6750 6100 6700
Wire Wire Line
	5650 6750 5650 6700
Text GLabel 2950 5650 2    50   Input ~ 0
BTN_UP
Text GLabel 2950 5750 2    50   Input ~ 0
BTN_DOWN
$Comp
L Device:R R16
U 1 1 5C988ABD
P 3800 5650
F 0 "R16" V 3750 5500 50  0000 C CNN
F 1 "10k" V 3800 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3730 5650 50  0001 C CNN
F 3 "~" H 3800 5650 50  0001 C CNN
	1    3800 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5C988CCC
P 3800 5750
F 0 "R17" V 3750 5600 50  0000 C CNN
F 1 "10k" V 3800 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3730 5750 50  0001 C CNN
F 3 "~" H 3800 5750 50  0001 C CNN
	1    3800 5750
	0    1    1    0   
$EndComp
Text GLabel 4000 5650 2    50   UnSpc ~ 0
3V3
Wire Wire Line
	4000 5650 3950 5650
Text GLabel 4000 5750 2    50   UnSpc ~ 0
3V3
Wire Wire Line
	4000 5750 3950 5750
Text GLabel 2950 6150 2    50   Input ~ 0
BTN_LEFT
Text GLabel 2950 6250 2    50   Input ~ 0
BTN_RIGHT
Wire Wire Line
	2450 5650 3650 5650
Wire Wire Line
	2450 5750 3650 5750
$Comp
L Device:R R19
U 1 1 5CA37661
P 3800 6150
F 0 "R19" V 3750 6000 50  0000 C CNN
F 1 "10k" V 3800 6150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3730 6150 50  0001 C CNN
F 3 "~" H 3800 6150 50  0001 C CNN
	1    3800 6150
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5CA37668
P 3800 6250
F 0 "R20" V 3750 6100 50  0000 C CNN
F 1 "10k" V 3800 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3730 6250 50  0001 C CNN
F 3 "~" H 3800 6250 50  0001 C CNN
	1    3800 6250
	0    1    1    0   
$EndComp
Text GLabel 4000 6150 2    50   UnSpc ~ 0
3V3
Wire Wire Line
	4000 6150 3950 6150
Text GLabel 4000 6250 2    50   UnSpc ~ 0
3V3
Wire Wire Line
	4000 6250 3950 6250
Wire Wire Line
	2450 6150 3650 6150
Wire Wire Line
	2450 6250 3650 6250
Text GLabel 2950 5350 2    50   Input ~ 0
BTN_A
Text GLabel 2950 5450 2    50   Input ~ 0
BTN_B
$Comp
L Device:R R21
U 1 1 5CA4E807
P 3800 5350
F 0 "R21" V 3750 5200 50  0000 C CNN
F 1 "10k" V 3800 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3730 5350 50  0001 C CNN
F 3 "~" H 3800 5350 50  0001 C CNN
	1    3800 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 5CA4E80E
P 3800 5450
F 0 "R22" V 3750 5300 50  0000 C CNN
F 1 "10k" V 3800 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3730 5450 50  0001 C CNN
F 3 "~" H 3800 5450 50  0001 C CNN
	1    3800 5450
	0    1    1    0   
$EndComp
Text GLabel 4000 5350 2    50   UnSpc ~ 0
3V3
Wire Wire Line
	4000 5350 3950 5350
Text GLabel 4000 5450 2    50   UnSpc ~ 0
3V3
Wire Wire Line
	4000 5450 3950 5450
Wire Wire Line
	2450 5350 3650 5350
Wire Wire Line
	2450 5450 3650 5450
Text GLabel 2950 6350 2    50   Input ~ 0
DAC1
Text GLabel 2950 6450 2    50   Input ~ 0
DAC2
Wire Wire Line
	2950 6350 2450 6350
Wire Wire Line
	2450 6450 2950 6450
$Comp
L Switch:SW_Push SW1
U 1 1 5CA7C9B9
P 6400 3150
F 0 "SW1" H 6400 3435 50  0000 C CNN
F 1 "SW_Push" H 6400 3344 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1100" H 6400 3350 50  0001 C CNN
F 3 "~" H 6400 3350 50  0001 C CNN
	1    6400 3150
	1    0    0    -1  
$EndComp
Text GLabel 6700 3150 2    50   UnSpc ~ 0
GND
Wire Wire Line
	6700 3150 6600 3150
Text GLabel 6100 3150 0    50   Output ~ 0
BTN_UP
Wire Wire Line
	6100 3150 6200 3150
$Comp
L Switch:SW_Push SW2
U 1 1 5CA8F125
P 6400 3500
F 0 "SW2" H 6400 3785 50  0000 C CNN
F 1 "SW_Push" H 6400 3694 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1100" H 6400 3700 50  0001 C CNN
F 3 "~" H 6400 3700 50  0001 C CNN
	1    6400 3500
	1    0    0    -1  
$EndComp
Text GLabel 6700 3500 2    50   UnSpc ~ 0
GND
Wire Wire Line
	6700 3500 6600 3500
Text GLabel 6100 3500 0    50   Output ~ 0
BTN_DOWN
Wire Wire Line
	6100 3500 6200 3500
$Comp
L Switch:SW_Push SW3
U 1 1 5CA9797A
P 6400 3850
F 0 "SW3" H 6400 4135 50  0000 C CNN
F 1 "SW_Push" H 6400 4044 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1100" H 6400 4050 50  0001 C CNN
F 3 "~" H 6400 4050 50  0001 C CNN
	1    6400 3850
	1    0    0    -1  
$EndComp
Text GLabel 6700 3850 2    50   UnSpc ~ 0
GND
Wire Wire Line
	6700 3850 6600 3850
Text GLabel 6100 3850 0    50   Output ~ 0
BTN_LEFT
Wire Wire Line
	6100 3850 6200 3850
$Comp
L Switch:SW_Push SW4
U 1 1 5CAA05A8
P 6400 4200
F 0 "SW4" H 6400 4485 50  0000 C CNN
F 1 "SW_Push" H 6400 4394 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1100" H 6400 4400 50  0001 C CNN
F 3 "~" H 6400 4400 50  0001 C CNN
	1    6400 4200
	1    0    0    -1  
$EndComp
Text GLabel 6700 4200 2    50   UnSpc ~ 0
GND
Wire Wire Line
	6700 4200 6600 4200
Text GLabel 6100 4200 0    50   Output ~ 0
BTN_RIGHT
Wire Wire Line
	6100 4200 6200 4200
$Comp
L Switch:SW_Push SW5
U 1 1 5CAA96A0
P 6400 4550
F 0 "SW5" H 6400 4835 50  0000 C CNN
F 1 "SW_Push" H 6400 4744 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1100" H 6400 4750 50  0001 C CNN
F 3 "~" H 6400 4750 50  0001 C CNN
	1    6400 4550
	1    0    0    -1  
$EndComp
Text GLabel 6700 4550 2    50   UnSpc ~ 0
GND
Wire Wire Line
	6700 4550 6600 4550
Text GLabel 6100 4550 0    50   Output ~ 0
BTN_A
Wire Wire Line
	6100 4550 6200 4550
$Comp
L Switch:SW_Push SW6
U 1 1 5CAB2B55
P 6400 4900
F 0 "SW6" H 6400 5185 50  0000 C CNN
F 1 "SW_Push" H 6400 5094 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1100" H 6400 5100 50  0001 C CNN
F 3 "~" H 6400 5100 50  0001 C CNN
	1    6400 4900
	1    0    0    -1  
$EndComp
Text GLabel 6700 4900 2    50   UnSpc ~ 0
GND
Wire Wire Line
	6700 4900 6600 4900
Text GLabel 6100 4900 0    50   Output ~ 0
BTN_B
Wire Wire Line
	6100 4900 6200 4900
Text GLabel 9850 3900 3    50   UnSpc ~ 0
GND
Wire Wire Line
	9850 3900 9850 3850
Wire Wire Line
	9850 3850 9900 3850
Connection ~ 9850 3850
Text GLabel 2950 5050 2    50   Input ~ 0
TOUCH1
Wire Wire Line
	2950 5050 2450 5050
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5CB55011
P 4950 3150
F 0 "J2" H 5030 3192 50  0000 L CNN
F 1 "Conn_01x01" H 5030 3101 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4950 3150 50  0001 C CNN
F 3 "~" H 4950 3150 50  0001 C CNN
	1    4950 3150
	1    0    0    -1  
$EndComp
Text GLabel 4750 3150 0    50   Output ~ 0
TOUCH1
Text GLabel 9150 1050 2    50   UnSpc ~ 0
GND
Wire Wire Line
	8750 1050 8750 1100
Wire Wire Line
	9150 1050 8750 1050
NoConn ~ 2450 6550
NoConn ~ 2450 6650
NoConn ~ 2450 6750
NoConn ~ 1250 4850
NoConn ~ 1250 4950
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 5C7E3260
P 8000 5850
F 0 "J3" H 8080 5892 50  0000 L CNN
F 1 "Hook1" H 8080 5801 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5019_Minature" H 8000 5850 50  0001 C CNN
F 3 "~" H 8000 5850 50  0001 C CNN
	1    8000 5850
	1    0    0    -1  
$EndComp
Text GLabel 7750 5850 0    50   UnSpc ~ 0
GND
Wire Wire Line
	7750 5850 7800 5850
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 5C80329F
P 8000 6050
F 0 "J4" H 8080 6092 50  0000 L CNN
F 1 "Hook2" H 8080 6001 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5019_Minature" H 8000 6050 50  0001 C CNN
F 3 "~" H 8000 6050 50  0001 C CNN
	1    8000 6050
	1    0    0    -1  
$EndComp
Text GLabel 7750 6050 0    50   UnSpc ~ 0
GND
Wire Wire Line
	7750 6050 7800 6050
Text Notes 7100 5650 0    98   ~ 0
Lanyard hooks
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5C82368A
P 8000 6250
F 0 "J5" H 8080 6292 50  0000 L CNN
F 1 "Hook3" H 8080 6201 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5019_Minature" H 8000 6250 50  0001 C CNN
F 3 "~" H 8000 6250 50  0001 C CNN
	1    8000 6250
	1    0    0    -1  
$EndComp
Text GLabel 7750 6250 0    50   UnSpc ~ 0
GND
Wire Wire Line
	7750 6250 7800 6250
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 5C82DC9B
P 8000 6450
F 0 "J6" H 8080 6492 50  0000 L CNN
F 1 "Hook4" H 8080 6401 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5019_Minature" H 8000 6450 50  0001 C CNN
F 3 "~" H 8000 6450 50  0001 C CNN
	1    8000 6450
	1    0    0    -1  
$EndComp
Text GLabel 7750 6450 0    50   UnSpc ~ 0
GND
Wire Wire Line
	7750 6450 7800 6450
$EndSCHEMATC
