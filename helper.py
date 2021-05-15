import datetime
from utils import yes_options, no_options

def continue_or_exit():
    user_selection_for_continue = input("\nDo you want to continue?(Y/N) ")
    while user_selection_for_continue.lower() not in yes_options and user_selection_for_continue.lower() not in  no_options:
        user_selection_for_continue = input("\nDo you want to continue?(Y/N) ")
    
    return user_selection_for_continue
    
def check_date_format(date_string):
    try: 
        datetime.datetime.strptime(date_string, "%Y-%m-%d")
        return True
    except ValueError:
        return False

def check_for_numbers(input_string):
    try:
        input_string = int(input_string)
        return input_string
    except:
        return False
        
def nice_sql_format(data, description):
    header = [i[0] for i in description]
    column_len = [len(key) for key in header]
    # layout
    sub_layout = "+-----"
    header_layout = "| Num | "
    layout_offeset = []
    for length in range(len(column_len)):
        if(header[length] == "City"):
            sub_layout = sub_layout + ("+" + "-"*(int(32)))
            layout_offeset.append(int(30))
        elif(header[length] == "State"):
            sub_layout = sub_layout + ("+" + "-"*(int(32)))
            layout_offeset.append(int(30))
        else:
            sub_layout = sub_layout + ("+" + "-"*(int(column_len[length])+2))
            layout_offeset.append(int(column_len[length]))
    sub_layout = sub_layout + "+"
    print(sub_layout)
    for index in range(len(header)):
        offset = abs(len(header[index])-int(layout_offeset[index])+2)
        if(header[index] == "City"):
            offset = 28 # hardcode City Column Width
        elif(header[index] == "State"):
            offset = 27 # hardcode City Column Width
        header_layout = header_layout + header[index] + (offset-1)*' '+'| '
    print(header_layout)
    print(sub_layout)

    # data
    counter = 1 
    for line in data:
        final_res = []
        data_layout = "| "
        #flat_res = [item for sublist in l_line for item in sublist]
        flat_res = list(line.values())
        for key in flat_res:
            date_or_not = isinstance(key, datetime.date)
            if(date_or_not):
                final_res.append(key.strftime('%Y-%m-%d'))
            else:
                final_res.append(str(key))

        for index in range(len(final_res)):
            offset = int(layout_offeset[index]) - int(len(final_res[index])) + 2
            data_layout = data_layout + final_res[index] + (offset-1)*' '+'| '
        line_res = '| {:<4}'.format(str(counter))
        print(line_res +""+ data_layout)
        counter += 1
        print(sub_layout)
    return 0

    #     header = [i[0] for i in description]
    # column_len = [len(key) for key in header]
    # # layout
    # sub_layout = "+-----"
    # header_layout = "| Num | "
    # layout_offeset = []
    # for length in column_len:
    #     sub_layout = sub_layout + ("+" + "-"*(int(length)+2)) 
    #     layout_offeset.append(int(length))
    # sub_layout = sub_layout + "+"
    # print(sub_layout)
    # for index in range(len(header)):
    #     offset = abs(len(header[index])-int(layout_offeset[index])+2)
    #     if(header[index] == "City"):
    #         offset = 32 # hardcode City Column Width
    #     header_layout = header_layout + header[index] + (offset-1)*' '+'| '
    # print(header_layout)
    # print(sub_layout)