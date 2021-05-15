from utils import flight, airport, cause_of_delay, cause_of_cancellation, yes_options, no_options
from .helper import display_column

def check_more_column():
    while 1:
        isMoreColumn = input("\nDo you want to update another column?(Y/N) ")
        if isMoreColumn.lower() in yes_options:
            return True
        elif isMoreColumn.lower() in no_options:
            return False

def column_selection(is_where_clause):
    if not is_where_clause:
        column_selection_str = input("\nPlease select a column you want to update: ")
    else:
        column_selection_str = input("\nPlease select a column for your where clause constraint: ")
    if not column_selection_str.isdigit():
        column = 0
    else:
        column = int(column_selection_str)
    return column 

def get_constraints(table, is_where_clause):
    update_pairs = {}
    query = ""
    while 1:
        column_index = column_selection(is_where_clause)
        if column_index < 1 or column_index > len(table):
            print("\nInvalid column selected!")
        else:
            column_val = table[column_index-1]
            if not is_where_clause:
                question = "\nPlease specify the new value of {} {}: ".format(column_val[0], column_val[1])
            else:
                question = "\nPlease specify the value of constraint {} {}: ".format(column_val[0], column_val[1])
            user_input = input(question)
            update_pairs[column_val[0]] = user_input

            isMoreColumn = check_more_column()
            if not isMoreColumn:
                for index, key in enumerate(update_pairs.keys()):
                    query += key + " = '" + update_pairs[key] + "'"
                    if index != len(update_pairs)-1:
                        if not is_where_clause:
                            query += ", "
                        else:
                            query += " and "
                break
    return query    

def get_update_query(query, table):
    print("\n================= Next Step: please specify the updating columns with new values ==================")
    query += get_constraints(table, False)
    print("\n================= Next Step: please specify the where clause constraints ==================")
    display_column(table)
    query += " WHERE "
    query += get_constraints(table, True) + ";"
    return query

def get_flight_update_query():
    query = "UPDATE Flight SET "
    return get_update_query(query, flight)
 

def get_airport_update_query():
    query = "UPDATE Airport SET "
    return get_update_query(query, airport)

def get_delay_update_query():
    query = "UPDATE Cause_of_Delay SET "
    return get_update_query(query, cause_of_delay)

def get_cancellation_update_query():
    query = "UPDATE Cause_of_Cancellation SET "
    return get_update_query(query, cause_of_cancellation)