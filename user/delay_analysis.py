from db_operation import db_execute
from helper import nice_sql_format, continue_or_exit
from utils import yes_options, no_options
# from .user import usr_logic

def delay_analysis_logic():
    print("\nFor delay analysis, please provide the following information:")
    selection = get_delay_analysis_option()
    get_delay_info(selection)
    return

def get_delay_analysis_option():
    print("\n+------------------------------+")
    print("| Delay Analysis Option        |")
    print("+------------------------------+")
    print("| 1. By Origin and Destination |")
    print("| 2. By Airline                |")
    print("+------------------------------+")

    while 1:
        selection = deplay_option_selection()
        if selection != 1 and selection != 2:
            print("Invalid option selected!")
        else:
            return selection

def deplay_option_selection():
    option_selection_str = input("\nPlease select the option you want to analyze for: ")
    if not option_selection_str.isdigit():
        command = 0
    else:
        command = int(option_selection_str)
    return command

def get_delay_info(command):
    '''
    Info we need to provide:
        deplay ratio 
        average deplayed minutes per flight 
        Delayed minutes due to different causes

    '''
    # Analyze by origin and destination (e.g. origin = "GSP", dest = "LGA")
    if command == 1:
        origin = input("\nPlease specify the value of orgin in 3-letter abbreviation (i.e. GSP): ")
        destination = input("\nPlease specify the value of destination in 3-letter abbreviation (i.e. LGA): ")

        query_general = "With TotalFlights AS (SELECT count(*) as number_of_Total_Flights FROM Flight WHERE Origin = '{}' and Dest = '{}'), DelayedFlights AS (SELECT count(*) as number_of_Delayed_Flights, SUM(ArrDelayMinutes) as Total_Delayed_Minutes FROM Flight WHERE Origin = '{}' and Dest = '{}' and isDelayed = '1') SELECT a.number_of_Total_Flights, b.number_of_Delayed_Flights, b.number_of_Delayed_Flights/a.number_of_Total_Flights as Delay_Ratio, b.Total_Delayed_Minutes, b.Total_Delayed_Minutes/a.number_of_Total_Flights as Avg_Delayed_Minutes_per_Flight FROM TotalFlights as a JOIN DelayedFlights as b;".format(origin, destination, origin, destination)

        detailed_query = "With DelayedFlight As (SELECT * FROM Flight WHERE Origin = '{}' and Dest = '{}' and isDelayed = '1') SELECT SUM(Carrier_Delay) AS Carrier_Delay, SUM(Weather_Delay) AS Weather_Delay, SUM(NAS_Delay) AS NAS_Delay, SUM(Security_Delay) AS Security_Delay, SUM(LateAircraft_Delay) AS LateAircraft_Delay FROM Cause_of_Delay as a INNER JOIN DelayedFlight b ON a.Airline_Name = b.Airline_Name and a.Tail_Number = b.Tail_Number and a.Flight_Number = b.Flight_Number and a.Flight_Date = b.Flight_Date and a.Origin = b.Origin;".format(origin, destination)

    # Analyze by airline number (e.g. airline_name = "9E")
    elif command == 2:
        airline_name = input("\nPlease specify the value of Airline_Name (i.e. B6): ")

        query_general = "With TotalFlights AS (SELECT count(*) as number_of_Total_Flights FROM Flight WHERE Airline_Name = '{}'), DelayedFlights AS (SELECT count(*) as number_of_Delayed_Flights, SUM(ArrDelayMinutes) as Total_Delayed_Minutes FROM Flight WHERE Airline_Name = '{}' and isDelayed = '1') SELECT a.number_of_Total_Flights, b.number_of_Delayed_Flights, b.number_of_Delayed_Flights/a.number_of_Total_Flights as Delay_Ratio, b.Total_Delayed_Minutes, b.Total_Delayed_Minutes/a.number_of_Total_Flights as Avg_Delayed_Minutes_per_Flight FROM TotalFlights as a JOIN DelayedFlights as b;".format(airline_name, airline_name)

        detailed_query = "With DelayedFlight As (SELECT * FROM Flight WHERE Airline_Name = '{}' and isDelayed = '1') SELECT SUM(Carrier_Delay) AS Carrier_Delay, SUM(Weather_Delay) AS Weather_Delay, SUM(NAS_Delay) AS NAS_Delay, SUM(Security_Delay) AS Security_Delay, SUM(LateAircraft_Delay) AS LateAircraft_Delay FROM Cause_of_Delay as a INNER JOIN DelayedFlight b ON a.Airline_Name = b.Airline_Name and a.Tail_Number = b.Tail_Number and a.Flight_Number = b.Flight_Number and a.Flight_Date = b.Flight_Date and a.Origin = b.Origin;".format(airline_name)

    print("\n================= General Delay Information ================== \n")
    general_des, general_res = db_execute(query_general)
    if len(general_res) == 0:
        print("\nSorry, we cannot find any relevant flight information based on the data you provided!:(")
    else:
        nice_sql_format(general_res, general_des)
    
    print("\n================= Detailed Delay Information ==================")
    print("The following table shows the total number of minutes for each delay reason\n")
    detailed_des, detailed_res = db_execute(detailed_query)
    if len(detailed_res) == 0:
        print("\nSorry, we cannot find any relevant flight information based on the data you provided!:(")
    else:
        nice_sql_format(detailed_res, detailed_des)
    
    yes_or_no = continue_or_exit()
    # if yes_or_no.lower() in no_options:
    #     return usr_logic()
    # else: 
    #     return delay_analysis_logic()
    if yes_or_no.lower() in yes_options:
        return delay_analysis_logic()