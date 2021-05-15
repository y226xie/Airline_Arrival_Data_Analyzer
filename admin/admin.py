from db_operation import db_execute
from .insert import *
from .update import get_flight_update_query, get_airport_update_query, get_delay_update_query, get_cancellation_update_query
from .helper import display_column, get_command, get_table
from .delete import get_flight_delete_query, get_airport_delete_query, get_delay_delete_query, get_cancellation_delete_query
from .select import get_flight_select_query, get_airport_select_query, get_delay_select_query, get_cancellation_select_query
from utils import yes_options, no_options
from helper import nice_sql_format

def admin_logic():
    command = get_command()
    if command == 5:
        return
    table = get_table()
    display_column(table)
    query = ""
    if command == 1:
        if table == 1:
            query = get_flight_insert_query()
        elif table == 2:
            query = get_airport_insert_query()
        elif table == 3:
            query = get_delay_insert_query()
        elif table == 4:
            query = get_cancellation_insert_query()
    elif command == 2:
        if table == 1:
            query = get_flight_delete_query()
        elif table == 2:
            query = get_airport_delete_query()
        elif table == 3:
            query = get_delay_delete_query()
        elif table == 4:
            query = get_cancellation_delete_query()
    elif command == 3:
        if table == 1:
            query = get_flight_update_query()
        elif table == 2:
            query = get_airport_update_query()
        elif table == 3:
            query = get_delay_update_query()
        elif table == 4:
            query = get_cancellation_update_query()
    elif command == 4: 
        if table == 1:
            query = get_flight_select_query()
        elif table == 2:
            query = get_airport_select_query()
        elif table == 3:
            query = get_delay_select_query()
        elif table == 4:
            query = get_cancellation_select_query()

    print("\nThis is the query you are specifying: {}".format(query))
    while 1:
        double_check = input("\nDo you really want to execute? (Y/N) ")

        if double_check in yes_options:
            description, result = db_execute(query)
            if command != 4:
                print("Modified Successfully :)")
            else:
                if len(result) == 0:
                    print("\nSorry, we cannot find any relevant flight information based on the data you provided!:(")
                else:
                    nice_sql_format(result, description)
            break
        elif double_check in no_options:
            print("The modification is withdrawed.")
            break

    print("\n\n================= Back to Admin Menu ==================")
    admin_logic()
    

    # test_res = "Command {} Table {} ".format(commands[command-1], tables[table-1])
    # print(test_res)

