import simplejson
import urllib2
import config

#/lab/nastasia/AttendanceSystem/user_tags/add.json?username=7841760&tag=100010010&tag_type=nfc 

#1) JSON format for user_tag add is(adding an user tag)

#/user_tags/add.json?username=7841760&tag=100010010&tag_type=nfc

#URL:
#/lab/nastasia/AttendanceSystem/user_tags/add.json?username=7841760&tag=100010010&tag_type=nfc


#2) Format for adding attendance
#/attendances/add/?tag_id=10&tag=100010010&room=IT%20407&tag_type=nfc



def createUrlPath(ControlName, Action, Information = ""):
	urlPath = config.ServerName + "/" + ControlName + "/" + Action + ".json?" + Information
	return urlPath
	
def parseJson(response):
	data = simplejson.load(response) 
	return data

def printJson(data):
	print data

def requestServer(url):
	return urllib2.urlopen(url)

def sendData(path):
	try:
		return parseJson(requestServer(path))
	except:
		print 'cannot connect to server on ' + path
		return "cannot connect"

def setAttendence(tag, tag_type):
	data = "tag_id=" + tag + "&room="+ config.RoomNumber + "&tag_type=" + tag_type
	jsonData = sendData(createUrlPath("attendances", "add", data))
	return jsonData


def setUserTag(username, tag, tag_type):
	data = "username=" + username + "&tag=" + tag + "&tag_type=" + tag_type
	jsonData = sendData(createUrlPath("user_tags", "add", data))
	return jsonData

def getUserTag(tag, tag_type):
	data = "tag=" + tag + "&tag_type=" + tag_type
	jsonData = sendData(createUrlPath("user_tags", "add", data))
	return jsonData

if __name__ == '__main__':
	jsonData = setAttendence("7", "nfc")
	if(jsonData['status'] != False):
		printJson(jsonData)
	else:
		print "Error: " + jsonData['message']

