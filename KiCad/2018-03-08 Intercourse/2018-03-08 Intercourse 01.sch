EESchema Schematic File Version 2
LIBS:2018-03-08 Intercourse 01-rescue
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:w25q-flash
LIBS:murata-dmf3-supercap
LIBS:LTC3225
LIBS:TPS61221DCKR
LIBS:ESP8266
LIBS:MyAntennas
LIBS:2018-03-08 Intercourse 01-cache
EELAYER 25 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title "C - Intercourse"
Date "March 2018"
Rev "01"
Comp ""
Comment1 ""
Comment2 "The future is soon."
Comment3 "A project by Max Wolfs and Alexander Lehmann."
Comment4 "Schematic of C."
$EndDescr
$Comp
L DMF3 C1
U 1 1 5AAA8D1F
P 3600 1300
F 0 "C1" H 3500 1550 60  0000 C CNN
F 1 "DMF3" H 3500 1050 60  0000 C CNN
F 2 "Murata_DMF3Z:Murata_DMF3Z" H 3600 1300 60  0001 C CNN
F 3 "" H 3600 1300 60  0001 C CNN
	1    3600 1300
	1    0    0    -1  
$EndComp
$Comp
L LTC3225 U1
U 1 1 5AAA8D7A
P 3700 2300
F 0 "U1" H 3700 2700 60  0000 C CNN
F 1 "LTC3225" H 3700 1900 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-10-1EP_2x3mm_Pitch0.5mm" H 3700 2300 60  0001 C CNN
F 3 "" H 3700 2300 60  0001 C CNN
	1    3700 2300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5AAA95FB
P 3100 2100
F 0 "C3" H 2900 2100 50  0000 L CNN
F 1 "1μF" H 2900 2000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3100 2100 50  0001 C CNN
F 3 "" H 3100 2100 50  0001 C CNN
	1    3100 2100
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 5AAAACAB
P 4700 2400
F 0 "R1" V 4500 2350 50  0000 L CNN
F 1 "12K" V 4600 2350 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4700 2400 50  0001 C CNN
F 3 "" H 4700 2400 50  0001 C CNN
	1    4700 2400
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C5
U 1 1 5AAAAFD7
P 3800 3900
F 0 "C5" H 3600 3900 50  0000 L CNN
F 1 "2.2μF" H 3550 3800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3800 3900 50  0001 C CNN
F 3 "" H 3800 3900 50  0001 C CNN
	1    3800 3900
	1    0    0    -1  
$EndComp
Text Notes 4000 4000 0    60   Italic 0
Decoupling\nfor LTC3225
$Comp
L R_Small R12
U 1 1 5AAAD924
P 2600 8500
F 0 "R12" H 2650 8550 50  0000 L CNN
F 1 "?" H 2650 8450 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2600 8500 50  0001 C CNN
F 3 "" H 2600 8500 50  0001 C CNN
	1    2600 8500
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 5AAAD96E
P 2600 8850
F 0 "D5" V 2700 8700 50  0000 L CNN
F 1 "LED" V 2600 8650 50  0000 L CNN
F 2 "LEDs:LED_0805_HandSoldering" H 2600 8850 50  0001 C CNN
F 3 "" H 2600 8850 50  0001 C CNN
	1    2600 8850
	0    -1   -1   0   
$EndComp
$Comp
L TPS61221DCKR U2
U 1 1 5AABD6B3
P 6350 2200
F 0 "U2" H 6350 2500 60  0000 C CNN
F 1 "TPS61221DCKR" H 6350 1900 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SC-70-8_Handsoldering" H 6350 2200 60  0001 C CNN
F 3 "" H 6350 2200 60  0001 C CNN
	1    6350 2200
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 5AABDCD5
P 7100 1950
F 0 "L1" H 7200 2000 50  0000 C CNN
F 1 "4.7μH" H 7250 1900 50  0000 C CNN
F 2 "C_Connectors:LQH3NPN4R7MJRL" H 7100 1950 50  0001 C CNN
F 3 "" H 7100 1950 50  0001 C CNN
	1    7100 1950
	1    0    0    -1  
$EndComp
Text Notes 3600 3100 0    60   Italic 0
Supercap Charger
Text Notes 6000 2900 0    60   Italic 0
Boost Converter
$Comp
L C_Small C2
U 1 1 5AAC151B
P 5600 1700
F 0 "C2" V 5500 1750 50  0000 L CNN
F 1 "10μF" V 5500 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5600 1700 50  0001 C CNN
F 3 "" H 5600 1700 50  0001 C CNN
	1    5600 1700
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 5AAC2CD4
P 7100 2500
F 0 "C4" V 7200 2550 50  0000 L CNN
F 1 "10μF" V 7200 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7100 2500 50  0001 C CNN
F 3 "" H 7100 2500 50  0001 C CNN
	1    7100 2500
	0    -1   -1   0   
$EndComp
Text Notes 1700 5000 0    60   Italic 0
USB C\nConnector for\nPower Supply
Text Notes 2800 1300 0    60   Italic 0
Supercap
$Comp
L ESP8266EX U4
U 1 1 5AAC0B75
P 3750 6950
F 0 "U4" H 2900 7700 60  0000 C CNN
F 1 "ESP8266EX" H 2900 7600 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-32-1EP_5x5mm_Pitch0.5mm" H 2850 7650 60  0001 C CNN
F 3 "" H 2850 7650 60  0000 C CNN
	1    3750 6950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C12
U 1 1 5AAC131F
P 1800 7100
F 0 "C12" H 1600 7100 50  0000 L CNN
F 1 "0.1μF" H 1550 7000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1800 7100 50  0001 C CNN
F 3 "" H 1800 7100 50  0001 C CNN
	1    1800 7100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 5AAC2824
P 1400 7100
F 0 "C11" H 1200 7100 50  0000 L CNN
F 1 "10μF" H 1200 7000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1400 7100 50  0001 C CNN
F 3 "" H 1400 7100 50  0001 C CNN
	1    1400 7100
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5AACA8C2
P 3500 5150
F 0 "R6" V 3400 5100 50  0000 C CNN
F 1 "12K" V 3400 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3430 5150 50  0001 C CNN
F 3 "" H 3500 5150 50  0001 C CNN
	1    3500 5150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C10
U 1 1 5AACE32B
P 2000 6500
F 0 "C10" H 1800 6500 50  0000 L CNN
F 1 "5.6pF" H 1750 6400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2000 6500 50  0001 C CNN
F 3 "" H 2000 6500 50  0001 C CNN
	1    2000 6500
	1    0    0    -1  
$EndComp
$Comp
L Crystal_GND24_Small Y1
U 1 1 5AAD1277
P 4000 5200
F 0 "Y1" V 4100 4700 50  0000 L CNN
F 1 "26 MHz" V 4100 4850 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_Abracon_ABM8G-4pin_3.2x2.5mm" H 4000 5200 50  0001 C CNN
F 3 "" H 4000 5200 50  0001 C CNN
	1    4000 5200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 5AAD49A7
P 4200 5000
F 0 "C7" H 4000 5000 50  0000 L CNN
F 1 "10pF" H 3950 4900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4200 5000 50  0001 C CNN
F 3 "" H 4200 5000 50  0001 C CNN
	1    4200 5000
	-1   0    0    1   
$EndComp
$Comp
L C_Small C6
U 1 1 5AAD502A
P 3800 5000
F 0 "C6" H 3900 5000 50  0000 L CNN
F 1 "10pF" H 3850 4900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3800 5000 50  0001 C CNN
F 3 "" H 3800 5000 50  0001 C CNN
	1    3800 5000
	-1   0    0    1   
$EndComp
$Comp
L C_Small C9
U 1 1 5AAD95DC
P 2400 6300
F 0 "C9" H 2200 6300 50  0000 L CNN
F 1 "1μF" H 2200 6200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2400 6300 50  0001 C CNN
F 3 "" H 2400 6300 50  0001 C CNN
	1    2400 6300
	1    0    0    -1  
$EndComp
Text Notes 4200 8100 0    60   Italic 0
Microcontroller\nPeriphery
$Comp
L W25Q32FVSSIG U3
U 1 1 5AADED3D
P 6550 6850
F 0 "U3" H 6550 7200 60  0000 C CNN
F 1 "W25Q32FVSSIG" H 6550 6500 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6550 6850 60  0001 C CNN
F 3 "" H 6550 6850 60  0001 C CNN
	1    6550 6850
	1    0    0    -1  
$EndComp
Text Notes 6300 7800 0    60   Italic 0
SPI Flash\nMemory
$Comp
L R R7
U 1 1 5AAE9D88
P 5550 7400
F 0 "R7" V 5350 7400 50  0000 C CNN
F 1 "200" V 5450 7400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5480 7400 50  0001 C CNN
F 3 "" H 5550 7400 50  0001 C CNN
	1    5550 7400
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5AADBBEB
P 4250 8600
F 0 "R13" V 4150 8750 50  0000 C CNN
F 1 "1000" V 4150 8550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4180 8600 50  0001 C CNN
F 3 "" H 4250 8600 50  0001 C CNN
	1    4250 8600
	0    -1   -1   0   
$EndComp
NoConn ~ 2600 7100
NoConn ~ 2600 7000
NoConn ~ 4750 6600
Text Notes 6300 5300 0    60   Italic 0
Inter-Card\nConnector
$Comp
L R R14
U 1 1 5AB011DC
P 4250 8800
F 0 "R14" V 4150 8950 50  0000 C CNN
F 1 "1000" V 4150 8750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4180 8800 50  0001 C CNN
F 3 "" H 4250 8800 50  0001 C CNN
	1    4250 8800
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 5AB01E0B
P 4250 9000
F 0 "R15" V 4150 9150 50  0000 C CNN
F 1 "1000" V 4150 8950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4180 9000 50  0001 C CNN
F 3 "" H 4250 9000 50  0001 C CNN
	1    4250 9000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR01
U 1 1 5AB02ABD
P 4700 9100
F 0 "#PWR01" H 4700 8850 50  0001 C CNN
F 1 "GND" H 4700 8950 50  0000 C CNN
F 2 "" H 4700 9100 50  0001 C CNN
F 3 "" H 4700 9100 50  0001 C CNN
	1    4700 9100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5AB02D42
P 5900 7000
F 0 "#PWR02" H 5900 6750 50  0001 C CNN
F 1 "GND" H 5900 6850 50  0000 C CNN
F 2 "" H 5900 7000 50  0001 C CNN
F 3 "" H 5900 7000 50  0001 C CNN
	1    5900 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5AB04421
P 4600 4900
F 0 "#PWR03" H 4600 4650 50  0001 C CNN
F 1 "GND" H 4600 4750 50  0000 C CNN
F 2 "" H 4600 4900 50  0001 C CNN
F 3 "" H 4600 4900 50  0001 C CNN
	1    4600 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5AB04941
P 1400 7300
F 0 "#PWR04" H 1400 7050 50  0001 C CNN
F 1 "GND" H 1400 7150 50  0000 C CNN
F 2 "" H 1400 7300 50  0001 C CNN
F 3 "" H 1400 7300 50  0001 C CNN
	1    1400 7300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5AB0526A
P 6100 6000
F 0 "#PWR05" H 6100 5750 50  0001 C CNN
F 1 "GND" H 6100 5850 50  0000 C CNN
F 2 "" H 6100 6000 50  0001 C CNN
F 3 "" H 6100 6000 50  0001 C CNN
	1    6100 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5AB06FD1
P 1700 9400
F 0 "#PWR06" H 1700 9150 50  0001 C CNN
F 1 "GND" H 1700 9250 50  0000 C CNN
F 2 "" H 1700 9400 50  0001 C CNN
F 3 "" H 1700 9400 50  0001 C CNN
	1    1700 9400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5AB07A87
P 5800 2400
F 0 "#PWR07" H 5800 2150 50  0001 C CNN
F 1 "GND" H 5800 2250 50  0000 C CNN
F 2 "" H 5800 2400 50  0001 C CNN
F 3 "" H 5800 2400 50  0001 C CNN
	1    5800 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5AB07F62
P 7400 2600
F 0 "#PWR08" H 7400 2350 50  0001 C CNN
F 1 "GND" H 7400 2450 50  0000 C CNN
F 2 "" H 7400 2600 50  0001 C CNN
F 3 "" H 7400 2600 50  0001 C CNN
	1    7400 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5AB082E5
P 5400 1800
F 0 "#PWR09" H 5400 1550 50  0001 C CNN
F 1 "GND" H 5400 1650 50  0000 C CNN
F 2 "" H 5400 1800 50  0001 C CNN
F 3 "" H 5400 1800 50  0001 C CNN
	1    5400 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5AB09090
P 4900 2500
F 0 "#PWR010" H 4900 2250 50  0001 C CNN
F 1 "GND" H 4900 2350 50  0000 C CNN
F 2 "" H 4900 2500 50  0001 C CNN
F 3 "" H 4900 2500 50  0001 C CNN
	1    4900 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5AB09589
P 4000 1500
F 0 "#PWR011" H 4000 1250 50  0001 C CNN
F 1 "GND" H 4000 1350 50  0000 C CNN
F 2 "" H 4000 1500 50  0001 C CNN
F 3 "" H 4000 1500 50  0001 C CNN
	1    4000 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5AB0AAA2
P 3800 4100
F 0 "#PWR012" H 3800 3850 50  0001 C CNN
F 1 "GND" H 3800 3950 50  0000 C CNN
F 2 "" H 3800 4100 50  0001 C CNN
F 3 "" H 3800 4100 50  0001 C CNN
	1    3800 4100
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR013
U 1 1 5AB0ED0F
P 2400 5700
F 0 "#PWR013" H 2400 5550 50  0001 C CNN
F 1 "VDD" H 2400 5850 50  0000 C CNN
F 2 "" H 2400 5700 50  0001 C CNN
F 3 "" H 2400 5700 50  0001 C CNN
	1    2400 5700
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR014
U 1 1 5AB0F0ED
P 5400 2600
F 0 "#PWR014" H 5400 2450 50  0001 C CNN
F 1 "VDD" H 5400 2750 50  0000 C CNN
F 2 "" H 5400 2600 50  0001 C CNN
F 3 "" H 5400 2600 50  0001 C CNN
	1    5400 2600
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR015
U 1 1 5AB0F171
P 6100 4700
F 0 "#PWR015" H 6100 4550 50  0001 C CNN
F 1 "VDD" H 6100 4850 50  0000 C CNN
F 2 "" H 6100 4700 50  0001 C CNN
F 3 "" H 6100 4700 50  0001 C CNN
	1    6100 4700
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR016
U 1 1 5AB0F6FF
P 1400 6600
F 0 "#PWR016" H 1400 6450 50  0001 C CNN
F 1 "VDD" H 1400 6750 50  0000 C CNN
F 2 "" H 1400 6600 50  0001 C CNN
F 3 "" H 1400 6600 50  0001 C CNN
	1    1400 6600
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR017
U 1 1 5AB10318
P 4700 8500
F 0 "#PWR017" H 4700 8350 50  0001 C CNN
F 1 "VDD" H 4700 8650 50  0000 C CNN
F 2 "" H 4700 8500 50  0001 C CNN
F 3 "" H 4700 8500 50  0001 C CNN
	1    4700 8500
	1    0    0    -1  
$EndComp
$Comp
L VBUS #PWR018
U 1 1 5AB1587E
P 2600 2300
F 0 "#PWR018" H 2600 2150 50  0001 C CNN
F 1 "VBUS" H 2600 2450 50  0000 C CNN
F 2 "" H 2600 2300 50  0001 C CNN
F 3 "" H 2600 2300 50  0001 C CNN
	1    2600 2300
	1    0    0    -1  
$EndComp
$Comp
L VBUS #PWR019
U 1 1 5AB15E99
P 1400 8000
F 0 "#PWR019" H 1400 7850 50  0001 C CNN
F 1 "VBUS" H 1400 8150 50  0000 C CNN
F 2 "" H 1400 8000 50  0001 C CNN
F 3 "" H 1400 8000 50  0001 C CNN
	1    1400 8000
	1    0    0    -1  
$EndComp
$Comp
L VBUS #PWR020
U 1 1 5AB1696E
P 3800 3700
F 0 "#PWR020" H 3800 3550 50  0001 C CNN
F 1 "VBUS" H 3800 3850 50  0000 C CNN
F 2 "" H 3800 3700 50  0001 C CNN
F 3 "" H 3800 3700 50  0001 C CNN
	1    3800 3700
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR021
U 1 1 5AB188E5
P 7100 6600
F 0 "#PWR021" H 7100 6450 50  0001 C CNN
F 1 "VDD" H 7100 6750 50  0000 C CNN
F 2 "" H 7100 6600 50  0001 C CNN
F 3 "" H 7100 6600 50  0001 C CNN
	1    7100 6600
	1    0    0    -1  
$EndComp
$Comp
L VBUS #PWR022
U 1 1 5AB199E8
P 4500 2000
F 0 "#PWR022" H 4500 1850 50  0001 C CNN
F 1 "VBUS" H 4500 2150 50  0000 C CNN
F 2 "" H 4500 2000 50  0001 C CNN
F 3 "" H 4500 2000 50  0001 C CNN
	1    4500 2000
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR023
U 1 1 5AB18A3B
P 5200 6500
F 0 "#PWR023" H 5200 6350 50  0001 C CNN
F 1 "VDD" H 5200 6650 50  0000 C CNN
F 2 "" H 5200 6500 50  0001 C CNN
F 3 "" H 5200 6500 50  0001 C CNN
	1    5200 6500
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR024
U 1 1 5AB10939
P 3400 8900
F 0 "#PWR024" H 3400 8750 50  0001 C CNN
F 1 "VDD" H 3400 9050 50  0000 C CNN
F 2 "" H 3400 8900 50  0001 C CNN
F 3 "" H 3400 8900 50  0001 C CNN
	1    3400 8900
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5AB249C6
P 6100 5050
F 0 "R5" V 6000 5150 50  0000 C CNN
F 1 "10K" V 6000 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6030 5050 50  0001 C CNN
F 3 "" H 6100 5050 50  0001 C CNN
	1    6100 5050
	1    0    0    -1  
$EndComp
$Comp
L Antenna AE1
U 1 1 5AB24FDC
P 2000 6100
F 0 "AE1" H 1925 6175 50  0000 R CNN
F 1 "Antenna" H 1925 6100 50  0000 R CNN
F 2 "MyAntennas:AN91445" H 2000 6100 50  0001 C CNN
F 3 "" H 2000 6100 50  0001 C CNN
	1    2000 6100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 5AB287B2
P 5900 5400
F 0 "C8" V 5950 5450 50  0000 L CNN
F 1 "10μF" V 6050 5300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5900 5400 50  0001 C CNN
F 3 "" H 5900 5400 50  0001 C CNN
	1    5900 5400
	0    -1   -1   0   
$EndComp
Text GLabel 5400 5700 0    60   Input ~ 0
MODE
Text GLabel 5400 5400 0    60   Input ~ 0
RST
Text GLabel 4200 8400 2    60   Input ~ 0
MODE
Text GLabel 3400 5800 1    60   Input ~ 0
RST
$Comp
L R R4
U 1 1 5AB29192
P 5700 5050
F 0 "R4" V 5600 5150 50  0000 C CNN
F 1 "10K" V 5600 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5630 5050 50  0001 C CNN
F 3 "" H 5700 5050 50  0001 C CNN
	1    5700 5050
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J3
U 1 1 5AB2C671
P 6200 5500
F 0 "J3" V 6200 5750 50  0000 C CNN
F 1 "TP_TX" V 6200 5850 50  0000 L CNN
F 2 "C_Connectors:C_Connector_2mm" H 6400 5500 50  0001 C CNN
F 3 "" H 6400 5500 50  0001 C CNN
	1    6200 5500
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J5
U 1 1 5AB2EE19
P 6200 5700
F 0 "J5" V 6200 5950 50  0000 C CNN
F 1 "TP_GPIO0" V 6200 6050 50  0000 L CNN
F 2 "C_Connectors:C_Connector_2mm" H 6400 5700 50  0001 C CNN
F 3 "" H 6400 5700 50  0001 C CNN
	1    6200 5700
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J4
U 1 1 5AB2EE99
P 6200 5600
F 0 "J4" V 6200 5850 50  0000 C CNN
F 1 "TP_RX" V 6200 5950 50  0000 L CNN
F 2 "C_Connectors:C_Connector_2mm" H 6400 5600 50  0001 C CNN
F 3 "" H 6400 5600 50  0001 C CNN
	1    6200 5600
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J2
U 1 1 5AB2EF3B
P 6200 5400
F 0 "J2" V 6200 5650 50  0000 C CNN
F 1 "TP_RST" V 6200 5750 50  0000 L CNN
F 2 "C_Connectors:C_Connector_2mm" H 6400 5400 50  0001 C CNN
F 3 "" H 6400 5400 50  0001 C CNN
	1    6200 5400
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J6
U 1 1 5AB2EFE1
P 6200 5800
F 0 "J6" V 6200 6050 50  0000 C CNN
F 1 "TP_GND1" V 6200 6150 50  0000 L CNN
F 2 "C_Connectors:C_Connector_2mm" H 6400 5800 50  0001 C CNN
F 3 "" H 6400 5800 50  0001 C CNN
	1    6200 5800
	0    1    1    0   
$EndComp
$Comp
L TEST_1P J7
U 1 1 5AB30DCC
P 6200 5900
F 0 "J7" V 6200 6150 50  0000 C CNN
F 1 "TP_GND2" V 6200 6250 50  0000 L CNN
F 2 "C_Connectors:C_Connector_2mm" H 6400 5900 50  0001 C CNN
F 3 "" H 6400 5900 50  0001 C CNN
	1    6200 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 2300 4900 2300
Wire Wire Line
	4500 2500 4200 2500
Wire Wire Line
	3100 2000 3200 2000
Wire Wire Line
	3200 2000 3200 2100
Wire Wire Line
	3200 2200 3100 2200
Wire Wire Line
	4200 2400 4600 2400
Wire Wire Line
	4800 2400 4900 2400
Wire Wire Line
	3800 1400 4000 1400
Wire Wire Line
	3800 1300 4200 1300
Wire Wire Line
	4200 1300 4200 1800
Wire Wire Line
	4200 1800 2800 1800
Wire Wire Line
	2800 1800 2800 2300
Wire Wire Line
	2800 2300 3200 2300
Wire Wire Line
	3800 1200 4300 1200
Wire Wire Line
	4300 1200 4300 2100
Wire Wire Line
	4200 2100 5900 2100
Wire Wire Line
	5900 2300 5800 2300
Wire Wire Line
	5800 1700 5800 2100
Wire Wire Line
	5700 1700 7100 1700
Wire Wire Line
	6900 1700 6900 2100
Wire Wire Line
	6900 2100 6800 2100
Wire Wire Line
	6800 2300 6900 2300
Wire Wire Line
	6900 2700 6900 2300
Wire Wire Line
	5400 2700 6900 2700
Wire Wire Line
	5600 2700 5600 2200
Wire Wire Line
	5600 2200 5900 2200
Wire Wire Line
	6800 2200 7100 2200
Connection ~ 4300 2100
Connection ~ 5800 2100
Wire Wire Line
	5500 1700 5400 1700
Wire Wire Line
	6900 2500 7000 2500
Connection ~ 6900 2500
Wire Wire Line
	7200 2500 7400 2500
Connection ~ 5600 2700
Wire Wire Line
	1800 7200 1800 7300
Wire Wire Line
	1400 7200 1400 7300
Wire Wire Line
	3300 4800 3300 6150
Wire Wire Line
	3400 5800 3400 6150
Wire Wire Line
	3500 5300 3500 6150
Wire Wire Line
	3900 5800 3900 6150
Wire Wire Line
	4000 5900 4000 6150
Wire Wire Line
	4100 6000 4100 6150
Wire Wire Line
	3400 7900 3400 7750
Wire Wire Line
	3500 8000 3500 7750
Wire Wire Line
	3600 7750 3600 9000
Wire Wire Line
	3800 7750 3800 9000
Wire Wire Line
	3900 7750 3900 8800
Wire Wire Line
	4000 7750 4000 8600
Wire Wire Line
	4100 8200 4100 7750
Wire Wire Line
	2000 6700 2000 6600
Wire Wire Line
	2000 6700 2600 6700
Wire Wire Line
	2000 6400 2000 6300
Wire Wire Line
	4750 7300 5200 7300
Wire Wire Line
	4750 7100 5600 7100
Wire Wire Line
	4750 7000 5500 7000
Wire Wire Line
	4750 6900 5400 6900
Wire Wire Line
	4750 6800 6100 6800
Wire Wire Line
	4750 6700 5400 6700
Wire Wire Line
	3800 5200 3900 5200
Wire Wire Line
	4000 5325 4000 5500
Wire Wire Line
	4000 4800 4000 5075
Wire Wire Line
	3800 5100 3800 6150
Wire Wire Line
	4100 5200 4200 5200
Wire Wire Line
	4200 5100 4200 5800
Wire Wire Line
	4200 5800 3900 5800
Connection ~ 3800 5200
Connection ~ 4200 5200
Wire Wire Line
	3800 4800 3800 4900
Wire Wire Line
	4200 4800 4200 4900
Wire Wire Line
	5900 7000 6100 7000
Wire Wire Line
	7000 6700 7100 6700
Wire Wire Line
	7000 6900 7200 6900
Wire Wire Line
	7200 6900 7200 7400
Wire Wire Line
	7300 6800 7300 7500
Wire Wire Line
	7300 6800 7000 6800
Wire Wire Line
	7000 7000 7100 7000
Wire Wire Line
	7100 7000 7100 7300
Wire Wire Line
	5500 7000 5500 6700
Wire Wire Line
	5500 6700 6100 6700
Wire Wire Line
	5600 7100 5600 6900
Wire Wire Line
	5600 6900 6100 6900
Wire Wire Line
	5400 6700 5400 6600
Wire Wire Line
	5400 6600 5700 6600
Wire Wire Line
	5700 6600 5700 7300
Wire Wire Line
	5700 7300 7100 7300
Wire Wire Line
	5400 6900 5400 7400
Wire Wire Line
	7300 7500 5300 7500
Wire Wire Line
	5300 7500 5300 7200
Wire Wire Line
	5300 7200 4750 7200
Wire Wire Line
	7200 7400 5700 7400
Wire Wire Line
	2400 6600 2600 6600
Wire Wire Line
	4000 8400 4200 8400
Connection ~ 4000 8400
Wire Wire Line
	4000 8600 4100 8600
Wire Wire Line
	4400 8600 4700 8600
Wire Wire Line
	4100 6000 4400 6000
Wire Wire Line
	4300 5900 4000 5900
Wire Wire Line
	4300 5500 4300 5900
Wire Wire Line
	4300 5500 6200 5500
Wire Wire Line
	6200 5600 4400 5600
Wire Wire Line
	4400 5600 4400 6000
Wire Wire Line
	3900 8800 4100 8800
Wire Wire Line
	4700 8800 4400 8800
Wire Wire Line
	3800 9000 4100 9000
Wire Wire Line
	4400 9000 4700 9000
Wire Wire Line
	4700 9000 4700 9100
Connection ~ 4000 4800
Connection ~ 3800 4800
Wire Wire Line
	3700 8100 3700 7750
Wire Wire Line
	5800 2300 5800 2400
Wire Wire Line
	7400 2500 7400 2600
Wire Wire Line
	5400 1700 5400 1800
Connection ~ 5800 1700
Wire Wire Line
	4900 2300 4900 2500
Connection ~ 4900 2400
Wire Wire Line
	4000 1400 4000 1500
Wire Wire Line
	3800 4000 3800 4100
Wire Wire Line
	5400 2700 5400 2600
Wire Wire Line
	2400 7200 2600 7200
Wire Wire Line
	4700 8500 4700 8800
Connection ~ 4700 8600
Wire Wire Line
	3600 9000 3400 9000
Wire Wire Line
	3400 9000 3400 8900
Wire Wire Line
	7100 2200 7100 2100
Wire Wire Line
	7100 1700 7100 1800
Connection ~ 6900 1700
Wire Wire Line
	2600 2400 3200 2400
Wire Wire Line
	2600 2400 2600 2300
Wire Wire Line
	3800 3800 3800 3700
Wire Wire Line
	7100 6700 7100 6600
Connection ~ 2400 6900
Connection ~ 2400 6800
Wire Wire Line
	1400 6600 1400 7000
Wire Wire Line
	1800 6800 1800 7000
Wire Wire Line
	2400 6900 2600 6900
Wire Wire Line
	1400 6800 2600 6800
Wire Wire Line
	4200 2200 4500 2200
Wire Wire Line
	4500 2000 4500 2500
Connection ~ 4500 2200
Wire Wire Line
	3500 4800 3500 5000
Wire Wire Line
	5400 5700 6200 5700
Wire Wire Line
	4600 4800 4600 4900
Connection ~ 4200 4800
Wire Wire Line
	3300 4800 4600 4800
Connection ~ 3500 4800
Wire Wire Line
	4000 5500 3300 5500
Connection ~ 3300 5500
Wire Wire Line
	6100 4700 6100 4900
Wire Wire Line
	6100 5200 6100 5400
Wire Wire Line
	3600 6150 3600 6000
Wire Wire Line
	5700 4900 5700 4800
Wire Wire Line
	5700 5200 5700 5400
Wire Wire Line
	5400 5400 5800 5400
Connection ~ 5700 5400
Wire Wire Line
	6000 5400 6200 5400
Connection ~ 6100 5400
Wire Wire Line
	5700 4800 6100 4800
Connection ~ 6100 4800
Wire Wire Line
	6200 5800 6100 5800
Wire Wire Line
	6100 5800 6100 6000
Wire Wire Line
	6200 5900 6100 5900
Connection ~ 6100 5900
Wire Wire Line
	2000 8000 3500 8000
Wire Wire Line
	2300 8100 3700 8100
Wire Wire Line
	2600 8200 4100 8200
Wire Wire Line
	5200 7300 5200 6500
$Comp
L GND #PWR025
U 1 1 5AB029B1
P 1800 7300
F 0 "#PWR025" H 1800 7050 50  0001 C CNN
F 1 "GND" H 1800 7150 50  0000 C CNN
F 2 "" H 1800 7300 50  0001 C CNN
F 3 "" H 1800 7300 50  0001 C CNN
	1    1800 7300
	1    0    0    -1  
$EndComp
$Comp
L VBUS #PWR026
U 1 1 5AB412D4
P 5600 3600
F 0 "#PWR026" H 5600 3450 50  0001 C CNN
F 1 "VBUS" H 5600 3750 50  0000 C CNN
F 2 "" H 5600 3600 50  0001 C CNN
F 3 "" H 5600 3600 50  0001 C CNN
	1    5600 3600
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5AB41B9B
P 5850 3700
F 0 "R2" V 5750 3850 50  0000 C CNN
F 1 "17K" V 5750 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5780 3700 50  0001 C CNN
F 3 "" H 5850 3700 50  0001 C CNN
	1    5850 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 3600 5600 3700
Wire Wire Line
	5600 3700 5700 3700
$Comp
L R R3
U 1 1 5AB429EF
P 5850 4100
F 0 "R3" V 5950 4250 50  0000 C CNN
F 1 "33K" V 5950 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5780 4100 50  0001 C CNN
F 3 "" H 5850 4100 50  0001 C CNN
	1    5850 4100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR027
U 1 1 5AB42A87
P 5600 4200
F 0 "#PWR027" H 5600 3950 50  0001 C CNN
F 1 "GND" H 5600 4050 50  0000 C CNN
F 2 "" H 5600 4200 50  0001 C CNN
F 3 "" H 5600 4200 50  0001 C CNN
	1    5600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4100 5600 4200
Wire Wire Line
	5700 4100 5600 4100
Wire Wire Line
	6000 3700 6200 3700
Wire Wire Line
	6200 3700 6200 4100
Wire Wire Line
	6200 4100 6000 4100
Wire Wire Line
	2600 7300 2500 7300
Text GLabel 2500 7300 0    60   Input ~ 0
USB_PWR
Text GLabel 6100 3900 0    60   Input ~ 0
USB_PWR
Wire Wire Line
	6100 3900 6200 3900
Connection ~ 6200 3900
Text Notes 6300 4000 0    60   Italic 0
Check if\nconnected\nto USB
Text GLabel 3100 2600 3    60   Input ~ 0
CHARGE_LED
Text GLabel 1400 9200 3    60   Input ~ 0
CHARGE_LED
Wire Wire Line
	2600 8600 2600 8700
$Comp
L R_Small R11
U 1 1 5AB523B4
P 2300 8500
F 0 "R11" H 2350 8550 50  0000 L CNN
F 1 "?" H 2350 8450 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2300 8500 50  0001 C CNN
F 3 "" H 2300 8500 50  0001 C CNN
	1    2300 8500
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 5AB523BA
P 2300 8850
F 0 "D4" V 2400 8700 50  0000 L CNN
F 1 "LED" V 2300 8650 50  0000 L CNN
F 2 "LEDs:LED_0805_HandSoldering" H 2300 8850 50  0001 C CNN
F 3 "" H 2300 8850 50  0001 C CNN
	1    2300 8850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 8600 2300 8700
$Comp
L R_Small R10
U 1 1 5AB52444
P 2000 8500
F 0 "R10" H 2050 8550 50  0000 L CNN
F 1 "?" H 2050 8450 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2000 8500 50  0001 C CNN
F 3 "" H 2000 8500 50  0001 C CNN
	1    2000 8500
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 5AB5244A
P 2000 8850
F 0 "D3" V 2100 8700 50  0000 L CNN
F 1 "LED" V 2000 8650 50  0000 L CNN
F 2 "LEDs:LED_0805_HandSoldering" H 2000 8850 50  0001 C CNN
F 3 "" H 2000 8850 50  0001 C CNN
	1    2000 8850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 8600 2000 8700
$Comp
L R_Small R9
U 1 1 5AB53852
P 1700 8500
F 0 "R9" H 1750 8550 50  0000 L CNN
F 1 "?" H 1750 8450 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1700 8500 50  0001 C CNN
F 3 "" H 1700 8500 50  0001 C CNN
	1    1700 8500
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 5AB53858
P 1700 8850
F 0 "D2" V 1800 8700 50  0000 L CNN
F 1 "LED" V 1700 8650 50  0000 L CNN
F 2 "LEDs:LED_0805_HandSoldering" H 1700 8850 50  0001 C CNN
F 3 "" H 1700 8850 50  0001 C CNN
	1    1700 8850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 8600 1700 8700
$Comp
L R_Small R8
U 1 1 5AB538EA
P 1400 8500
F 0 "R8" H 1450 8550 50  0000 L CNN
F 1 "?" H 1450 8450 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1400 8500 50  0001 C CNN
F 3 "" H 1400 8500 50  0001 C CNN
	1    1400 8500
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5AB538F0
P 1400 8850
F 0 "D1" V 1500 8700 50  0000 L CNN
F 1 "LED" V 1400 8650 50  0000 L CNN
F 2 "LEDs:LED_0805_HandSoldering" H 1400 8850 50  0001 C CNN
F 3 "" H 1400 8850 50  0001 C CNN
	1    1400 8850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1400 8600 1400 8700
Wire Wire Line
	2600 8200 2600 8400
Wire Wire Line
	2300 8100 2300 8400
Wire Wire Line
	2000 8000 2000 8400
Wire Wire Line
	3400 7900 1700 7900
Wire Wire Line
	1700 7900 1700 8400
Wire Wire Line
	1400 8000 1400 8400
Wire Wire Line
	1700 9000 1700 9400
Wire Wire Line
	2000 9200 2000 9000
Connection ~ 1700 9200
Wire Wire Line
	2300 9200 2300 9000
Connection ~ 2000 9200
Wire Wire Line
	2600 9200 2600 9000
Connection ~ 2300 9200
$Comp
L USB_C_Receptacle J1
U 1 1 5AB61144
P 1400 3200
F 0 "J1" H 1000 4650 50  0000 L CNN
F 1 "USB_C_Receptacle" H 1800 4650 50  0000 R CNN
F 2 "Connectors_USB:USB_C_Receptacle_Amphenol_12401610E4-2A" H 1550 3200 50  0001 C CNN
F 3 "" H 1550 3200 50  0001 C CNN
	1    1400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1900 2100 1900
Wire Wire Line
	2100 1800 2100 2200
Wire Wire Line
	2100 2000 2000 2000
Wire Wire Line
	2100 2100 2000 2100
Connection ~ 2100 2000
Wire Wire Line
	2100 2200 2000 2200
Connection ~ 2100 2100
Wire Wire Line
	1200 4900 1500 4900
Wire Wire Line
	1300 4900 1300 4800
Wire Wire Line
	1400 4900 1400 4800
Connection ~ 1300 4900
Wire Wire Line
	1500 4800 1500 5000
Connection ~ 1400 4900
Connection ~ 2100 1900
$Comp
L VBUS #PWR028
U 1 1 5AB68198
P 2100 1800
F 0 "#PWR028" H 2100 1650 50  0001 C CNN
F 1 "VBUS" H 2100 1950 50  0000 C CNN
F 2 "" H 2100 1800 50  0001 C CNN
F 3 "" H 2100 1800 50  0001 C CNN
	1    2100 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 5AB68E3E
P 1500 5000
F 0 "#PWR029" H 1500 4750 50  0001 C CNN
F 1 "GND" H 1500 4850 50  0000 C CNN
F 2 "" H 1500 5000 50  0001 C CNN
F 3 "" H 1500 5000 50  0001 C CNN
	1    1500 5000
	1    0    0    -1  
$EndComp
NoConn ~ 1100 4800
NoConn ~ 2000 4500
NoConn ~ 2000 4400
NoConn ~ 2000 4200
NoConn ~ 2000 4100
NoConn ~ 2000 3800
NoConn ~ 2000 3900
NoConn ~ 2000 3600
NoConn ~ 2000 3500
NoConn ~ 2000 3300
NoConn ~ 2000 3200
NoConn ~ 2000 3000
NoConn ~ 2000 2900
NoConn ~ 2000 2800
NoConn ~ 2000 2700
NoConn ~ 2000 2400
NoConn ~ 2000 2500
Wire Wire Line
	1200 4800 1200 4900
Connection ~ 1500 4900
Wire Wire Line
	3200 2500 3100 2500
Wire Wire Line
	3100 2500 3100 2600
Wire Wire Line
	1700 9200 2600 9200
Wire Wire Line
	1400 9000 1400 9200
Text Notes 2100 9700 0    60   Italic 0
LED\nInterface
Connection ~ 1800 6800
Wire Wire Line
	2400 6800 2400 7200
Connection ~ 1400 6800
Wire Wire Line
	2400 6000 3700 6000
Connection ~ 2400 6000
Wire Wire Line
	3700 6000 3700 6150
Connection ~ 3600 6000
Wire Wire Line
	2400 6600 2400 6400
Wire Wire Line
	2400 5700 2400 6200
Text Notes 1200 7050 0    30   ~ 0
0805
Text Notes 3900 5450 1    30   ~ 0
±10PPM
Text Notes 3600 5100 3    30   ~ 0
±1%
Text Notes 1300 6400 0    30   ~ 0
>15mil
Text Notes 2300 5500 0    30   ~ 0
>15mil
Text Notes 4600 8300 0    30   ~ 0
>15mil
Text Notes 2200 6250 0    30   ~ 0
0805
Text Notes 1800 6450 0    30   ~ 0
0603\n
Text Notes 1600 7050 0    30   ~ 0
0603\n
Text Notes 3850 4950 0    30   ~ 0
0603\n
Text Notes 4050 4950 0    30   ~ 0
0603\n
Text Notes 5900 5150 1    30   ~ 0
0805\n
Text Notes 5500 7600 0    30   ~ 0
0805
Text Notes 4200 9250 0    30   ~ 0
0805
Text Notes 2900 8550 0    30   ~ 0
0805
Text Notes 2900 8900 0    30   ~ 0
0805
Text Notes 6300 4100 0    30   ~ 0
0805\n
Text Notes 4750 2700 2    30   ~ 0
0805\n
Text Notes 2900 2050 0    30   ~ 0
X5R/X7R\n0805\n
Text Notes 3600 3800 0    30   ~ 0
0805\n
Text Notes 5400 1500 0    30   ~ 0
0805\n
Text Notes 6950 2300 0    30   ~ 0
0805\n
$EndSCHEMATC
