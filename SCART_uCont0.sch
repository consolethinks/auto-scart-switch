EESchema Schematic File Version 2
LIBS:scart_switch-rescue
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
LIBS:74xgxx
LIBS:switches
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:microchip_dspic33dsc
LIBS:microchip_pic16mcu_modded
LIBS:cbt3245
LIBS:scart_switch-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1675 1875 0    60   Input ~ 0
Vcc
Text HLabel 1750 4125 0    60   Input ~ 0
GND
Text HLabel 4025 1875 2    60   Input ~ 0
SC0
Text HLabel 4025 1975 2    60   Input ~ 0
SC1
Text HLabel 4025 2075 2    60   Input ~ 0
SC2
Text HLabel 4025 2175 2    60   Input ~ 0
SC3
Text HLabel 4025 2275 2    60   Input ~ 0
SC4
Text HLabel 4025 2375 2    60   Input ~ 0
SC5
Text HLabel 4025 2475 2    60   Input ~ 0
SC6
$Comp
L ATMEGA328P-PU U?
U 1 1 59D0C069
P 2825 2975
F 0 "U?" H 2075 4225 50  0000 L BNN
F 1 "ATMEGA328P-PU" H 3225 1575 50  0000 L BNN
F 2 "DIL28" H 2825 2975 50  0001 C CIN
F 3 "" H 2825 2975 50  0001 C CNN
	1    2825 2975
	1    0    0    -1  
$EndComp
Text HLabel 4025 2575 2    60   Input ~ 0
SC7
Text HLabel 4025 2725 2    60   Input ~ 0
LED0
Text HLabel 4025 2825 2    60   Input ~ 0
LED1
Text HLabel 4025 2925 2    60   Input ~ 0
LED2
Text HLabel 4025 3025 2    60   Input ~ 0
LED3
Text HLabel 4025 3125 2    60   Input ~ 0
LED4
Text HLabel 4025 3225 2    60   Input ~ 0
LED5
Text HLabel 4025 3325 2    60   Input ~ 0
LED6
$Comp
L SW_Push SW2
U 1 1 59D2AD08
P 5650 3525
F 0 "SW2" H 5700 3625 50  0000 L CNN
F 1 "SW_Push" H 5650 3465 50  0000 C CNN
F 2 "" H 5650 3725 50  0001 C CNN
F 3 "" H 5650 3725 50  0001 C CNN
	1    5650 3525
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59D2D04F
P 6000 3525
F 0 "#PWR?" H 6000 3375 50  0001 C CNN
F 1 "+5V" H 6000 3665 50  0000 C CNN
F 2 "" H 6000 3525 50  0001 C CNN
F 3 "" H 6000 3525 50  0001 C CNN
	1    6000 3525
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 59D2D09E
P 5650 3725
F 0 "C?" H 5675 3825 50  0000 L CNN
F 1 "C" H 5675 3625 50  0000 L CNN
F 2 "" H 5688 3575 50  0001 C CNN
F 3 "" H 5650 3725 50  0001 C CNN
	1    5650 3725
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59D2D21C
P 5300 3525
F 0 "R?" V 5380 3525 50  0000 C CNN
F 1 "R" V 5300 3525 50  0000 C CNN
F 2 "" V 5230 3525 50  0001 C CNN
F 3 "" H 5300 3525 50  0001 C CNN
	1    5300 3525
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 4075 1750 4175
Wire Wire Line
	1750 4075 1925 4075
Wire Wire Line
	1750 4175 1925 4175
Wire Wire Line
	3825 1875 4025 1875
Wire Wire Line
	3825 1975 4025 1975
Wire Wire Line
	3825 2075 4025 2075
Wire Wire Line
	3825 2175 4025 2175
Wire Wire Line
	3825 2275 4025 2275
Wire Wire Line
	3825 2375 4025 2375
Wire Wire Line
	3825 2475 4025 2475
Wire Wire Line
	1675 1875 1925 1875
Wire Wire Line
	3825 2575 4025 2575
Wire Wire Line
	1800 1875 1800 2175
Wire Wire Line
	1800 2175 1925 2175
Connection ~ 1800 1875
Wire Wire Line
	3825 2725 4025 2725
Wire Wire Line
	3825 2825 4025 2825
Wire Wire Line
	3825 2925 4025 2925
Wire Wire Line
	3825 3025 4025 3025
Wire Wire Line
	3825 3125 4025 3125
Wire Wire Line
	3825 3225 4025 3225
Wire Wire Line
	3825 3325 4025 3325
Wire Wire Line
	6000 3525 5850 3525
Wire Wire Line
	5800 3725 5925 3725
Wire Wire Line
	5925 3725 5925 3525
Connection ~ 5925 3525
Wire Wire Line
	5500 3725 5050 3725
Wire Wire Line
	5050 3725 5050 3525
Connection ~ 5050 3525
$Comp
L GND #PWR?
U 1 1 59D2D41A
P 4875 3750
F 0 "#PWR?" H 4875 3500 50  0001 C CNN
F 1 "GND" H 4875 3600 50  0000 C CNN
F 2 "" H 4875 3750 50  0001 C CNN
F 3 "" H 4875 3750 50  0001 C CNN
	1    4875 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3525 4800 3525
$EndSCHEMATC
