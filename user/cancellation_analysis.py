from db_operation import db_execute
from helper import nice_sql_format

def cancellation_analysis_logic():
    print("\nFor cancellation analysis, please provide the following information:")
    selection = get_cancellation_analysis_option()
    get_cancellation_info(selection)
    return

def get_cancellation_analysis_option():
    print("\n+------------------------------+")
    print("| Cancellation Analysis Option |")
    print("+------------------------------+")
    print("| 1. By Origin and Destination |")
    print("| 2. By Airline                |")
    print("+------------------------------+")

    while 1:
        selection = cancellation_option_selection()
        if selection != 1 and selection != 2:
            print("Invalid option selected!")
        else:
            return selection

def cancellation_option_selection():

    option_selection_str = input("\nPlease select the option you want to analyze for: ")
    if not option_selection_str.isdigit():
        command = 0
    else:
        command = int(option_selection_str)
    return command

def get_cancellation_info(command):
    '''
        Info we need to provide:
        1. cancelled time percentage
        2. cancelled reasons
    '''
    # Analyze by origin and destination (e.g. origin = "GSP", dest = "LGA")
    if command == 1:
        origin = input("\nPlease specify the value of orgin in 3-letter abbreviation (i.e. GSP): ")
        destination = input("\nPlease specify the value of destination in 3-letter abbreviation (i.e. LGA): ")
    
        query_general = "With TotalFlights AS (SELECT count(*) as number_of_Total_Flights FROM Flight WHERE Origin = '{}' and Dest = '{}'), CancelledFlights AS (SELECT count(*) as number_of_Cancelled_Flights FROM Flight WHERE Origin = '{}' and Dest = '{}' and Cancelled = '1') SELECT a.number_of_Total_Flights, b.number_of_Cancelled_Flights, b.number_of_Cancelled_Flights/a.number_of_Total_Flights as Cancellation_Ratio FROM TotalFlights as a JOIN CancelledFlights as b;".format(origin, destination, origin, destination)

        detailed_query = "With CancelledFlight As (SELECT * FROM Flight WHERE Origin = '{}' and Dest = '{}' and Cancelled = '1') SELECT Cancellation_Code, COUNT(*) as occurence FROM Cause_of_Cancellation as a INNER JOIN CancelledFlight b ON a.Airline_Name = b.Airline_Name and a.Tail_Number = b.Tail_Number and a.Flight_Number = b.Flight_Number and a.Flight_Date = b.Flight_Date and a.Origin = b.Origin GROUP BY a.Cancellation_Code;".format(origin, destination)
    
    # Analyze by airline number (e.g. airline_name = "9E")
    elif command == 2:
        airline_name = input("\nPlease specify the value of Airline_Name (i.e. B6): ")

        query_general = "With TotalFlights AS (SELECT count(*) as number_of_Total_Flights FROM Flight WHERE Airline_Name = '{}'), CancelledFlights AS (SELECT count(*) as number_of_Cancelled_Flights FROM Flight WHERE Airline_Name = '{}' and Cancelled = '1') SELECT a.number_of_Total_Flights, b.number_of_Cancelled_Flights, b.number_of_Cancelled_Flights/a.number_of_Total_Flights as Cancellation_Ratio FROM TotalFlights as a JOIN CancelledFlights as b;".format(airline_name, airline_name)

        detailed_query = "With CancelledFlight As (SELECT * FROM Flight WHERE Airline_Name = '{}' and Cancelled = '1') SELECT Cancellation_Code, COUNT(*) as occurence FROM Cause_of_Cancellation as a INNER JOIN CancelledFlight b ON a.Airline_Name = b.Airline_Name and a.Tail_Number = b.Tail_Number and a.Flight_Number = b.Flight_Number and a.Flight_Date = b.Flight_Date and a.Origin = b.Origin GROUP BY a.Cancellation_Code;".format(airline_name)
    
    print("\n================= General Cancellation Information ================== \n")
    general_des, general_res = db_execute(query_general)
    if len(general_res) == 0:
        print("\nSorry, we cannot find any relevant flight information based on the data you provided!:(")
    else:
        nice_sql_format(general_res, general_des)

    print("\n================= Cancellation Code Distribution ================== \n")
    detailed_des, detailed_res = db_execute(detailed_query)
    if len(detailed_res) == 0:
        print("\nSorry, we cannot find any relevant flight information based on the data you provided!:(")
    else:
        nice_sql_format(detailed_res, detailed_des)

    print("\n Cancellation Code Note: ")
    print("\n A: Carrier")
    print("\n B: Weather")
    print("\n C: National Air System")
    print("\n D: Security")
