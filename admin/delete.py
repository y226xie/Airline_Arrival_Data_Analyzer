from utils import flight, airport, cause_of_delay, cause_of_cancellation, yes_options, no_options

def check_more_column():
    while 1:
        isMoreColumn = input("\nDo you want to update another column?(Y/N) ")
        if isMoreColumn.lower() in yes_options:
            return True
        elif isMoreColumn.lower() in no_options:
            return False

def column_selection():
    column_selection_str = input("\nPlease select a column for your where clause constraint: ")
    if not column_selection_str.isdigit():
        column = 0
    else:
        column = int(column_selection_str)
    return column

def get_constraints(table):
    update_pairs = {}
    query = ""
    while 1:
        column_index = column_selection()
        if column_index < 1 or column_index > len(table):
            print("\nInvalid column selected!")
        else:
            column_val = table[column_index-1]
            question = "\nPlease specify the value of constraint {} {}: ".format(column_val[0], column_val[1])
            user_input = input(question)
            update_pairs[column_val[0]] = user_input

            isMoreColumn = check_more_column()
            if not isMoreColumn:
                for index, key in enumerate(update_pairs.keys()):
                    query += key + " = " + "'" + update_pairs[key] + "'"
                    if index != len(update_pairs)-1:
                        query += " and "
                break
    return query    

def get_delete_query(query, table):
    print("\n================= Next Step: please specify the where clause constraints ==================")
    query += get_constraints(table) + ";"
    return query

def get_flight_delete_query():
    query = "DELETE FROM Flight WHERE "
    return get_delete_query(query, flight)

def get_airport_delete_query():
    query = "DELETE FROM Airport WHERE "
    return get_delete_query(query, airport)

def get_delay_delete_query():
    query = "DELETE FROM Cause_of_Delay WHERE "
    return get_delete_query(query, cause_of_delay)

def get_cancellation_delete_query():
    query = "DELETE FROM Cause_of_Cancellation WHERE "
    return get_delete_query(query, cause_of_cancellation)