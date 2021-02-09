EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Wifi Assisted Serial Port"
Date "2021-01-17"
Rev "v1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J3
U 1 1 6004A1F7
P 6900 5650
F 0 "J3" H 6950 5967 50  0000 C CNN
F 1 "ESP-01 Connector" H 6950 5876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 6900 5650 50  0001 C CNN
F 3 "~" H 6900 5650 50  0001 C CNN
	1    6900 5650
	1    0    0    -1  
$EndComp
Text GLabel 1150 4400 0    50   Input ~ 0
NRST
Text GLabel 2450 6800 2    50   Input ~ 0
SWDIO
Text GLabel 2450 6900 2    50   Input ~ 0
SWCLK
$Comp
L power:GND #PWR06
U 1 1 60051723
P 1750 7500
F 0 "#PWR06" H 1750 7250 50  0001 C CNN
F 1 "GND" H 1755 7327 50  0000 C CNN
F 2 "" H 1750 7500 50  0001 C CNN
F 3 "" H 1750 7500 50  0001 C CNN
	1    1750 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 7200 1650 7400
Wire Wire Line
	1650 7400 1750 7400
Wire Wire Line
	1750 7200 1750 7400
Connection ~ 1750 7400
Wire Wire Line
	1750 7400 1850 7400
Wire Wire Line
	1850 7400 1850 7200
Wire Wire Line
	1850 7400 1950 7400
Wire Wire Line
	1950 7400 1950 7200
Connection ~ 1850 7400
Wire Wire Line
	1750 7500 1750 7400
$Comp
L power:+3.3VA #PWR09
U 1 1 60057437
P 2050 4125
F 0 "#PWR09" H 2050 3975 50  0001 C CNN
F 1 "+3.3VA" H 2065 4298 50  0000 C CNN
F 2 "" H 2050 4125 50  0001 C CNN
F 3 "" H 2050 4125 50  0001 C CNN
	1    2050 4125
	1    0    0    -1  
$EndComp
Text GLabel 1150 4600 0    50   Input ~ 0
BOOT0
$Comp
L Device:R_Small R1
U 1 1 6005CBF2
P 4000 4675
F 0 "R1" V 3900 4675 50  0000 C CNN
F 1 "10k" V 4075 4675 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4000 4675 50  0001 C CNN
F 3 "~" H 4000 4675 50  0001 C CNN
	1    4000 4675
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 6005376A
P 1850 4050
F 0 "#PWR07" H 1850 3900 50  0001 C CNN
F 1 "+3.3V" H 1865 4223 50  0000 C CNN
F 2 "" H 1850 4050 50  0001 C CNN
F 3 "" H 1850 4050 50  0001 C CNN
	1    1850 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 6005F3F0
P 4300 4375
F 0 "#PWR019" H 4300 4225 50  0001 C CNN
F 1 "+3.3V" H 4315 4548 50  0000 C CNN
F 2 "" H 4300 4375 50  0001 C CNN
F 3 "" H 4300 4375 50  0001 C CNN
	1    4300 4375
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 6005F88D
P 4300 5000
F 0 "#PWR020" H 4300 4750 50  0001 C CNN
F 1 "GND" H 4305 4827 50  0000 C CNN
F 2 "" H 4300 5000 50  0001 C CNN
F 3 "" H 4300 5000 50  0001 C CNN
	1    4300 5000
	1    0    0    -1  
$EndComp
Text GLabel 3800 4675 0    50   Input ~ 0
BOOT0
Wire Wire Line
	3800 4675 3900 4675
Wire Wire Line
	4100 4675 4200 4675
Text GLabel 1150 5300 0    50   Input ~ 0
HSE_OUT
Text GLabel 2450 6700 2    50   Input ~ 0
USB_D+
Text GLabel 2450 6600 2    50   Input ~ 0
USB_D-
Text GLabel 1150 6500 0    50   Input ~ 0
USART3_TX
Text GLabel 1150 6600 0    50   Input ~ 0
USART3_RX
Text GLabel 2450 5800 2    50   Input ~ 0
USART2_RX
Text GLabel 6700 5750 0    50   Input ~ 0
TXD
Text GLabel 7200 5550 2    50   Input ~ 0
GPIO2
Text GLabel 6700 5650 0    50   Input ~ 0
GPIO0
Text GLabel 7200 5650 2    50   Input ~ 0
RXD
Text GLabel 7200 5750 2    50   Input ~ 0
CH_PD
Text GLabel 6700 5850 0    50   Input ~ 0
RESET
Text GLabel 6700 5550 0    50   Input ~ 0
GND
Text GLabel 7200 5850 2    50   Input ~ 0
VCC_3V3
Text GLabel 1150 6100 0    50   Input ~ 0
I2C1_SCl
Text GLabel 1150 6200 0    50   Input ~ 0
I2C1_SDA
Text GLabel 1150 6800 0    50   Input ~ 0
USART3_CTS
Text GLabel 1150 6900 0    50   Input ~ 0
USART3_RTS
Text GLabel 5500 4750 0    50   Input ~ 0
TXD
Text GLabel 5650 4750 2    50   Input ~ 0
USART2_RX
Text GLabel 5500 4900 0    50   Input ~ 0
RXD
Text GLabel 5650 4900 2    50   Input ~ 0
USART2_TX
Wire Wire Line
	5500 4750 5650 4750
Wire Wire Line
	5500 4900 5650 4900
Text GLabel 5500 5050 0    50   Input ~ 0
GND
Text GLabel 5500 5200 0    50   Input ~ 0
VCC_3V3
Text GLabel 5500 5350 0    50   Input ~ 0
RESET
Text GLabel 5500 5650 0    50   Input ~ 0
GPIO0
Text GLabel 5500 5500 0    50   Input ~ 0
CH_PD
Text GLabel 5500 5800 0    50   Input ~ 0
GPIO2
$Comp
L power:GND #PWR026
U 1 1 60074B8B
P 6000 5050
F 0 "#PWR026" H 6000 4800 50  0001 C CNN
F 1 "GND" H 6005 4877 50  0000 C CNN
F 2 "" H 6000 5050 50  0001 C CNN
F 3 "" H 6000 5050 50  0001 C CNN
	1    6000 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 5050 6000 5050
Wire Wire Line
	5500 5200 5600 5200
$Comp
L power:+3.3V #PWR024
U 1 1 6007D42D
P 5600 5200
F 0 "#PWR024" H 5600 5050 50  0001 C CNN
F 1 "+3.3V" V 5615 5328 50  0000 L CNN
F 2 "" H 5600 5200 50  0001 C CNN
F 3 "" H 5600 5200 50  0001 C CNN
	1    5600 5200
	0    1    1    0   
$EndComp
Text GLabel 2450 6300 2    50   Input ~ 0
LED_STATUS
Text GLabel 5650 5350 2    50   Input ~ 0
ESP_RESET
Text GLabel 5650 5500 2    50   Input ~ 0
ESP_CH_PD
Text GLabel 5650 5650 2    50   Input ~ 0
ESP_GPIO0
Text GLabel 5650 5800 2    50   Input ~ 0
ESP_GPIO2
Wire Wire Line
	5500 5350 5650 5350
Wire Wire Line
	5500 5500 5650 5500
Wire Wire Line
	5500 5650 5650 5650
Wire Wire Line
	5500 5800 5650 5800
NoConn ~ 1150 5500
NoConn ~ 1150 5600
NoConn ~ 1150 5700
NoConn ~ 1150 5900
NoConn ~ 1150 6000
NoConn ~ 1150 6300
NoConn ~ 1150 6400
NoConn ~ 1150 6700
NoConn ~ 1150 7000
NoConn ~ 2450 6500
NoConn ~ 2450 6400
NoConn ~ 1150 5100
NoConn ~ 1150 4900
NoConn ~ 1150 4800
$Comp
L Device:C_Small C3
U 1 1 6009589D
P 1850 3500
F 0 "C3" H 1942 3546 50  0000 L CNN
F 1 "10uF" H 1942 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1850 3500 50  0001 C CNN
F 3 "~" H 1850 3500 50  0001 C CNN
F 4 "C19702" H 1850 3500 50  0001 C CNN "LCSC Part # "
	1    1850 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 60095F0C
P 2200 3500
F 0 "C4" H 2292 3546 50  0000 L CNN
F 1 "100nF" H 2292 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2200 3500 50  0001 C CNN
F 3 "~" H 2200 3500 50  0001 C CNN
F 4 "C1525" H 2200 3500 50  0001 C CNN "LCSC Part # "
	1    2200 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 60096508
P 2550 3500
F 0 "C5" H 2642 3546 50  0000 L CNN
F 1 "100nF" H 2642 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2550 3500 50  0001 C CNN
F 3 "~" H 2550 3500 50  0001 C CNN
F 4 "C1525" H 2550 3500 50  0001 C CNN "LCSC Part # "
	1    2550 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 600968DA
P 2850 3500
F 0 "C6" H 2942 3546 50  0000 L CNN
F 1 "100nF" H 2942 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2850 3500 50  0001 C CNN
F 3 "~" H 2850 3500 50  0001 C CNN
F 4 "C1525" H 2850 3500 50  0001 C CNN "LCSC Part # "
	1    2850 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 60096D45
P 3200 3500
F 0 "C7" H 3292 3546 50  0000 L CNN
F 1 "100nF" H 3292 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3200 3500 50  0001 C CNN
F 3 "~" H 3200 3500 50  0001 C CNN
F 4 "C1525" H 3200 3500 50  0001 C CNN "LCSC Part # "
	1    3200 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 60097204
P 1700 3400
F 0 "#PWR04" H 1700 3250 50  0001 C CNN
F 1 "+3.3V" H 1715 3573 50  0000 C CNN
F 2 "" H 1700 3400 50  0001 C CNN
F 3 "" H 1700 3400 50  0001 C CNN
	1    1700 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 60097BF3
P 1700 3600
F 0 "#PWR05" H 1700 3350 50  0001 C CNN
F 1 "GND" H 1705 3427 50  0000 C CNN
F 2 "" H 1700 3600 50  0001 C CNN
F 3 "" H 1700 3600 50  0001 C CNN
	1    1700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3400 1850 3400
Wire Wire Line
	1850 3400 2200 3400
Connection ~ 1850 3400
Wire Wire Line
	2200 3400 2550 3400
Connection ~ 2200 3400
Wire Wire Line
	2550 3400 2850 3400
Connection ~ 2550 3400
Wire Wire Line
	2850 3400 3200 3400
Connection ~ 2850 3400
Wire Wire Line
	3200 3600 2850 3600
Wire Wire Line
	2850 3600 2550 3600
Connection ~ 2850 3600
Wire Wire Line
	2550 3600 2200 3600
Connection ~ 2550 3600
Wire Wire Line
	2200 3600 1850 3600
Connection ~ 2200 3600
Wire Wire Line
	1850 3600 1700 3600
Connection ~ 1850 3600
$Comp
L Device:L_Small L1
U 1 1 600A679E
P 3450 3900
F 0 "L1" V 3550 3900 50  0000 C CNN
F 1 "39nH" V 3400 3900 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 3450 3900 50  0001 C CNN
F 3 "~" H 3450 3900 50  0001 C CNN
	1    3450 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 3900 3350 3900
$Comp
L Device:C_Small C10
U 1 1 600A8748
P 4050 4050
F 0 "C10" H 4142 4096 50  0000 L CNN
F 1 "100nF" H 4142 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4050 4050 50  0001 C CNN
F 3 "~" H 4050 4050 50  0001 C CNN
F 4 "C1525" H 4050 4050 50  0001 C CNN "LCSC Part # "
	1    4050 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 600A8C21
P 3700 4050
F 0 "C9" H 3792 4096 50  0000 L CNN
F 1 "1uF" H 3792 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3700 4050 50  0001 C CNN
F 3 "~" H 3700 4050 50  0001 C CNN
F 4 "C52923" H 3700 4050 50  0001 C CNN "LCSC Part # "
	1    3700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3900 3700 3900
Wire Wire Line
	3700 3900 3700 3950
Wire Wire Line
	3700 3900 4050 3900
Wire Wire Line
	4050 3900 4050 3950
Connection ~ 3700 3900
$Comp
L power:GND #PWR014
U 1 1 600AAB22
P 3150 4150
F 0 "#PWR014" H 3150 3900 50  0001 C CNN
F 1 "GND" H 3155 3977 50  0000 C CNN
F 2 "" H 3150 4150 50  0001 C CNN
F 3 "" H 3150 4150 50  0001 C CNN
	1    3150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4150 3700 4150
Wire Wire Line
	3700 4150 4050 4150
Connection ~ 3700 4150
$Comp
L power:+3.3VA #PWR017
U 1 1 600ACA22
P 4050 3850
F 0 "#PWR017" H 4050 3700 50  0001 C CNN
F 1 "+3.3VA" H 4065 4023 50  0000 C CNN
F 2 "" H 4050 3850 50  0001 C CNN
F 3 "" H 4050 3850 50  0001 C CNN
	1    4050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3850 4050 3900
Connection ~ 4050 3900
Text GLabel 1150 5200 0    50   Input ~ 0
HSE_IN
$Comp
L Device:Crystal_GND24_Small Y1
U 1 1 600B2622
P 3850 6700
F 0 "Y1" H 3800 7000 50  0000 L CNN
F 1 "16MHz" H 3750 6900 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 3850 6700 50  0001 C CNN
F 3 "~" H 3850 6700 50  0001 C CNN
F 4 "C13738" H 3850 6700 50  0001 C CNN "LCSC Part # "
	1    3850 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 600B2ED1
P 3600 6900
F 0 "C8" H 3692 6946 50  0000 L CNN
F 1 "12pF" H 3692 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3600 6900 50  0001 C CNN
F 3 "~" H 3600 6900 50  0001 C CNN
F 4 "C1547" H 3600 6900 50  0001 C CNN "LCSC Part # "
	1    3600 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 600B3313
P 4100 6900
F 0 "C11" H 4192 6946 50  0000 L CNN
F 1 "12pF" H 4192 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4100 6900 50  0001 C CNN
F 3 "~" H 4100 6900 50  0001 C CNN
F 4 "C1547" H 4100 6900 50  0001 C CNN "LCSC Part # "
	1    4100 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 600B5174
P 3850 7150
F 0 "#PWR016" H 3850 6900 50  0001 C CNN
F 1 "GND" H 3855 6977 50  0000 C CNN
F 2 "" H 3850 7150 50  0001 C CNN
F 3 "" H 3850 7150 50  0001 C CNN
	1    3850 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7000 3600 7100
Wire Wire Line
	3600 7100 3850 7100
Wire Wire Line
	3850 7100 3850 7150
Wire Wire Line
	3850 7100 4100 7100
Wire Wire Line
	4100 7100 4100 7000
Connection ~ 3850 7100
Wire Wire Line
	3600 6800 3600 6700
Wire Wire Line
	3600 6700 3750 6700
Wire Wire Line
	3950 6700 4100 6700
Wire Wire Line
	4100 6700 4100 6800
Wire Wire Line
	3850 7100 3850 7050
Wire Wire Line
	3850 6600 3850 6550
Connection ~ 3850 7050
Wire Wire Line
	3850 7050 3850 6800
Text GLabel 3400 6700 0    50   Input ~ 0
HSE_IN
Wire Wire Line
	3400 6700 3600 6700
Connection ~ 3600 6700
$Comp
L Device:R_Small R4
U 1 1 600BF105
P 4300 6700
F 0 "R4" V 4104 6700 50  0000 C CNN
F 1 "47" V 4195 6700 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4300 6700 50  0001 C CNN
F 3 "~" H 4300 6700 50  0001 C CNN
	1    4300 6700
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 6700 4200 6700
Connection ~ 4100 6700
Text GLabel 4500 6700 2    50   Input ~ 0
HSE_OUT
Wire Wire Line
	4400 6700 4500 6700
Text Notes 3450 7450 0    50   ~ 0
CLoad = 2*(CL - Cstray)
Wire Notes Line
	475  3100 4950 3100
Wire Wire Line
	1650 4200 1650 4100
Wire Wire Line
	1650 4100 1750 4100
Wire Wire Line
	1850 4100 1850 4050
Wire Wire Line
	1850 4100 1850 4200
Connection ~ 1850 4100
Wire Wire Line
	1750 4200 1750 4100
Connection ~ 1750 4100
Wire Wire Line
	1750 4100 1850 4100
Wire Wire Line
	1850 4100 1950 4100
Wire Wire Line
	1950 4100 1950 4200
Wire Wire Line
	2050 4125 2050 4200
Text Notes 500  3200 0    50   ~ 0
STM32 microntroller
$Comp
L Device:LED_Small D1
U 1 1 6014F6F9
P 3500 5275
F 0 "D1" H 3500 5175 50  0000 C CNN
F 1 "BLUE" H 3500 5400 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 3500 5275 50  0001 C CNN
F 3 "~" V 3500 5275 50  0001 C CNN
F 4 "C72041" H 3500 5275 50  0001 C CNN "LCSC Part # "
	1    3500 5275
	-1   0    0    1   
$EndComp
Text GLabel 3275 5275 0    50   Input ~ 0
LED_STATUS
Wire Wire Line
	3275 5275 3400 5275
$Comp
L Device:R_Small R2
U 1 1 6015158A
P 3825 5275
F 0 "R2" V 3725 5275 50  0000 C CNN
F 1 "1k5" V 3925 5275 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3825 5275 50  0001 C CNN
F 3 "~" H 3825 5275 50  0001 C CNN
	1    3825 5275
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 5275 3725 5275
$Comp
L power:GND #PWR018
U 1 1 60153386
P 4050 5275
F 0 "#PWR018" H 4050 5025 50  0001 C CNN
F 1 "GND" V 4055 5147 50  0000 R CNN
F 2 "" H 4050 5275 50  0001 C CNN
F 3 "" H 4050 5275 50  0001 C CNN
	1    4050 5275
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3925 5275 4050 5275
Wire Notes Line
	4950 475  4950 7800
Text Notes 500  575  0    50   ~ 0
Power Circuit and USB
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 6023D52A
P 1950 1250
F 0 "U2" H 1950 1492 50  0000 C CNN
F 1 "AMS1117-3.3" H 1950 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1950 1450 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2050 1000 50  0001 C CNN
	1    1950 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 60241C06
P 675 1175
F 0 "#PWR01" H 675 1025 50  0001 C CNN
F 1 "+5V" H 690 1348 50  0000 C CNN
F 2 "" H 675 1175 50  0001 C CNN
F 3 "" H 675 1175 50  0001 C CNN
	1    675  1175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60242276
P 1950 1650
F 0 "#PWR08" H 1950 1400 50  0001 C CNN
F 1 "GND" H 1955 1477 50  0000 C CNN
F 2 "" H 1950 1650 50  0001 C CNN
F 3 "" H 1950 1650 50  0001 C CNN
	1    1950 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1650 1950 1600
$Comp
L Device:Polyfuse_Small F1
U 1 1 60245D53
P 825 1250
F 0 "F1" V 725 1250 50  0000 C CNN
F 1 "400mA" V 925 1250 50  0000 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" H 875 1050 50  0001 L CNN
F 3 "~" H 825 1250 50  0001 C CNN
	1    825  1250
	0    1    1    0   
$EndComp
Wire Wire Line
	675  1175 675  1250
Wire Wire Line
	675  1250 725  1250
$Comp
L Device:C_Small C1
U 1 1 602566E2
P 1550 1450
F 0 "C1" H 1642 1496 50  0000 L CNN
F 1 "10uF" H 1642 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1550 1450 50  0001 C CNN
F 3 "~" H 1550 1450 50  0001 C CNN
F 4 "C19702" H 1550 1450 50  0001 C CNN "LCSC Part # "
	1    1550 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1250 1550 1250
Wire Wire Line
	1550 1350 1550 1250
Connection ~ 1550 1250
Wire Wire Line
	1550 1250 1650 1250
Wire Wire Line
	1550 1550 1550 1600
Wire Wire Line
	1550 1600 1950 1600
Connection ~ 1950 1600
$Comp
L Device:C_Small C2
U 1 1 60261CA9
P 2400 1450
F 0 "C2" H 2492 1496 50  0000 L CNN
F 1 "22uF" H 2492 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2400 1450 50  0001 C CNN
F 3 "~" H 2400 1450 50  0001 C CNN
F 4 "C59461" H 2400 1450 50  0001 C CNN "LCSC Part # "
	1    2400 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1600 1950 1550
Wire Wire Line
	2400 1550 2400 1600
Wire Wire Line
	2400 1600 1950 1600
Wire Wire Line
	2400 1250 2400 1350
Wire Wire Line
	2250 1250 2400 1250
$Comp
L power:+3.3V #PWR010
U 1 1 6027251A
P 2525 1250
F 0 "#PWR010" H 2525 1100 50  0001 C CNN
F 1 "+3.3V" H 2540 1423 50  0000 C CNN
F 2 "" H 2525 1250 50  0001 C CNN
F 3 "" H 2525 1250 50  0001 C CNN
	1    2525 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1250 2525 1250
Connection ~ 2400 1250
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 60290AE9
P 1300 1250
F 0 "FB1" V 1150 1250 50  0000 C CNN
F 1 "100 @ 100MHz" V 1425 1250 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 1230 1250 50  0001 C CNN
F 3 "~" H 1300 1250 50  0001 C CNN
	1    1300 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	925  1250 1200 1250
$Comp
L power:+5V #PWR03
U 1 1 602A6D6D
P 1325 2050
F 0 "#PWR03" H 1325 1900 50  0001 C CNN
F 1 "+5V" H 1340 2223 50  0000 C CNN
F 2 "" H 1325 2050 50  0001 C CNN
F 3 "" H 1325 2050 50  0001 C CNN
	1    1325 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2100 1325 2100
Wire Wire Line
	1325 2100 1325 2050
NoConn ~ 1200 2500
$Comp
L power:GND #PWR02
U 1 1 602B0CB6
P 900 2800
F 0 "#PWR02" H 900 2550 50  0001 C CNN
F 1 "GND" H 905 2627 50  0000 C CNN
F 2 "" H 900 2800 50  0001 C CNN
F 3 "" H 900 2800 50  0001 C CNN
	1    900  2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2700 900  2800
Text GLabel 1200 2300 2    50   Input ~ 0
USB_CONN_D+
Text GLabel 1200 2400 2    50   Input ~ 0
USB_CONN_D-
Text GLabel 3400 2425 2    50   Input ~ 0
USB_CONN_D+
Text GLabel 3400 2225 2    50   Input ~ 0
USB_D+
Text GLabel 2400 2425 0    50   Input ~ 0
USB_CONN_D-
Text GLabel 2400 2225 0    50   Input ~ 0
USB_D-
$Comp
L power:+5V #PWR011
U 1 1 602C4979
P 2900 1825
F 0 "#PWR011" H 2900 1675 50  0001 C CNN
F 1 "+5V" H 2915 1998 50  0000 C CNN
F 2 "" H 2900 1825 50  0001 C CNN
F 3 "" H 2900 1825 50  0001 C CNN
	1    2900 1825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 602C9427
P 2900 2825
F 0 "#PWR012" H 2900 2575 50  0001 C CNN
F 1 "GND" H 2905 2652 50  0000 C CNN
F 2 "" H 2900 2825 50  0001 C CNN
F 3 "" H 2900 2825 50  0001 C CNN
	1    2900 2825
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 602CFC30
P 5725 3500
F 0 "J2" H 5775 3800 50  0000 C CNN
F 1 "ARM 10 Pin" H 5775 3175 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 5725 3500 50  0001 C CNN
F 3 "~" H 5725 3500 50  0001 C CNN
	1    5725 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 602D0C4F
P 5400 3250
F 0 "#PWR022" H 5400 3100 50  0001 C CNN
F 1 "+3.3V" H 5415 3423 50  0000 C CNN
F 2 "" H 5400 3250 50  0001 C CNN
F 3 "" H 5400 3250 50  0001 C CNN
	1    5400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3250 5400 3300
Wire Wire Line
	5400 3300 5525 3300
Text GLabel 6025 3300 2    50   Input ~ 0
SWDIO
Text GLabel 6025 3400 2    50   Input ~ 0
SWCLK
$Comp
L power:GND #PWR023
U 1 1 602DA996
P 5425 3775
F 0 "#PWR023" H 5425 3525 50  0001 C CNN
F 1 "GND" H 5430 3602 50  0000 C CNN
F 2 "" H 5425 3775 50  0001 C CNN
F 3 "" H 5425 3775 50  0001 C CNN
	1    5425 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	5525 3700 5425 3700
Wire Wire Line
	5425 3700 5425 3775
Wire Wire Line
	5425 3700 5425 3500
Wire Wire Line
	5425 3500 5525 3500
Connection ~ 5425 3700
Wire Wire Line
	5525 3400 5425 3400
Wire Wire Line
	5425 3400 5425 3500
Connection ~ 5425 3500
NoConn ~ 5525 3600
NoConn ~ 6025 3600
$Comp
L Device:C_Small C12
U 1 1 602EF35C
P 6475 3625
F 0 "C12" H 6567 3671 50  0000 L CNN
F 1 "100nF" H 6567 3580 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6475 3625 50  0001 C CNN
F 3 "~" H 6475 3625 50  0001 C CNN
F 4 "C1525" H 6475 3625 50  0001 C CNN "LCSC Part # "
	1    6475 3625
	1    0    0    -1  
$EndComp
Text GLabel 6575 3425 2    50   Input ~ 0
NRST
Wire Wire Line
	6575 3425 6475 3425
Wire Wire Line
	6475 3425 6475 3525
Text GLabel 6025 3700 2    50   Input ~ 0
NRST
$Comp
L power:GND #PWR025
U 1 1 602F4D21
P 6475 3775
F 0 "#PWR025" H 6475 3525 50  0001 C CNN
F 1 "GND" H 6480 3602 50  0000 C CNN
F 2 "" H 6475 3775 50  0001 C CNN
F 3 "" H 6475 3775 50  0001 C CNN
	1    6475 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6475 3725 6475 3775
Wire Notes Line
	5275 3000 5275 4000
Wire Notes Line
	5275 4000 6825 4000
Wire Notes Line
	6825 4000 6825 3000
Wire Notes Line
	6825 3000 5275 3000
Text Notes 5575 3175 0    50   ~ 0
SWD Connector\nNRST Cap not strictly required
Wire Notes Line
	5050 4650 5050 5950
Wire Notes Line
	5050 5950 7600 5950
Wire Notes Line
	7600 5950 7600 4650
Wire Notes Line
	7600 4650 5050 4650
Text Notes 6875 4750 0    50   ~ 0
ESP-01 Interface
Text GLabel 2450 5900 2    50   Input ~ 0
ESP_RESET
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U1
U 1 1 6004BF72
P 1850 5700
F 0 "U1" H 1300 7150 50  0000 C CNN
F 1 "STM32F103C8Tx" H 2450 7150 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 1250 4300 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 1850 5700 50  0001 C CNN
	1    1850 5700
	1    0    0    -1  
$EndComp
Text GLabel 2450 6000 2    50   Input ~ 0
ESP_CH_PD
Text GLabel 2450 6100 2    50   Input ~ 0
ESP_GPIO0
Text GLabel 2450 6200 2    50   Input ~ 0
ESP_GPIO2
$Comp
L Device:LED_Small D2
U 1 1 60343CCE
P 3375 1475
F 0 "D2" H 3375 1375 50  0000 C CNN
F 1 "RED" H 3375 1600 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 3375 1475 50  0001 C CNN
F 3 "~" V 3375 1475 50  0001 C CNN
F 4 "C2286" H 3375 1475 50  0001 C CNN "LCSC Part # "
	1    3375 1475
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 1475 3275 1475
$Comp
L Device:R_Small R3
U 1 1 60343CD6
P 3700 1475
F 0 "R3" V 3600 1475 50  0000 C CNN
F 1 "1k" V 3800 1475 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3700 1475 50  0001 C CNN
F 3 "~" H 3700 1475 50  0001 C CNN
	1    3700 1475
	0    1    1    0   
$EndComp
Wire Wire Line
	3475 1475 3600 1475
$Comp
L power:GND #PWR021
U 1 1 60343CDD
P 3925 1475
F 0 "#PWR021" H 3925 1225 50  0001 C CNN
F 1 "GND" V 3930 1347 50  0000 R CNN
F 2 "" H 3925 1475 50  0001 C CNN
F 3 "" H 3925 1475 50  0001 C CNN
	1    3925 1475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 1475 3925 1475
$Comp
L power:+3.3V #PWR015
U 1 1 603473F0
P 3150 1475
F 0 "#PWR015" H 3150 1325 50  0001 C CNN
F 1 "+3.3V" H 3165 1648 50  0000 C CNN
F 2 "" H 3150 1475 50  0001 C CNN
F 3 "" H 3150 1475 50  0001 C CNN
	1    3150 1475
	1    0    0    -1  
$EndComp
NoConn ~ 800  2700
Text GLabel 1150 5800 0    50   Input ~ 0
SWO
Text GLabel 6025 3500 2    50   Input ~ 0
SWO
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 603706E3
P 7825 3500
F 0 "J4" H 7905 3492 50  0000 L CNN
F 1 "I2C" H 7905 3401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7825 3500 50  0001 C CNN
F 3 "~" H 7825 3500 50  0001 C CNN
	1    7825 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 60372A99
P 7550 3400
F 0 "#PWR0101" H 7550 3250 50  0001 C CNN
F 1 "+3.3V" H 7565 3573 50  0000 C CNN
F 2 "" H 7550 3400 50  0001 C CNN
F 3 "" H 7550 3400 50  0001 C CNN
	1    7550 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60377075
P 7550 3725
F 0 "#PWR0102" H 7550 3475 50  0001 C CNN
F 1 "GND" H 7555 3552 50  0000 C CNN
F 2 "" H 7550 3725 50  0001 C CNN
F 3 "" H 7550 3725 50  0001 C CNN
	1    7550 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	7625 3700 7550 3700
Wire Wire Line
	7550 3700 7550 3725
Text GLabel 7625 3500 0    50   Input ~ 0
I2C1_SCl
Text GLabel 7625 3600 0    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	7550 3400 7625 3400
Wire Notes Line
	7150 3175 7150 3950
Wire Notes Line
	7150 3950 8375 3950
Wire Notes Line
	8375 3950 8375 3175
Wire Notes Line
	8375 3175 7150 3175
Text Notes 7875 3275 0    50   ~ 0
I2C Interface
NoConn ~ 2450 7000
$Comp
L Connector_Generic:Conn_01x06 J5
U 1 1 60397FC3
P 8650 4575
F 0 "J5" H 8730 4567 50  0000 L CNN
F 1 "USART" H 8730 4476 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 8650 4575 50  0001 C CNN
F 3 "~" H 8650 4575 50  0001 C CNN
	1    8650 4575
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0103
U 1 1 603BACE0
P 8300 4350
F 0 "#PWR0103" H 8300 4200 50  0001 C CNN
F 1 "+3.3V" H 8315 4523 50  0000 C CNN
F 2 "" H 8300 4350 50  0001 C CNN
F 3 "" H 8300 4350 50  0001 C CNN
	1    8300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4350 8300 4375
Wire Wire Line
	8300 4375 8450 4375
$Comp
L power:GND #PWR0104
U 1 1 603BF3E0
P 8325 4925
F 0 "#PWR0104" H 8325 4675 50  0001 C CNN
F 1 "GND" H 8330 4752 50  0000 C CNN
F 2 "" H 8325 4925 50  0001 C CNN
F 3 "" H 8325 4925 50  0001 C CNN
	1    8325 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4875 8325 4875
Wire Wire Line
	8325 4875 8325 4925
Text GLabel 8450 4775 0    50   Input ~ 0
USART3_TX
Text GLabel 8450 4675 0    50   Input ~ 0
USART3_RX
Text GLabel 8450 4575 0    50   Input ~ 0
USART3_CTS
Text GLabel 8450 4475 0    50   Input ~ 0
USART3_RTS
Wire Notes Line
	7875 4125 7875 5125
Wire Notes Line
	7875 5125 9200 5125
Wire Notes Line
	9200 5125 9200 4100
Wire Notes Line
	9200 4100 7875 4100
Text Notes 8575 4200 0    50   ~ 0
USART Interface
Text GLabel 3800 5950 0    50   Input ~ 0
I2C1_SCl
Text GLabel 3800 6050 0    50   Input ~ 0
I2C1_SDA
$Comp
L Device:R_Small R5
U 1 1 60472BD1
P 3950 5850
F 0 "R5" V 3850 5850 50  0000 C CNN
F 1 "2k2" V 4050 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3950 5850 50  0001 C CNN
F 3 "~" H 3950 5850 50  0001 C CNN
	1    3950 5850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 604739BB
P 4225 5850
F 0 "R6" V 4125 5850 50  0000 C CNN
F 1 "2k2" V 4325 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4225 5850 50  0001 C CNN
F 3 "~" H 4225 5850 50  0001 C CNN
	1    4225 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 5950 3950 5950
Wire Wire Line
	3800 6050 4225 6050
Wire Wire Line
	4225 6050 4225 5950
$Comp
L power:+3.3V #PWR028
U 1 1 60489CFA
P 4075 5650
F 0 "#PWR028" H 4075 5500 50  0001 C CNN
F 1 "+3.3V" H 4090 5823 50  0000 C CNN
F 2 "" H 4075 5650 50  0001 C CNN
F 3 "" H 4075 5650 50  0001 C CNN
	1    4075 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 5650 3950 5650
Wire Wire Line
	3950 5650 3950 5750
Wire Wire Line
	4075 5650 4225 5650
Wire Wire Line
	4225 5650 4225 5750
Connection ~ 4075 5650
$Comp
L Device:Jumper_NC_Dual JP1
U 1 1 60497E3B
P 4300 4675
F 0 "JP1" V 4254 4777 50  0000 L CNN
F 1 "BOOT Selector" V 4345 4777 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4300 4675 50  0001 C CNN
F 3 "~" H 4300 4675 50  0001 C CNN
	1    4300 4675
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 4925 4300 5000
Wire Wire Line
	4300 4375 4300 4425
Wire Wire Line
	4000 6550 4000 7050
Wire Wire Line
	3850 6550 4000 6550
Wire Wire Line
	3850 7050 4000 7050
$Comp
L power:+3.3V #PWR013
U 1 1 600A6BFA
P 3150 3900
F 0 "#PWR013" H 3150 3750 50  0001 C CNN
F 1 "+3.3V" H 3165 4073 50  0000 C CNN
F 2 "" H 3150 3900 50  0001 C CNN
F 3 "" H 3150 3900 50  0001 C CNN
	1    3150 3900
	1    0    0    -1  
$EndComp
Text GLabel 2450 5700 2    50   Input ~ 0
USART2_TX
NoConn ~ 2450 5500
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 60564C67
P 5950 1850
F 0 "H1" V 5904 2000 50  0000 L CNN
F 1 "MountingHole_Pad" V 5995 2000 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 5950 1850 50  0001 C CNN
F 3 "~" H 5950 1850 50  0001 C CNN
	1    5950 1850
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 6056521C
P 5950 2025
F 0 "H2" V 5904 2175 50  0000 L CNN
F 1 "MountingHole_Pad" V 5995 2175 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 5950 2025 50  0001 C CNN
F 3 "~" H 5950 2025 50  0001 C CNN
	1    5950 2025
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 60565ABD
P 5950 2200
F 0 "H3" V 5904 2350 50  0000 L CNN
F 1 "MountingHole_Pad" V 5995 2350 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 5950 2200 50  0001 C CNN
F 3 "~" H 5950 2200 50  0001 C CNN
	1    5950 2200
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 60565F9D
P 5950 2375
F 0 "H4" V 5904 2525 50  0000 L CNN
F 1 "MountingHole_Pad" V 5995 2525 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 5950 2375 50  0001 C CNN
F 3 "~" H 5950 2375 50  0001 C CNN
	1    5950 2375
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 605663D2
P 5775 2475
F 0 "#PWR027" H 5775 2225 50  0001 C CNN
F 1 "GND" H 5780 2302 50  0000 C CNN
F 2 "" H 5775 2475 50  0001 C CNN
F 3 "" H 5775 2475 50  0001 C CNN
	1    5775 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5775 2475 5775 2375
Wire Wire Line
	5775 1850 5850 1850
Wire Wire Line
	5850 2025 5775 2025
Connection ~ 5775 2025
Wire Wire Line
	5775 2025 5775 1850
Wire Wire Line
	5850 2200 5775 2200
Connection ~ 5775 2200
Wire Wire Line
	5775 2200 5775 2025
Wire Wire Line
	5850 2375 5775 2375
Connection ~ 5775 2375
Wire Wire Line
	5775 2375 5775 2200
NoConn ~ 2450 5600
$Comp
L Connector:USB_B_Micro J1
U 1 1 6023E9CE
P 900 2300
F 0 "J1" H 957 2767 50  0000 C CNN
F 1 "USB_B_Micro" H 957 2676 50  0000 C CNN
F 2 "" H 1050 2250 50  0001 C CNN
F 3 "~" H 1050 2250 50  0001 C CNN
	1    900  2300
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:USBLC6-2SC6 U3
U 1 1 6024AAFB
P 2900 2325
F 0 "U3" H 3150 2675 50  0000 C CNN
F 1 "USBLC6-2SC6" H 3250 1975 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2150 2725 50  0001 C CNN
F 3 "http://www2.st.com/resource/en/datasheet/CD00050750.pdf" H 3100 2675 50  0001 C CNN
	1    2900 2325
	1    0    0    -1  
$EndComp
$EndSCHEMATC