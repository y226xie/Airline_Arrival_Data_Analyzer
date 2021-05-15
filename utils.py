# Global constant for admin.py
flight = [
    ("Airline_Name", "(i.e. B6)"), 
    ("Tail_Number", "(i.e. N999JQ)"), 
    ("Flight_Number", "(i.e. 1630)"), 
    ("Flight_Date", "in YYYY-MM-DD format (i.e. 2020-07-27)"), 
    ("Origin", "in 3-letter abbreviation (i.e. GSP)"), 
    ("Dest", "in 3-letter abbreviation (i.e. LGA)"), 
    ("Cancelled", "[1 for cancelled, 0 for not cancelled] (i.e. 0)"), 
    ("IsDelayed", "[1 for delayed, 0 for not delayed] (i.e. 0)"), 
    ("Scheduled_Dep_Time", "in hhmm format (i.e. 1200)"), 
    ("Scheduled_Arr_Time", "in hhmm format (i.e. 1444)"), 
    ("Actual_Dep_Time", "in hhmm format (i.e. 1138)"), 
    ("Actual_Arr_Time", "in hhmm format (i.e. 1418)"), 
    ("DepDelayMinutes", "in minutes (i.e. 0)"), 
    ("ArrDelayMinutes", "in minutes (i.e. 0)"), 
    ("CRS_Elapsed_Time", "in minutes (i.e. 164)"), 
    ("Actual_Elapsed_Time", "in minutes (i.e. 160)"), 
    ("AirTime", "in minutes (i.e. 144)"), 
    ("Distance", "in miles (i.e. 1074)")
]

airport = [
    ("AirportID", "in 3-letter abbreviation (i.e. GSP)"), 
    ("Country", "(i.e. USA)"), 
    ("City", "(i.e. Los Angeles, CA)"), 
    ("State", "(i.e. California)")
]

cause_of_delay = [
    ("Airline_Name", "(i.e. B6)"), 
    ("Tail_Number", "(i.e. N999JQ)"), 
    ("Flight_Number", "(i.e. 1630)"), 
    ("Flight_Date", "in YYYY-MM-DD format (i.e. 2020-07-27)"), 
    ("Origin", "in 3-letter abbreviation (i.e. GSP)"), 
    ("Carrier_Delay", "in minutes (i.e. 2)"), 
    ("Weather_Delay", "in minutes (i.e. 0)"), 
    ("NAS_Delay", "in minutes (i.e. 7)"), 
    ("Security_Delay", "in minutes (i.e. 0)"), 
    ("LateAircraft_Delay", "in minutes (i.e. 41)")
]

cause_of_cancellation = [
    ("Airline_Name", "(i.e. B6)"), 
    ("Tail_Number", "(i.e. N999JQ)"), 
    ("Flight_Number", "(i.e. 1630)"), 
    ("Flight_Date", "in YYYY-MM-DD format (i.e. 2020-07-27)"), 
    ("Origin", "in 3-letter abbreviation (i.e. GSP)"), 
    ("Cancellation_Code", "(i.e. D)")
]

# Global constants for user.py
user_service_options = [1, 2, 3, 4, 5, 6, 7]

yes_options = ['y', 'yes', 'continue']

no_options = ['n', 'no', 'exit']

service_option1_default_query = "select distinct * from Flight where Airline_Name = '{}' and Flight_Number = '{}' and Flight_Date = '{}' and Origin = '{}' and Dest = '{}';"

service_option2_default_query =  "select distinct Airline_Name, Flight_Number from Flight where Origin = '{}' and Dest = '{}';"

service_option2_details_query = "select distinct * from Flight where Airline_Name ='{}' and Flight_Number = '{}' and Origin = '{}' and Dest = '{}';"

service_option3_basic_info = "select City from Airport where AirportID='{}'"

service_option3_depature = "with numOfScheduled as (select * from Flight where Origin='{}' and Flight_Date = '{}' and Scheduled_Dep_Time is not null) select count(*) as total from numOfScheduled union select count(*) as numOfCancelled from numOfScheduled where Cancelled = 1 union select count(*) as numOfDelayed from numOfScheduled where isDelayed = 1;"

service_option3_arrival = "with numOfScheduled as (select * from Flight where Dest='{}' and Flight_Date = '{}' and Scheduled_Arr_Time is not null) select count(*) as total from numOfScheduled union select count(*) as numOfCancelled from numOfScheduled where Cancelled = 1 union select count(*) as numOfDelayed from numOfScheduled where isDelayed = 1;"

months_available = [['2019', '09'], ['2019','10'], ['2019', '11'], ['2019','12'], ['2020', '01'], ['2020','02'], ['2020','03'], ['2020','04'], ['2020','05'], ['2020','06'], ['2020','07'], ['2020','08'], ['2020','09']]

service_option3_depature_in_month = "with numOfScheduled as (select * from Flight where Origin='{}' and year(Flight_Date) = {} and month(Flight_Date) = {} and Scheduled_Dep_Time is not null) select count(*) as total from numOfScheduled union select count(*) as numOfCancelled from numOfScheduled where Cancelled = 1 union select count(*) as numOfDelayed from numOfScheduled where isDelayed = 1;"

service_option3_arrival_in_month = "with numOfScheduled as (select * from Flight where Dest='{}' and year(Flight_Date) = {} and month(Flight_Date) = {} and Scheduled_Arr_Time is not null) select count(*) as total from numOfScheduled union select count(*) as numOfCancelled from numOfScheduled where Cancelled = 1 union select count(*) as numOfDelayed from numOfScheduled where isDelayed = 1;"

