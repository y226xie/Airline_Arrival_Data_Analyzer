from utils import flight, airport, cause_of_delay, cause_of_cancellation

def process_query(query, table_columns):
    for index, column in enumerate(table_columns):
        question = "\nPlease specify the value of {} {}: ".format(column[0], column[1])
        input_str = input(question)
        if index == len(table_columns)-1:
            query += "'" + input_str + "'" + ");"
        else:
            query += "'" + input_str + "'" + ", "
    return query    

def get_flight_insert_query():
    query = "INSERT INTO Flight (Airline_Name, Tail_Number, Flight_Number, Flight_Date, Origin, Dest, Cancelled, IsDelayed, Scheduled_Dep_Time, Scheduled_Arr_Time, Actual_Dep_Time, Actual_Arr_Time, DepDelayMinutes, ArrDelayMinutes, CRS_Elapsed_Time, Actual_Elapsed_Time, AirTime, Distance) VALUES ("

    return process_query(query, flight)

def get_airport_insert_query():
    query = "INSERT INTO Airport (AirportID, Country, City, State) VALUES ("

    return process_query(query, airport)

def get_delay_insert_query():
    query = "INSERT INTO Cause_of_Delay (Airline_Name, Tail_Number, Flight_Number, Flight_Date, Origin, Carrier_Delay, Weather_Delay, NAS_Delay, Security_Delay, LateAircraft_Delay) VALUES ("

    return process_query(query, cause_of_delay)

def get_cancellation_insert_query():
    query = "INSERT INTO Cause_of_Cancellation (Airline_Name, Tail_Number, Flight_Number, Flight_Date, Origin, Cancellation_Code) VALUES ("

    return process_query(query, cause_of_cancellation)