EESchema Schematic File Version 2
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
LIBS:ESP8266
LIBS:w25q-flash
LIBS:2018-03-08 Intercourse 01-cache
EELAYER 25 0
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
L ESP8266EX U?
U 1 1 5AA18962
P 4700 3150
F 0 "U?" H 3800 3850 60  0000 C CNN
F 1 "ESP8266EX" H 3850 3750 60  0000 C CNN
F 2 "" H 3800 3850 60  0000 C CNN
F 3 "" H 3800 3850 60  0000 C CNN
	1    4700 3150
	1    0    0    -1  
$EndComp
$Comp
L W25Q32FVSSIG U?
U 1 1 5AA80D1D
P 6950 2950
F 0 "U?" H 6950 3300 60  0000 C CNN
F 1 "W25Q32FVSSIG" H 6950 2600 60  0000 C CNN
F 2 "" H 6950 2950 60  0001 C CNN
F 3 "" H 6950 2950 60  0001 C CNN
	1    6950 2950
	1    0    0    -1  
$EndComp
Text Label 7400 2800 0    60   ~ 0
VCC
Text Label 6500 3100 2    60   ~ 0
GND
Wire Wire Line
	6500 2800 6100 2800
Wire Wire Line
	6100 2800 6100 3200
Wire Wire Line
	6100 3200 5700 3200
Wire Wire Line
	6500 2900 5850 2900
Wire Wire Line
	5850 2900 5850 3000
Wire Wire Line
	5850 3000 5700 3000
Wire Wire Line
	6500 3000 5900 3000
Wire Wire Line
	5900 3000 5900 3300
Wire Wire Line
	5900 3300 5700 3300
Wire Wire Line
	7400 2900 7750 2900
Wire Wire Line
	7750 2900 7750 3400
Wire Wire Line
	7750 3400 5700 3400
$Comp
L R R?
U 1 1 5AA80070
P 6950 3500
F 0 "R?" V 7030 3500 50  0000 C CNN
F 1 "200" V 6950 3500 50  0000 C CNN
F 2 "" V 6880 3500 50  0001 C CNN
F 3 "" H 6950 3500 50  0001 C CNN
	1    6950 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 3000 7650 3000
Wire Wire Line
	7650 3000 7650 3500
Wire Wire Line
	7650 3500 7100 3500
Wire Wire Line
	6800 3500 6000 3500
Wire Wire Line
	6000 3500 6000 3100
Wire Wire Line
	6000 3100 5700 3100
Wire Wire Line
	7400 3100 7800 3100
Wire Wire Line
	7800 3100 7800 2500
Wire Wire Line
	7800 2500 5800 2500
Wire Wire Line
	5800 2500 5800 2900
Wire Wire Line
	5800 2900 5700 2900
$EndSCHEMATC
