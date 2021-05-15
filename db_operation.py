import mysql.connector 
from mysql.connector import Error

from config import config

def db_connect():
    try:
        db = mysql.connector.connect(**config)
        return db
        #print("Connection Successful\n")
    except:
        print("Failure ,check config again!\n")
        return

def db_exit(db):
    db.close()
    print("\ndatabase connection closed\n")

def db_execute(query):
    cursor = db_connection.cursor(dictionary=True, buffered=True)
    try:
        if("SELECT" in query or "DESCRIBE" in query or "SHOW" in query or "select" in query or "describe" in query or "show" in query): # enter viewing mode
            cursor.execute(query)
            return cursor.description, cursor.fetchall()
        else: # enter modifying mode
            cursor.execute(query)
            db_connection.commit()
            print("Query Committed Successfully")
            return dict(), dict()
    except Error as e:
        print(f"Error: '{e}'")

db_connection = db_connect()

# def admin_query_opeartion(query):
#     cursor = db_connection.cursor()
#     if(query == 'exit db'):
#         return db_exit(db_connection)
#     try:
#         if("SELECT" or "DESCRIBE" or "SHOW" in query): # enter viewing mode
#             cursor.execute(query)
#             print(cursor.fetchall()) 
#         else: # enter modifying mode
#             cursor.execute(query)
#             db_connection.commit()
#             print("Query Changes Committed Successfully")
#     except Error as e:
#         print(f"The error '{e}' occurred")