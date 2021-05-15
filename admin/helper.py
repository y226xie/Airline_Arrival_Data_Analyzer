from db_operation import db_connection, db_execute
from utils import flight, airport, cause_of_delay, cause_of_cancellation

def get_command():
    while 1:
        command = command_selection()
        if command != 1 and command != 2 and command != 3 and command != 4 and command != 5:
            print("Invalid command selected!")
        else:
            return command

def get_table():
    while 1:
        table = table_selection()
        if table != 1 and table != 2 and table != 3 and table != 4:
            print("Invalid table selected!")
        else:
            return table    

def command_selection():
    print("\n+-------------------+")
    print("| Admin Commands    |")
    print("+-------------------+")
    print("| 1. Insert         |")
    print("| 2. Delete         |")
    print("| 3. Update         |")
    print("| 4. Select         |")
    print("| 5. Exit           |")
    print("+-------------------+")
    command_selection_str = input("\nPlease select the command you want to do: ")
    if not command_selection_str.isdigit():
        command = 0
    else:
        command = int(command_selection_str)
    return command

def table_selection():
    print("\n+--------------------------+")
    print("| Tables in Database       |")
    print("+--------------------------+")
    print("| 1. Flight                |")
    print("| 2. Airport               |")
    print("| 3. Cause_of_Delay        |")
    print("| 4. Cause_of_Cancellation |")
    print("+--------------------------+")
    table_selection_str = input("\nPlease select the table you want to modify: ")
    if not table_selection_str.isdigit():
        table = 0
    else:
        table = int(table_selection_str)
    return table

def describe_table(table_name):
    _, res = db_execute("DESCRIBE" + ' '+  table_name)
    descripiton = ""
    index = 0
    for item in res:
        index += 1
        if index != len(res):
            line_res = '|{:>3}.   {:>25}  |'.format(str(index), item["Field"]) + "\n"
        else:
            line_res = '|{:>3}.   {:>25}  |'.format(str(index), item["Field"])
        descripiton = descripiton + line_res 
    return descripiton

def display_column(table):
    if table == 1 or table == flight:
        print("\n+----------------------------------+")
        print("| Columns in Flight                |")
        print("+----------------------------------+")
        print(describe_table("Flight"))
        print("+----------------------------------+")
    elif table == 2 or table == airport:
        print("\n+----------------------------------+")
        print("| Columns in Airport               |")
        print("+----------------------------------+")
        print(describe_table("Airport"))
        print("+----------------------------------+")
    elif table == 3 or table == cause_of_delay:
        print("\n+----------------------------------+")
        print("| Columns in Cause_of_Delay        |")
        print("+----------------------------------+")
        print(describe_table("Cause_of_Delay"))
        print("+----------------------------------+")
    elif table == 4 or table == cause_of_cancellation:
        print("\n+----------------------------------+")
        print("| Columns in Cause_of_Cancellation |")
        print("+----------------------------------+")
        print(describe_table("Cause_of_Cancellation"))
        print("+----------------------------------+")

