
import csv

def cancellation_code_look_up(key):
    res = []
    with open('./look_up_table/L_CANCELLATION.csv', newline='') as csvfile:
        next(csvfile)
        reader = csv.reader(csvfile, delimiter=',')
        # row has only length of 2
        # 0 as the code 
        # 1 as the description
        for row in reader:
            res.append(row)
        # search
        for i in res:
            if (key.upper() == i[0]):
                return i[0]
            if (key.upper() in i[1].upper()):
                return i[0]
        return -1

def airport_look_up(key):
    res = []
    new_res = None
    duplicate_counter = 0

    with open('./look_up_table/L_AIRPORT.csv', newline='') as csvfile:
        next(csvfile)
        reader = csv.reader(csvfile, delimiter=',')
        for row in reader:
            res.append(row)
        for i in res:
            if (key.upper() == i[0]):
                return i[0]
            elif (len(key) > 3):
                if (key.upper() in i[1].upper()):
                    duplicate_counter = duplicate_counter + 1
                    new_res = i[0]
        if(duplicate_counter == 1):
            return new_res
        else:
            return -1       
        

def airline_name_look_up(key):
    # select count(*) from Flight where Airline_Name like '(%'; gives 0 
    # thus we dont consider the xxx (1) scenarios
    res = []
    new_res = None
    duplicate_counter = 0
    with open('./look_up_table/L_UNIQUE_CARRIERS.csv', newline='') as csvfile:
        next(csvfile)
        reader = csv.reader(csvfile, delimiter=',')
        for row in reader:
            res.append(row)
        for i in res:
            if (key.upper() == i[0]):
                return i[0]
            elif (len(key) > 3):
                if (key.upper() in i[1].upper()):
                    duplicate_counter = duplicate_counter + 1
                    new_res = i[0]
        if(duplicate_counter == 1):
            return new_res
        else:
            return -1           

# test cases:
# print(airline_name_look_up("XC"))
# print(airline_name_look_up("XD"))
# print(airline_name_look_up("ZX"))
# print(airline_name_look_up("XPQ"))

# print(airline_name_look_up("yang"))
# print(airline_name_look_up("IPAIR tokyo In"))


# print(airport_look_up("JJR"))
# print(airport_look_up("shanghai"))
# print(airport_look_up("JzK"))
# print(airport_look_up("rel, MT: L"))
# print(airport_look_up("Mbala, Zambia:"))

# print(cancellation_code_look_up("Cardr"))
# print(cancellation_code_look_up("National"))
# print(cancellation_code_look_up("securit"))
# print(cancellation_code_look_up("securit"))
# print(cancellation_code_look_up("b"))
# print(cancellation_code_look_up("aa"))