#!/usr/bin/python

from time import sleep
from lcd_hd44780 import lcd_hd44780 as lcd
from MFRC522 import MFRC522 as nfc
import camera
import configurations
from db import database

''' 
	Funct 	NFC 	LCD
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
22: IO 25 	RST 	4 
23:	SCK 	SCK
24: CE0 	SDA
25: 
26:
'''

class Hardware:
	def isDeviceActive(deviceName):
		return deviceName in ActiveDevices

	def __init__(self, lcd_pin_rs=4, lcd_pin_e=24, lcd_pins_db=[23, 17, 21, 22], GPIO = None):
	    # TODO: Set modes of both arn't set properly - check NFC before test
	    if(isDeviceActive('lcd')):
	    	self.lcd = lcd()

	    if(isDeviceActive('nfc')):
	    	self.nfc =  nfc() 
	
	def cleanGPIO():
		GPIO.cleanup()
	
	def displayMessage(self,text):
		if(isDeviceActive('lcd')):
			self.lcd.clear()
			self.lcd.message(text)
		else:
			print ("LCD doesn't exist, using print function")
			print (text)

	shutdown = False
	dataList = []
	def poolNFC(self, queue):
		while (shutdown == False):
		  (status,TagType) = self.nfc.MFRC522_Request(self.nfc.PICC_REQIDL)
		  
		  if status == self.nfc.MI_OK && testing == True:
		    print "Card detected"
		  
		  (status,backData) = self.nfc.MFRC522_Anticoll()
		  if status == self.nfc.MI_OK:
			 id = str(backData[0])+str(backData[1])+str(backData[2])+str(backData[3])+str(backData[4])
			 queue.put(id, "RFID") 


	def poolCamera(self, queue):
		while (shutdown == False):
			data = camera.getBarcode()
			if(data != ""):
				queue.put(data, "Barcode") 

	def poolDevices(self):

		shutdown = False
		replyQueue = Queue.Queue()

		if(isDeviceActive('nfc') || isDeviceActive('camera') ):
			if(isDeviceActive('nfc')):
				thread1 = threading.Thread(poolNFC(self, my_queue))
				thread1.start()

			if(isDeviceActive('camera')):
				thread2 = threading.Thread(getBarcode(self, my_queue))
				thread2.start()

			endTime = datetime.datetime.now()  + datetime.timedelta(minutes = ActiveTime)
	 		currentTime = datetime.datetime.now()

	 		
			while (currentTime < endTime):
				currentTime = datetime.datetime.now()
				if(!replyQueue.empty):
					data, dataType = queue.get()
					if data not in dataList:
						dataList.append(data)
						displayMessage(dataType + ": " + data)

					
			shutdown = True

			thread1.join()
			thread2.join()
			
			if(!replyQueue.empty):
				if(testing):
					displayMessage("Queue isn't empty")
		else
			print ("Camera and NFC reader doesn't exist")
			

if __name__ == '__main__':
   	hardware = Hardware()
	id = hardware.poolNFC()
	if id == '63109129125174':
		message = "ID Found"
	else:
		message = 'ID Not Found'
	hardware.displayMessage(id + '\n' + message)
	