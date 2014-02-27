import simplejson
import urllib2
#GET	/recipes.format		RecipesController::index()
#GET	/recipes/123.format	RecipesController::view(123)
#POST	/recipes.format		RecipesController::add()
#PUT	/recipes/123.format	RecipesController::edit(123)
#DELETE	/recipes/123.format	RecipesController::delete(123)
#POST	/recipes/123.format	RecipesController::edit(123)

# url = "http://localhost:8080"
# data = {'sender': 'Alice', 'receiver': 'Bob', 'message': 'We did it!'}
# headers = {'Content-type': 'application/json', 'Accept': 'text/plain'}
# r = requests.post(url, data=json.dumps(data), headers=headers)


baseUrl = "https://web.cs.manchester.ac.uk/mbax9kj2/"
urlPath = ""
def createUrlPath(ControlName, Action, Information = ""):
	urlPath = "/" + ControlName + "/" + Action

def requestServer(url):
	return urllib2.urlopen(url)
	
def parseJson():
	data = simplejson.load(response) 
	return data

def printJson(data):
	print data

def get(ControlName, Action):
	

if __name__ == '__main__':

	  
	