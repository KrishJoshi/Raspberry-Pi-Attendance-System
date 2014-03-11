import config
from db import database
import json
import sys

def find(macAddr):
	 result = database.findTag(macAddr, "mac")
	 if(result == ""):
	 	result = json.getUserTag(macAddr, "mac")
	 	if(result == ""):
	 		return "Not Found"
	 	else:
	 		return result
	 else:
	 	return result

def attend(macAddr):
	result = json.setAttendence(macAddr, "mac")
	if (result['status'] == True):
		return result
	else: 
		return "Not working"

def save(name, studentID, macAddr):
	json.setUserTag(name, macAddr, 'mac')
	database.addTag(macAddr, 'mac', name, studentID)
	return "Saved"

if (sys.argv[1] == "find"):
	result = find(sys.argv[2])

if (sys.argv[1] == "attend"):
	result = attend(sys.argv[2])

if (sys.argv[1] == "save"):
	result = save(sys.argv[2], sys.argv[3], sys.argv[4])

print result