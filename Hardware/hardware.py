#!/usr/bin/python

from time import sleep
import lcd_hd44780
import RPi.GPIO as GPIO
import MFRC522
''' Funct 	NFC 	LCD
1 	3.3v	3.3V	VCC 
2 	5v 				2
3:
4:
5:
6: 	Ground 	GND 	1 & 16
7:	IO 4
8:
9:
10:
11: IO 17  			12
12: IO 18
13: IO 21 			13
14: 
15: IO 22 			14
16: IO 23 			11
17:
18: IO 24 			6
19: MOSI 	MOSI 	
20:
21: MISO 	MISO
22: IO 25 	RST 	4 (FIX)
23:	SCK 	SCK
24: CE0 	SDA
25: 
26:
'''


def __init__(self, lcd_pin_rs=25, lcd_pin_e=24, lcd_pins_db=[23, 17, 21, 22], GPIO = None):
    self.GPIO = GPIO
    self.lcd = lcd_hd44780(lcd_pin_rs, lcd_pin_e, lcd_pins_db, GPIO)
    self.nfc =  MFRC522() 
    

    self.clear()

def cleanGPIO():
	GPIO.cleanup()

def displayMessage(text):
	lcd.dis



def poolNFC():
	while  continue_reading:
  		(Status, TagType) =  nfc.MFRC522_Request (nfc.PICC_REQIDL)
  
		if  status = =  nfc.MI_OK:
			print  "Card detected"

		(Status, Backdata) =  nfc.MFRC522_Anticoll ()
		if  status = =  nfc.MI_OK:
			print  "Number of the card: " + str (backData[ 0 ]) + "," + str (backData[ 1 ]) + "," + str (backData[ 2 ]) + "," + str (backData[ 3 ]) + "," + str (backData[ 4 ])

