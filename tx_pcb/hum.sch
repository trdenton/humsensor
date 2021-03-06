EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:hum
LIBS:switches
LIBS:hum-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "HUMTX"
Date "2017-12-23"
Rev "1"
Comp "TROY DENTON"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 6650 4300 0    60   ~ 0
MISO
Text Label 6650 4500 0    60   ~ 0
MOSI
Text Label 6650 4600 0    60   ~ 0
SCK
Text Label 6650 4700 0    60   ~ 0
CSN
Text Label 6650 4800 0    60   ~ 0
CE
$Comp
L Battery_Cell BT1
U 1 1 5A1A84DE
P 3450 4850
F 0 "BT1" H 3550 4950 50  0000 L CNN
F 1 "Battery_Cell" H 3550 4850 50  0000 L CNN
F 2 "hum:battery" V 3450 4910 50  0001 C CNN
F 3 "" V 3450 4910 50  0000 C CNN
	1    3450 4850
	1    0    0    -1  
$EndComp
Text Label 6650 5000 0    60   ~ 0
SDA
Text Label 6650 5200 0    60   ~ 0
SCL
Wire Wire Line
	6650 5000 6450 5000
Wire Wire Line
	6650 5200 6450 5200
Wire Wire Line
	6650 4300 6450 4300
Wire Wire Line
	6650 4500 6450 4500
Wire Wire Line
	6650 4600 6450 4600
Wire Wire Line
	6650 4700 6450 4700
Wire Wire Line
	6650 4800 6450 4800
$Comp
L LED D1
U 1 1 5A1A9556
P 8900 5950
F 0 "D1" H 8900 6050 50  0000 C CNN
F 1 "LED" H 8900 5850 50  0000 C CNN
F 2 "LEDs:LED_1206" H 8900 5950 50  0001 C CNN
F 3 "" H 8900 5950 50  0000 C CNN
	1    8900 5950
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 5A1A95A7
P 8550 5950
F 0 "R4" V 8630 5950 50  0000 C CNN
F 1 "470" V 8550 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 8480 5950 50  0001 C CNN
F 3 "" H 8550 5950 50  0000 C CNN
	1    8550 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 5950 8700 5950
$Comp
L GND #PWR01
U 1 1 5A1A965B
P 9050 6100
F 0 "#PWR01" H 9050 5850 50  0001 C CNN
F 1 "GND" H 9050 5950 50  0000 C CNN
F 2 "" H 9050 6100 50  0000 C CNN
F 3 "" H 9050 6100 50  0000 C CNN
	1    9050 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 6100 9050 5950
$Comp
L HTU21D U1
U 1 1 5A1A98D0
P 9800 5100
F 0 "U1" H 9900 4900 60  0000 C CNN
F 1 "HTU21D" H 9850 5200 60  0000 C CNN
F 2 "hum:HTU21D" H 9800 5100 60  0001 C CNN
F 3 "" H 9800 5100 60  0000 C CNN
	1    9800 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A1A98F9
P 9750 5550
F 0 "#PWR02" H 9750 5300 50  0001 C CNN
F 1 "GND" H 9750 5400 50  0000 C CNN
F 2 "" H 9750 5550 50  0000 C CNN
F 3 "" H 9750 5550 50  0000 C CNN
	1    9750 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A1A9919
P 10000 5550
F 0 "#PWR03" H 10000 5300 50  0001 C CNN
F 1 "GND" H 10000 5400 50  0000 C CNN
F 2 "" H 10000 5550 50  0000 C CNN
F 3 "" H 10000 5550 50  0000 C CNN
	1    10000 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5550 9750 5450
Wire Wire Line
	10000 5550 10000 5450
$Comp
L VCC #PWR04
U 1 1 5A1A9B0C
P 10000 4450
F 0 "#PWR04" H 10000 4300 50  0001 C CNN
F 1 "VCC" H 10000 4600 50  0000 C CNN
F 2 "" H 10000 4450 50  0000 C CNN
F 3 "" H 10000 4450 50  0000 C CNN
	1    10000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4450 10000 4550
Text Label 9000 5050 0    60   ~ 0
SCL
Wire Wire Line
	9000 5050 9250 5050
Text Label 9000 4950 0    60   ~ 0
SDA
Wire Wire Line
	9000 4950 9250 4950
$Comp
L SW_Push SW1
U 1 1 5A1AA074
P 7900 5950
F 0 "SW1" H 7950 6050 50  0000 L CNN
F 1 "SW_Push" H 7900 5850 50  0000 C CNN
F 2 "hum:switch" H 7900 6150 50  0001 C CNN
F 3 "" H 7900 6150 50  0000 C CNN
	1    7900 5950
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5A1AA193
P 7900 5500
F 0 "R2" V 7980 5500 50  0000 C CNN
F 1 "10k" V 7900 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 7830 5500 50  0001 C CNN
F 3 "" H 7900 5500 50  0000 C CNN
	1    7900 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A1AA1C0
P 7900 6250
F 0 "#PWR05" H 7900 6000 50  0001 C CNN
F 1 "GND" H 7900 6100 50  0000 C CNN
F 2 "" H 7900 6250 50  0000 C CNN
F 3 "" H 7900 6250 50  0000 C CNN
	1    7900 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5650 7900 5750
Wire Wire Line
	7900 6150 7900 6250
$Comp
L VCC #PWR06
U 1 1 5A1AA2A7
P 7900 5150
F 0 "#PWR06" H 7900 5000 50  0001 C CNN
F 1 "VCC" H 7900 5300 50  0000 C CNN
F 2 "" H 7900 5150 50  0000 C CNN
F 3 "" H 7900 5150 50  0000 C CNN
	1    7900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5150 7900 5350
Text Label 6700 5600 0    60   ~ 0
INPUT
Text Label 7450 5750 2    60   ~ 0
INPUT
Wire Wire Line
	7900 5750 7450 5750
$Comp
L R R3
U 1 1 5A1AAE7C
P 8400 5300
F 0 "R3" V 8480 5300 50  0000 C CNN
F 1 "10k" V 8400 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 8330 5300 50  0001 C CNN
F 3 "" H 8400 5300 50  0000 C CNN
	1    8400 5300
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A1AAEB5
P 8600 5300
F 0 "R5" V 8680 5300 50  0000 C CNN
F 1 "10k" V 8600 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 8530 5300 50  0001 C CNN
F 3 "" H 8600 5300 50  0000 C CNN
	1    8600 5300
	1    0    0    -1  
$EndComp
Text Label 8600 5550 0    60   ~ 0
SCL
Text Label 8400 5650 0    60   ~ 0
SDA
Wire Wire Line
	8400 5650 8400 5450
Wire Wire Line
	8600 5450 8600 5550
$Comp
L VCC #PWR07
U 1 1 5A1AAF9D
P 8600 5100
F 0 "#PWR07" H 8600 4950 50  0001 C CNN
F 1 "VCC" H 8600 5250 50  0000 C CNN
F 2 "" H 8600 5100 50  0000 C CNN
F 3 "" H 8600 5100 50  0000 C CNN
	1    8600 5100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 5A1AAFC3
P 8400 5100
F 0 "#PWR08" H 8400 4950 50  0001 C CNN
F 1 "VCC" H 8400 5250 50  0000 C CNN
F 2 "" H 8400 5100 50  0000 C CNN
F 3 "" H 8400 5100 50  0000 C CNN
	1    8400 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5100 8400 5150
Wire Wire Line
	8600 5100 8600 5150
Text Label 8400 5850 2    60   ~ 0
OUTPUT
Wire Wire Line
	8400 5850 8400 5950
Text Label 6650 5300 0    60   ~ 0
OUTPUT
Wire Wire Line
	6650 5300 6450 5300
$Comp
L GND #PWR09
U 1 1 5A1ACE6F
P 3450 5050
F 0 "#PWR09" H 3450 4800 50  0001 C CNN
F 1 "GND" H 3450 4900 50  0000 C CNN
F 2 "" H 3450 5050 50  0000 C CNN
F 3 "" H 3450 5050 50  0000 C CNN
	1    3450 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A1ACEEF
P 3950 5700
F 0 "#PWR010" H 3950 5450 50  0001 C CNN
F 1 "GND" H 3950 5550 50  0000 C CNN
F 2 "" H 3950 5700 50  0000 C CNN
F 3 "" H 3950 5700 50  0000 C CNN
	1    3950 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5700 4150 5700
Wire Wire Line
	3450 5050 3450 4950
$Comp
L VCC #PWR011
U 1 1 5A1ACF62
P 3450 4500
F 0 "#PWR011" H 3450 4350 50  0001 C CNN
F 1 "VCC" H 3450 4650 50  0000 C CNN
F 2 "" H 3450 4500 50  0000 C CNN
F 3 "" H 3450 4500 50  0000 C CNN
	1    3450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4500 3450 4650
$Comp
L VCC #PWR012
U 1 1 5A1ACFB1
P 4050 4000
F 0 "#PWR012" H 4050 3850 50  0001 C CNN
F 1 "VCC" H 4050 4150 50  0000 C CNN
F 2 "" H 4050 4000 50  0000 C CNN
F 3 "" H 4050 4000 50  0000 C CNN
	1    4050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4000 4050 4100
Wire Wire Line
	4050 4100 4150 4100
Wire Wire Line
	4150 4100 4150 4400
Wire Wire Line
	4150 5700 4150 5400
$Comp
L R R1
U 1 1 5A1AD6EF
P 7600 4400
F 0 "R1" V 7680 4400 50  0000 C CNN
F 1 "10k" V 7600 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 7530 4400 50  0001 C CNN
F 3 "" H 7600 4400 50  0000 C CNN
	1    7600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5600 6450 5600
Text Label 7600 4650 0    60   ~ 0
RESET
Wire Wire Line
	7600 4650 7600 4550
Text Label 6600 5700 0    60   ~ 0
RESET
Wire Wire Line
	6600 5700 6450 5700
$Comp
L VCC #PWR013
U 1 1 5A1AD7FF
P 7600 4100
F 0 "#PWR013" H 7600 3950 50  0001 C CNN
F 1 "VCC" H 7600 4250 50  0000 C CNN
F 2 "" H 7600 4100 50  0000 C CNN
F 3 "" H 7600 4100 50  0000 C CNN
	1    7600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4100 7600 4250
$Comp
L CONN_02X04 P1
U 1 1 5A1ADD45
P 8950 3400
F 0 "P1" H 8950 3650 50  0000 C CNN
F 1 "RF24" H 8950 3150 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x04" H 8950 2200 50  0001 C CNN
F 3 "" H 8950 2200 50  0000 C CNN
	1    8950 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5A1ADD76
P 8350 3250
F 0 "#PWR014" H 8350 3000 50  0001 C CNN
F 1 "GND" H 8350 3100 50  0000 C CNN
F 2 "" H 8350 3250 50  0000 C CNN
F 3 "" H 8350 3250 50  0000 C CNN
	1    8350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3250 8700 3250
$Comp
L VCC #PWR015
U 1 1 5A1ADDD0
P 9250 3150
F 0 "#PWR015" H 9250 3000 50  0001 C CNN
F 1 "VCC" H 9250 3300 50  0000 C CNN
F 2 "" H 9250 3150 50  0000 C CNN
F 3 "" H 9250 3150 50  0000 C CNN
	1    9250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3150 9250 3250
Wire Wire Line
	9250 3250 9200 3250
Text Label 8550 3350 2    60   ~ 0
CE
Wire Wire Line
	8550 3350 8700 3350
Text Label 9400 3350 0    60   ~ 0
CSN
Wire Wire Line
	9400 3350 9200 3350
Text Label 8600 3450 2    60   ~ 0
SCK
Wire Wire Line
	8600 3450 8700 3450
Text Label 9350 3450 0    60   ~ 0
MOSI
Wire Wire Line
	9350 3450 9200 3450
Text Label 8650 3550 2    60   ~ 0
MISO
Wire Wire Line
	8650 3550 8700 3550
Text Label 9400 3550 0    60   ~ 0
IRQ
Wire Wire Line
	9400 3550 9200 3550
Text Label 6600 5500 0    60   ~ 0
IRQ
Wire Wire Line
	6600 5500 6450 5500
$Comp
L AVR-ISP-6 CON1
U 1 1 5A1AEC1C
P 8750 4150
F 0 "CON1" H 8645 4390 50  0000 C CNN
F 1 "AVR-ISP-6" H 8485 3920 50  0000 L BNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" V 8230 4190 50  0001 C CNN
F 3 "" H 8725 4150 50  0000 C CNN
	1    8750 4150
	1    0    0    -1  
$EndComp
Text Label 8200 4250 2    60   ~ 0
RESET
Wire Wire Line
	8200 4250 8600 4250
$Comp
L GND #PWR016
U 1 1 5A1AECC7
P 9200 4350
F 0 "#PWR016" H 9200 4100 50  0001 C CNN
F 1 "GND" H 9200 4200 50  0000 C CNN
F 2 "" H 9200 4350 50  0000 C CNN
F 3 "" H 9200 4350 50  0000 C CNN
	1    9200 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4350 8850 4350
Wire Wire Line
	8850 4350 8850 4250
Text Label 9300 4150 0    60   ~ 0
MOSI
Wire Wire Line
	9300 4150 8850 4150
$Comp
L VCC #PWR017
U 1 1 5A1AED86
P 9250 3900
F 0 "#PWR017" H 9250 3750 50  0001 C CNN
F 1 "VCC" H 9250 4050 50  0000 C CNN
F 2 "" H 9250 3900 50  0000 C CNN
F 3 "" H 9250 3900 50  0000 C CNN
	1    9250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3900 8850 3900
Wire Wire Line
	8850 3900 8850 4050
Text Label 8250 3850 2    60   ~ 0
MISO
Wire Wire Line
	8250 3850 8250 4050
Wire Wire Line
	8250 4050 8600 4050
Text Label 8150 4150 2    60   ~ 0
SCK
Wire Wire Line
	8150 4150 8600 4150
NoConn ~ 6450 4200
NoConn ~ 6450 4400
NoConn ~ 6450 5100
NoConn ~ 6450 5400
$Comp
L PWR_FLAG #FLG018
U 1 1 5A1B1E87
P 3700 4500
F 0 "#FLG018" H 3700 4595 50  0001 C CNN
F 1 "PWR_FLAG" H 3700 4680 50  0000 C CNN
F 2 "" H 3700 4500 50  0000 C CNN
F 3 "" H 3700 4500 50  0000 C CNN
	1    3700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4500 3450 4500
$Comp
L PWR_FLAG #FLG019
U 1 1 5A1B237E
P 3050 4950
F 0 "#FLG019" H 3050 5045 50  0001 C CNN
F 1 "PWR_FLAG" H 3050 5130 50  0000 C CNN
F 2 "" H 3050 4950 50  0000 C CNN
F 3 "" H 3050 4950 50  0000 C CNN
	1    3050 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4950 3050 5050
Wire Wire Line
	3050 5050 3450 5050
$Comp
L ATTINY87-AS IC1
U 1 1 5A1B2A95
P 5300 4900
F 0 "IC1" H 4350 5850 50  0000 C CNN
F 1 "ATTINY87-AS" H 6100 3950 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 5300 4900 50  0000 C CIN
F 3 "" H 5300 4900 50  0000 C CNN
	1    5300 4900
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A1B300A
P 5350 6350
F 0 "C1" H 5375 6450 50  0000 L CNN
F 1 "C" H 5375 6250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5388 6200 50  0001 C CNN
F 3 "" H 5350 6350 50  0000 C CNN
	1    5350 6350
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A1B31F1
P 5550 6350
F 0 "C2" H 5575 6450 50  0000 L CNN
F 1 "C" H 5575 6250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5588 6200 50  0001 C CNN
F 3 "" H 5550 6350 50  0000 C CNN
	1    5550 6350
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5A1B3226
P 5750 6350
F 0 "C3" H 5775 6450 50  0000 L CNN
F 1 "C" H 5775 6250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5788 6200 50  0001 C CNN
F 3 "" H 5750 6350 50  0000 C CNN
	1    5750 6350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR020
U 1 1 5A1B4A3F
P 5100 6200
F 0 "#PWR020" H 5100 6050 50  0001 C CNN
F 1 "VCC" H 5100 6350 50  0000 C CNN
F 2 "" H 5100 6200 50  0000 C CNN
F 3 "" H 5100 6200 50  0000 C CNN
	1    5100 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6200 5750 6200
Connection ~ 5350 6200
Connection ~ 5550 6200
Wire Wire Line
	5350 6500 5750 6500
Connection ~ 5550 6500
$Comp
L GND #PWR021
U 1 1 5A1B4BF0
P 5500 6700
F 0 "#PWR021" H 5500 6450 50  0001 C CNN
F 1 "GND" H 5500 6550 50  0000 C CNN
F 2 "" H 5500 6700 50  0000 C CNN
F 3 "" H 5500 6700 50  0000 C CNN
	1    5500 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6700 5500 6500
Connection ~ 5500 6500
$Comp
L CONN_01X03 P2
U 1 1 5A1B96C7
P 7100 3100
F 0 "P2" H 7100 3300 50  0000 C CNN
F 1 "CONN_01X03" V 7200 3100 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 7100 3100 50  0001 C CNN
F 3 "" H 7100 3100 50  0000 C CNN
	1    7100 3100
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR022
U 1 1 5A1B9768
P 6750 3300
F 0 "#PWR022" H 6750 3150 50  0001 C CNN
F 1 "VCC" H 6750 3450 50  0000 C CNN
F 2 "" H 6750 3300 50  0000 C CNN
F 3 "" H 6750 3300 50  0000 C CNN
	1    6750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3300 7000 3300
$Comp
L GND #PWR023
U 1 1 5A1B97EE
P 7200 3400
F 0 "#PWR023" H 7200 3150 50  0001 C CNN
F 1 "GND" H 7200 3250 50  0000 C CNN
F 2 "" H 7200 3400 50  0000 C CNN
F 3 "" H 7200 3400 50  0000 C CNN
	1    7200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3300 7200 3400
Wire Wire Line
	6450 4100 7100 4100
Wire Wire Line
	7100 4100 7100 3300
$EndSCHEMATC
