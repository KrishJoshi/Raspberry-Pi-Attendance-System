import sqlite3 as lite
import config
import sys
import datetime


class database: 
    def execute(self, data, execType = "Add"):
        try:
            con = lite.connect('hardwareDB.sqlite')
            if (config.Testing != True):
                print data

            if (execType == 'Add' ):
                cur = con.cursor()  

                cur.executescript(data)
                con.commit()
            else:
                with con:
                    cur = con.cursor()    
                    cur.execute(str(data))

                return cur.fetchall()


                
        except lite.Error, e:
            if con:
                con.rollback()
            if config.Testing:    
                print "Error %s:" % e.args[0]
            
        finally:
            if con:
                con.close() 

    def add(self, tableName, data):
        command = "INSERT INTO " + tableName + " VALUES(" + data + ");"
        self.execute(command, 'Add')


    def find(self ,tableName, lookingFor):
        command = "select * from " + tableName + " where " + lookingFor + ";"
        return self.execute(command, 'Find')

    def remove(self ,tableName, lookingFor):
        command = "DELETE from " + tableName + " where " + lookingFor + ";"
        return self.execute(command, 'Remove')

    def addStudent(self, tag, tagType):
        row = self.add('backlog', '"' + tag + '", "'+ tagType +'", "' + str(currentTime) + '"')
        if (row != []):
            return row
        else:
            return "Not Found"

    def findTag(self, tag, tagType):
        row = self.find('userTags', 'Tag = "'+ tag +'" AND Type = "'+ tagType +'" ')
        if (row != []):
            return row
        else:
            return "Not Found"

    def addTag(self, tag, tagType, studentName, studentId):
        row = self.add('userTags', '"' + tag + '", "'+ tagType +'", "'+ studentId +'", "'+ studentName +'", "' + str(currentTime) + '"')
        if (row != []):
            return row
        else:
            return "Not Found"

    def removeTag(self, tag, tagType):
        row = self.remove('userTags', 'Tag = "'+ tag +'" AND Type = "'+ tagType +'" ')
        if (row != []):
            return row
        else:
            return "Not Found"



if __name__ == '__main__':
    database = database()
    currentTime = datetime.datetime.now()
    #database.add('userTags', '11212000, "barcode", 112100, "Krish Joshi", "' + str(currentTime) + '"')
    tagType = 'nfc'
    tag = "11625010226242"
    studentName = "Krish"
    studentId = "1234"
    database.addTag(tag, tagType, studentName, studentId)
    row = database.findTag(tag, tagType)
    print row
    #row = database.removeTag(tag, tagType)
    #print row