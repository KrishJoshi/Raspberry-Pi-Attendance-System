#!/usr/bin/python

from time import sleep
import datetime
from lcd_hd44780 import lcd_hd44780 as lcd
from MFRC522 import MFRC522 as nfc
import camera
import config
from db import database
import Queue
import threading
import json

''' 
	Funct 	NFC 	LCD
1 	3.3v	3.3V	VCC 
2 	5v 				2
3:
4:
5:
6: 	Ground 	GND 	1 & 16
7:	IO 4 			4
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
22: IO 25 	RST 	
23:	SCK 	SCK
24: CE0 	SDA
25: 
26:
'''

class Hardware:
	def isDeviceActive(self, deviceName):
		return deviceName in config.ActiveDevices

	def isbuttonPressed():
		return input = GPIO.input(17)

	def __init__(self, lcd_pin_rs=4, lcd_pin_e=24, lcd_pins_db=[23, 17, 21, 22], GPIO = None):
	    # TODO: Set modes of both arn't set properly - check NFC before test
	    self.db = database()
	    if(self.isDeviceActive('lcd')):
	    	self.lcd = lcd()

	    if(self.isDeviceActive('nfc')):
	    	self.nfc =  nfc() 
	
	def cleanGPIO():
		GPIO.cleanup()
	
	lastMessage = ""
	def displayMessage(self,text):
		text = text[:10]
		if (self.lastMessage != ""):
			lm = self.lastMessage
			self.lastMessage = text
			text = text + " \n " + lm
			print text
		else:
			self.lastMessage = text
		
		if(self.isDeviceActive('lcd')):
			self.lcd.clear()
			self.lcd.message(text)
		else:
			print ("-- LCD doesn't exist, using print function --")
			print (text)


	shutdown = False
	dataList = ""
	def poolNFC(self, queue):
		if(config.Testing == True):
			print 'NFC Started'
		lastCode = ""
		while (self.shutdown == False):
		  (status,TagType) = self.nfc.MFRC522_Request(self.nfc.PICC_REQIDL)
		  
		  if (status == self.nfc.MI_OK and config.Testing == True):
		    print "Card detected"
		  
		  (status,backData) = self.nfc.MFRC522_Anticoll()
		  if status == self.nfc.MI_OK:
			id = str(backData[0])+str(backData[1])+str(backData[2])+str(backData[3])+str(backData[4])
			if (id != lastCode):
				lastCode = id
				queue.put((id, "nfc")) 
				if(config.Testing == True):
					print "Data found", id


	def poolCamera(self, queue):
		if(config.Testing == True):
			print 'Camera Started'
		lastCode = ""
		while (self.shutdown == False):
			
			data = camera.getBarcode()
			if(data != ""):
				if (data != lastCode):
					lastCode = data
					queue.put((data, "barcode")) 
					#if(config.Testing == True):
						#print ('barcode', data)

	def poolDevices(self):
		#try:
			self.shutdown = False
			replyQueue = Queue.Queue()

			print 'Pool devices'
			if(self.isDeviceActive('nfc') or self.isDeviceActive('camera') ):
				if(self.isDeviceActive('nfc')):
					thread1 = threading.Thread(target=self.poolNFC, args=(replyQueue, ))
					thread1.setDaemon(True)
					thread1.start()
	
				if(self.isDeviceActive('camera')):
					thread2 = threading.Thread(target=self.poolCamera, args=(replyQueue, ))
					thread2.setDaemon(True)
					thread2.start()
	
				endTime = datetime.datetime.now()  + datetime.timedelta(seconds = config.ActiveTime)
		 		currentTime = datetime.datetime.now()
	
				while (currentTime < endTime):
					currentTime = datetime.datetime.now()
					if(replyQueue.empty != True):
						# Data receved from one of the devices

						#get the data
						data, dataType = replyQueue.get()
						#if data not in self.dataList:
						# check for repetition
						if self.dataList != data:
							self.dataList = data

							userData = json.setAttendence(data, dataType)
							# If server isn't avalable to be connected to, store data to the db
							if(userData = "cannot connect"):
								user = self.db.findTag(data, dataType)
								self.db.addTag(data, dataType)
								self.displayMessage("-- Offline --")
								if (user != "not found"):
									self.displayMessage(user[0][3] + ": " + user[0][2])
								else:
									self.displayMessage(dataType + " tag saved")
							else:
								if(userData['status'] != False): # If error happens, display a message otherwise the person's name
									self.displayMessage(userData['name'] + ": " + userData['studentid']) #TODO
								else:
									user = self.db.findTag(data, dataType)
									if (user != "not found"):
										self.displayMessage("Error: " + userData['message'])
									else:
										self.displayMessage(user[0][3] + ": " + userData['message'])
									print userData

				shutdown = True
	
				if(self.isDeviceActive('nfc')):
					thread1.join()
				if(self.isDeviceActive('camera')):
					thread2.join()
				
				self.cleanGPIO()

				if(replyQueue.empty != True and config.Testing == True):
					displayMessage("Queue isn't empty")
			else:
				print ("Camera and NFC reader don't exist")
		#except:
	#		e = sys.exc_info()[0]
#			print e

if __name__ == '__main__':
   	hardware = Hardware()
   	while True:
	   	if(hardware.isbuttonPressed()):
			hardware.poolDevices()
		time.sleep(0.5)
	