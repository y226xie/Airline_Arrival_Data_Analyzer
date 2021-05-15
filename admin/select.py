from utils import flight, airport, cause_of_delay, cause_of_cancellation

def process_query(query, table_columns):
    constraints_length = 0
    constraints = {}
    if table_columns == airport:
        constraints_length = 1
    else:
        constraints_length = 5

    for index, column in enumerate(table_columns[:constraints_length]):
        question = "\nPlease specify the value of {} {}: (press enter to skip) ".format(column[0], column[1])
        input_str = input(question)
        if input_str != "":
            constraints[column[0]] = input_str

    if constraints:
        query += " WHERE "
    else:
        query += ";"
        return query

    for index, key in enumerate(constraints.keys()):
        if index == len(constraints)-1:
            query += key + " = " + "'" + constraints[key] + "'" + ";"
        else:
            query += key + " = " + "'" + constraints[key] + "'" + " and "
    return query  


def get_flight_select_query():
    query = "SELECT DISTINCT * FROM Flight"
    return process_query(query, flight)

def get_airport_select_query():
    query = "SELECT DISTINCT * FROM Airport"
    return process_query(query, airport)

def get_delay_select_query():
    query = "SELECT DISTINCT * FROM Cause_of_Delay"
    return process_query(query, cause_of_delay)

def get_cancellation_select_query():
    query = "SELECT DISTINCT * FROM Cause_of_Cancellation"
    return process_query(query, cause_of_cancellation)    