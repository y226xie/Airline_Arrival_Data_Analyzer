from db_operation import db_execute
from subprocess import call
import time
import datetime
from mysql.connector import Error
from animation import trademark_v2

from look_up import *
from utils import user_service_options, yes_options, no_options, service_option1_default_query, service_option2_default_query,service_option2_details_query, service_option3_depature, service_option3_basic_info, service_option3_arrival, months_available, service_option3_depature_in_month, service_option3_arrival_in_month
from helper import continue_or_exit, check_date_format, nice_sql_format, check_for_numbers
from db_operation import db_exit
from .delay_analysis import delay_analysis_logic
from .cancellation_analysis import cancellation_analysis_logic


def usr_logic():
    #take the service option number in loop
    # menu to return to main menu
    # logout to exit
    while 1:
        usr_menu()
        user_option = input("\n which one would you like to check, please enter the corresponding digit: ")
        user_option = check_for_numbers(user_option)
        while user_option == False or user_option < 1 or user_option > 6:
            user_option = input("Please re-enter a valid number: ")
            user_option = check_for_numbers(user_option)
        call(["clear"])

        if user_option == 1:
            time.sleep(0.5)
            option_1()
        elif user_option == 2:
            option_2()
        elif user_option == 3:
            option_3()
        elif user_option == 4:
            delay_analysis_logic()
        elif user_option == 5:
            cancellation_analysis_logic()
        elif user_option == 6:
            break
        else:
            print("Please re-enter valid option")
            return False
    call(["clear"])
    trademark_v2()

def usr_menu():
    print("\n+-----------------------------+")
    print("| Service Options             |")
    print("+-----------------------------+")
    print("| 1. Specific        Flight   |")
    print("| 2. Specific        Route    |")
    print("| 3. Specific        Airport  |")
    print("| 4. Delay time      analysis |")
    print("| 5. Cancellation    analysis |")
    print("| 6. Exit                     |")
    print("+-----------------------------+")

def get_origin():
    origin = input("\nPlease specify the origin airport in 3-letter abbreviation (i.e. GSP): ")
    while airport_look_up(origin) == -1:
        origin = input("\nInvalid! Please specify a valid origin airport in 3-letter abbreviation (i.e. GSP): ")
    return origin

def get_destination():
    destination = input("\nPlease specify the destionation airport in 3-letter abbreviation (i.e. LGA): ")
    while airport_look_up(destination) == -1:
        destination = input("\nInvalid! Please provide a valid destination airport in 3-letter abbreviation (i.e. LGA): ")
    return destination

def get_flight_date():
    flight_date = input("\nPlease specify a valid flight date in YYYY-MM-DD format (i.e. 2020-04-05): ")
    while not check_date_format(flight_date) :
        flight_date = input("\nInvalid! Please specify a valid flight date in YYYY-MM-DD format (i.e. 2020-04-05): ")
    return flight_date

def option_1():
    print("For Flight checking, Please provide the following information: ")

    airline_name = input("\nPlease specify the airline name (i.e. 9E): ")
    while airline_name_look_up(airline_name) == -1:
        airline_name = input("\nInvalid! Please re-enter a valid airline name (i.e. 9E): ")

    flight_number = input("\nPlease specify the flight number (i.e. 4628): ")
    while len(flight_number) > 4:
        flight_number = input("\nThe length of flight number should be less than 5! Please re-enter a valid flight number (i.e. 4628): ")
    
    origin = get_origin()
    destination = get_destination()
    flight_date = get_flight_date()
    query = service_option1_default_query.format(airline_name, flight_number, flight_date, origin, destination)
    des, result = db_execute(query)

    if len(result) == 0:
        print("\nSorry, we cannot find any relevant flight information based on the data you provided!:(")
    else:
        nice_sql_format(result, des)
    
    yes_or_no = continue_or_exit()
    if yes_or_no.lower() in yes_options:
        option_1()
    return


def option_2():
    print("For Route checking, Please provide the following information: ")

    origin = get_origin()
    destination = get_destination()
    query = service_option2_default_query.format(origin, destination)
    res, result = db_execute(query)

    if len(result) == 0:
        print("\nSorry, we cannot find any relevant Route information based on the data you provided!:(")
        yes_or_no = continue_or_exit()
        if yes_or_no.lower() in no_options:
            return usr_logic()
        else: 
            return option_2()
    else:
        nice_sql_format(result, res)
        user_selection_for_continue = input ("\nDo you want to continue for more information or exit? (Y/N) ")
        while user_selection_for_continue.lower() not in yes_options and user_selection_for_continue.lower() not in no_options:
            user_selection_for_continue = input("\n\nDo you want to continue for more information or exit? (Y/N) ")
        
        if user_selection_for_continue.lower() in no_options: 
            return usr_logic()
        else: 
            num_for_details = input("\nWhich route do you want to view for more detailed? ")
            num_for_details = check_for_numbers(num_for_details)
            while num_for_details == False or num_for_details < 1 or num_for_details > len(result):
                num_for_details = input("\nInvalid! Please enter a valid option for view more details: ")
                num_for_details = check_for_numbers(num_for_details)

            parameter = result[num_for_details-1]
            query = service_option2_details_query.format(parameter["Airline_Name"], parameter["Flight_Number"], origin, destination)
            des, detail_result = db_execute(query)
            nice_sql_format(detail_result, des)
            
            yes_or_no = continue_or_exit()
            if yes_or_no.lower() in yes_options:
                option_2()
            return

def fail_to_find_info():
    print("\nSorry, we do not have relevant information for this airport! Please try something else!:(")
    yes_or_no = continue_or_exit()
    if yes_or_no.lower() in no_options:
        return usr_logic()
    else: 
        return option_3()

def option3_menu():
    print("\n+----------------------------------------+")
    print("| Service Options                        |")
    print("+----------------------------------------+")
    print("| 1. Check Airport Throughput for a date |")
    print("| 2. Check Airport Throughput for a month|")
    print("+----------------------------------------+")

def option3_month():
    print("\n+--------------+")
    print("| Month Options|")
    print("+--------------+")
    print("| 1.  2019-09  |")
    print("| 2.  2019-10  |")
    print("| 3.  2019-11  |")
    print("| 4.  2019-12  |")
    print("| 5.  2020-01  |")
    print("| 6.  2020-02  |")
    print("| 7.  2020-03  |")
    print("| 8.  2020-04  |")
    print("| 9.  2020-05  |")
    print("| 10. 2020-06  |")
    print("| 11. 2020-07  |")
    print("| 12. 2020-08  |")
    print("| 13. 2020-09  |")
    print("+--------------+")

def option_3(): 
    print("For Airport checking, Please provide the following information: ")

    option3_menu()
    user_option = input("\nWhich option would you like to choose, please enter the corresponding digit: ")
    user_option = check_for_numbers(user_option)
    while user_option == False or user_option < 1 or user_option > 2:
        user_option = input("Please re-enter a valid number: ")
        user_option = check_for_numbers(user_option)
    
    airport = input("\nPlease specify the name of the airport that you interested in 3-letter abbreviation (i.e. GSP): ")
    while airport_look_up(airport) == -1:
        airport = input("\nInvalid! Please specify a valid airport in 3-letter abbreviation (i.e. GSP): ")
        airport = airport.upper()

    general_info = ''
    query2 = ''
    query3 = ''
    if user_option == 1:
        flight_date = get_flight_date()
        general_info = "\nThese are the statistics relates to the Airport {} and the Flight_date {}: ".format(airport, flight_date)
        query2 = service_option3_depature.format(airport, flight_date)
        query3 = service_option3_arrival.format(airport,flight_date)
    else :
        option3_month()
        option = input("\nWhich option would you like to view, please enter the corresponding digit: ")
        option = check_for_numbers(option)
        while option == False or option < 1 or option > 13:
            option = input("Please re-enter a valid number: ")
            option = check_for_numbers(option)
        
        year = months_available[option-1][0]
        month = months_available[option-1][1]
        general_info = "\nThese are the statistics relates to the Airport {} at Year {} and Month {}: ".format(airport, year, month)
        query2 = service_option3_depature_in_month.format(airport, int(year), int(month))
        query3 = service_option3_arrival_in_month.format(airport, int(year), int(month))

    query1 = service_option3_basic_info.format(airport)
    des1, result1 = db_execute(query1)

    if len(result1) == 0 :  
        fail_to_find_info()
    else :
        print("\n====== The Airport {} is located at {}. ======".format(airport, result1[0]["City"]))
        des2, result2 = db_execute(query2)
        des3, result3 = db_execute(query3)
        if len(result2) < 2 or len(result3) < 0:
            fail_to_find_info()
        else: 
            num_of_scheduled = result2[0]["total"]
            num_of_cancelled_dep = result2[1]["total"]
            num_of_delayed_dep = result2[2]["total"]
            num_of_ontime_dep = num_of_scheduled - num_of_cancelled_dep - num_of_delayed_dep

            num_of_arrive = result3[0]["total"]
            num_of_cancelled_arr = result3[1]["total"]
            num_of_delayed_arr = result3[2]["total"]
            num_of_ontime_arr = num_of_arrive - num_of_cancelled_arr - num_of_delayed_arr
            
            result1 = ""
            result3 = ""
            if user_option == 1: 
                result1 = "\n1. At the date {}, there are {} flights scheduled to depature from {} airport.".format(flight_date, num_of_scheduled, airport)
                result3 = "\n3. At the date {}, there are {} flights scheduled to arrive at {} airport.".format(flight_date, num_of_arrive, airport)
            else :
                result1 = "\n1. At the Year {} Month {}, there are {} flights scheduled to depature from {} airport.".format(year, month, num_of_scheduled, airport)
                result3 ="\n3. At the Year {} Month {}, there are {} flights scheduled to arrive at {} airport.".format(year, month, num_of_arrive, airport)
            
            print(result1)
            print("\n2. In these {} flights, there are {} flights are depatured on time, {} flights are delayed, and {} flights are cancelled.".format(num_of_scheduled, num_of_ontime_dep, num_of_delayed_dep, num_of_cancelled_dep))
            print(result3)
            print("\n4. In these {} flights, there are {} flights are arrived on time, {} flights are delayed, and {} flights are cancelled.".format(num_of_scheduled, num_of_ontime_arr, num_of_delayed_arr, num_of_cancelled_arr))
            print("\n======================= END of Report =====================")

            yes_or_no = continue_or_exit()
            if yes_or_no.lower() in yes_options:
                option_3()
            return

