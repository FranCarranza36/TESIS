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
L Conn_01x02 J1
U 1 1 5AE71FEC
P 1300 2000
F 0 "J1" H 1300 2100 50  0000 C CNN
F 1 "Conn_01x02" H 1300 1800 50  0000 C CNN
F 2 "Connectors:bornier2" H 1300 2000 50  0001 C CNN
F 3 "" H 1300 2000 50  0001 C CNN
	1    1300 2000
	-1   0    0    1   
$EndComp
$Comp
L D D1
U 1 1 5AE72084
P 2350 1900
F 0 "D1" H 2350 2000 50  0000 C CNN
F 1 "D" H 2350 1800 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2350 1900 50  0001 C CNN
F 3 "" H 2350 1900 50  0001 C CNN
	1    2350 1900
	-1   0    0    1   
$EndComp
$Comp
L D_TVS D2
U 1 1 5AE72115
P 2900 2300
F 0 "D2" H 2900 2400 50  0000 C CNN
F 1 "D_TVS" H 2900 2200 50  0000 C CNN
F 2 "Diodes_THT:D_DO-201_P15.24mm_Horizontal" H 2900 2300 50  0001 C CNN
F 3 "" H 2900 2300 50  0001 C CNN
	1    2900 2300
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 5AE72191
P 2400 2950
F 0 "C1" H 2425 3050 50  0000 L CNN
F 1 "C" H 2425 2850 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 2438 2800 50  0001 C CNN
F 3 "" H 2400 2950 50  0001 C CNN
	1    2400 2950
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5AE72232
P 2900 2750
F 0 "R1" V 2980 2750 50  0000 C CNN
F 1 "R" V 2900 2750 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2830 2750 50  0001 C CNN
F 3 "" H 2900 2750 50  0001 C CNN
	1    2900 2750
	0    1    1    0   
$EndComp
$Comp
L IRF9540N Q1
U 1 1 5AE722E5
P 3500 1900
F 0 "Q1" H 3750 1975 50  0000 L CNN
F 1 "IRF9540N" H 3750 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-247_TO-3P_Vertical" H 3750 1825 50  0001 L CIN
F 3 "" H 3500 1900 50  0001 L CNN
	1    3500 1900
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5AE72344
P 3600 2950
F 0 "R2" V 3680 2950 50  0000 C CNN
F 1 "R" V 3600 2950 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0614_L14.3mm_D5.7mm_P15.24mm_Horizontal" V 3530 2950 50  0001 C CNN
F 3 "" H 3600 2950 50  0001 C CNN
	1    3600 2950
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J2
U 1 1 5AE7287D
P 3600 1100
F 0 "J2" H 3600 1200 50  0000 C CNN
F 1 "Conn_01x02" H 3600 900 50  0000 C CNN
F 2 "Connectors:bornier2" H 3600 1100 50  0001 C CNN
F 3 "" H 3600 1100 50  0001 C CNN
	1    3600 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 1900 2200 1900
Wire Wire Line
	2500 1900 3300 1900
Wire Wire Line
	2900 2150 2900 1900
Connection ~ 2900 1900
$Comp
L Earth #PWR01
U 1 1 5AE72A8A
P 2900 2500
F 0 "#PWR01" H 2900 2250 50  0001 C CNN
F 1 "Earth" H 2900 2350 50  0001 C CNN
F 2 "" H 2900 2500 50  0001 C CNN
F 3 "" H 2900 2500 50  0001 C CNN
	1    2900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2500 2900 2450
Wire Wire Line
	3600 1700 3600 1300
$Comp
L Earth #PWR02
U 1 1 5AE72E80
P 3600 3250
F 0 "#PWR02" H 3600 3000 50  0001 C CNN
F 1 "Earth" H 3600 3100 50  0001 C CNN
F 2 "" H 3600 3250 50  0001 C CNN
F 3 "" H 3600 3250 50  0001 C CNN
	1    3600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2800 3600 2100
Wire Wire Line
	3050 2750 3600 2750
Connection ~ 3600 2750
$Comp
L Earth #PWR03
U 1 1 5AE7334E
P 2400 3250
F 0 "#PWR03" H 2400 3000 50  0001 C CNN
F 1 "Earth" H 2400 3100 50  0001 C CNN
F 2 "" H 2400 3250 50  0001 C CNN
F 3 "" H 2400 3250 50  0001 C CNN
	1    2400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3250 2400 3100
Wire Wire Line
	3600 3250 3600 3100
Wire Wire Line
	2050 2750 2750 2750
Wire Wire Line
	2400 2750 2400 2800
Wire Wire Line
	1500 2000 2050 2000
Wire Wire Line
	2050 2000 2050 2750
Connection ~ 2400 2750
$Comp
L Earth #PWR04
U 1 1 5AE741A1
P 3700 1450
F 0 "#PWR04" H 3700 1200 50  0001 C CNN
F 1 "Earth" H 3700 1300 50  0001 C CNN
F 2 "" H 3700 1450 50  0001 C CNN
F 3 "" H 3700 1450 50  0001 C CNN
	1    3700 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1450 3700 1300
$Comp
L PWR_FLAG #FLG05
U 1 1 5AE744F8
P 4050 1350
F 0 "#FLG05" H 4050 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 4050 1500 50  0000 C CNN
F 2 "" H 4050 1350 50  0001 C CNN
F 3 "" H 4050 1350 50  0001 C CNN
	1    4050 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1350 4050 1400
Wire Wire Line
	4050 1400 3700 1400
Connection ~ 3700 1400
$EndSCHEMATC
