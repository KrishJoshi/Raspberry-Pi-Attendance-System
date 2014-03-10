import simplejson
import urllib2
import config
#GET	/recipes.format		RecipesController::index()
#GET	/recipes/123.format	RecipesController::view(123)
#POST	/recipes.format		RecipesController::add()
#PUT	/recipes/123.format	RecipesController::edit(123)
#DELETE	/recipes/123.format	RecipesController::delete(123)
#POST	/recipes/123.format	RecipesController::edit(123)

#/lab/nastasia/AttendanceSystem/user_tags/add.json?username=7841760&tag=100010010&tag_type=nfc 

#1) JSON format for user_tag add is(adding an user tag)

#/user_tags/add.json?username=7841760&tag=100010010&tag_type=nfc

#URL:
#/lab/nastasia/AttendanceSystem/user_tags/add.json?username=7841760&tag=100010010&tag_type=nfc


#2) Format for adding attendance
#/attendances/add/?tag_id=10&tag=100010010&room=IT%20407&tag_type=nfc

# url = "http://localhost:8080"
# data = {'sender': 'Alice', 'receiver': 'Bob', 'message': 'We did it!'}
# headers = {'Content-type': 'application/json', 'Accept': 'text/plain'}
# r = requests.post(url, data=json.dumps(data), headers=headers)



def createUrlPath(ControlName, Action, Information = ""):
	urlPath = config.ServerName + "/" + ControlName + "/" + Action + ".json?" + Information
	return urlPath
	
def parseJson(response):
	data = simplejson.load(response) 
	return data

def printJson(data):
	print data['message']

def requestServer(url):
	return urllib2.urlopen(url)

def setAttendence(tag, tag_type):
	data = "tag_id=" + tag + "&room="+ config.RoomNumber + "&tag_type=" + tag_type
	jsonData = parseJson(requestServer(createUrlPath("attendances", "add", data)))

	return jsonData

def setUserTag(username, tag, tag_type):
	data = "username=" + username + "&tag=" + tag + "&tag_type=" + tag_type
	jsonData = parseJson(requestServer(createUrlPath("user_tags", "add", data)))
	return jsonData

if __name__ == '__main__':
	jsonData = setAttendence("7", "nfc")
	printJson(jsonData)

