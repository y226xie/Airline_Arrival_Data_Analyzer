#!pip3 install mysql-connector-python
#!pip3 install ipynb
#!pip install alive-progress

#!/usr/bin/env python
# coding: utf-8

import datetime
import mysql.connector 
import getpass
from subprocess import call

from db_operation import db_connection, db_exit
from admin.admin import admin_logic
from user.user import usr_logic
from animation import progress_bar, trademark, trademark_v2

# Constants Settings
#### USER INFO PRESET
tester1_privileged_id = "admin"
tester1_privileged_pwsd = "admin"

tester2_normal_id = "user"
tester2_normal_pwsd = "user"

# tester2_normal_id = "draco"
# tester2_normal_pwsd = "f27gao"

# tester3_normal_id = "wendy"
# tester3_normal_pwsd = "y226xie"

super_admin = False

_OWNER = 3
_ADMIN = 2
_USER = 1



'''
Options available:
# regular 
1 specific flight check with details   EG: late/cancelled, duration, ORIGIN/DEST location
2 specific airport check               EG: daily throughput, total number of flights in/out
3 same flight routes check             EG: avg late time/cancel rate 
#                       >>data mining scale 
4 covid impact                         EG: total amount of flights reduced
5 study of cancellation reasons based on flight/airport distribution
'''

def login(super_admin = False):
    if(not super_admin):
        usr_id = input("\nUser ID:    ")
        usr_pswd = getpass.getpass("User password: ")
        if(usr_id == tester1_privileged_id and usr_pswd == tester1_privileged_pwsd):
            print("\n\n\nWelcome to Administration Panel, Boss!")
            return _ADMIN
        elif(usr_id == tester2_normal_id and usr_pswd == tester2_normal_pwsd):
            print("\n\n\nWelcome to Airline Info Checking Panel, Mr.user!")
        else:
            print("\n\n\nLogin failed due to wrong login credentials, please try again.")
            return False
        return _USER

def logout(db):
    db_exit(db)
    print("Logged out, See you next time!")


def main():
    # login
    login_status = 0
    print("\n\n")
    print("Welcome to Airline Database System!\n")
    print("You have the options to check the specific flight info, to update/add/remove the existing or new flight info.")
    print("\n\n\n\n\n\n     ======  Please Login as Admin if you want to update the records       ======")
    print("     ======  Please Login as Customer if you want to view the flight info  ======\n\n\n\n\n\n")

    while 1:
        login_status = login()
    # enter database only with successful login
        if login_status == _USER or login_status == _ADMIN:
            break
    
    trademark()
    progress_bar() # artifical delay 
    if db_connection == None:
        print("\n Failed to connect to database, please check db credentials")
        return
    if(login_status == _USER):
        usr_logic()
        logout(db_connection)
    elif(login_status == _ADMIN):
        admin_logic()
        call(["clear"])
        trademark_v2()
        logout(db_connection)
    

if __name__ == '__main__':
    
    main()


