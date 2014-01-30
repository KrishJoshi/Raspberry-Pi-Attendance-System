#!/usr/bin/python

from time import sleep
from lcd_hd44780 import lcd_hd44780 as lcd
from MFRC522 import MFRC522 as nfc
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

class Hardware:
	def __init__(self, lcd_pin_rs=4, lcd_pin_e=24, lcd_pins_db=[23, 17, 21, 22], GPIO = None):
	    # TODO: Set modes of both arn't set properly - check NFC before test
	    self.lcd = lcd()
	    self.nfc =  nfc() 
	
	
	def cleanGPIO():
		GPIO.cleanup()
	
	def displayMessage(self,text):
		self.lcd.clear()
		self.lcd.message(text)

	
	def poolNFC(self):
		continue_reading = True
		while continue_reading:
		  (status,TagType) = self.nfc.MFRC522_Request(self.nfc.PICC_REQIDL)
		  
		  if status == self.nfc.MI_OK:
		    print "Card detected"
		  
		  (status,backData) = self.nfc.MFRC522_Anticoll()
		  if status == self.nfc.MI_OK:
			 id = str(backData[0])+str(backData[1])+str(backData[2])+str(backData[3])+str(backData[4])
 			 continue_reading = False
			 return id

	def getBarcode(self):
		import os
		p=os.popen('zbarcam --nodisplay','r')
		print 'scanning'
		while True:
		        barcode = p.readline()
		        print 'Got barcode:', barcode
		        #The returned code is made up of 2 parts, the type : data
		        type = barcode.split(':')[0]
		        print type +' '
		        code = barcode.split(':')[1]
		        print code +' '+str(len(code))
	
if __name__ == '__main__':
   	hardware = Hardware()
	id = hardware.poolNFC()
	if id == '63109129125174':
		message = "ID Found"
	else:
		message = 'ID Not Found'
	hardware.displayMessage(id + '\n' + message)
	