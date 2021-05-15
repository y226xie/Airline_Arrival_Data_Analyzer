-- setup project 6 db


-- Show warnings after every statement
-- warnings;


-- Drop
drop table if exists Cause_of_Delay;
drop table if exists Cause_of_Cancellation; 
drop table if exists Flight;
drop table if exists Airport;



-- Load schema
select '----------------------------------------------------------------' as '';
select 'Airport' as '';

create table Airport
(
    AirportID                           char(15) not null,
    Country                             char(30) not null,
    City                                char(30) not null,
    State                               char(30) not null,

    primary key                         (AirportID)
    
);




select '----------------------------------------------------------------' as '';
select "Flight" as "";

create table Flight
(
    Airline_Name                        char(15) not null,
    Tail_Number                         char(15) ,
    Flight_Number                       char(15) not null,
    
    Flight_Date                         date not null,

    Origin                              char(15) not null,
    Dest                                char(15) not null,

    Cancelled                           decimal(3,2) not null, 
    IsDelayed                           int not null,
    -- is delay is self defined variable
    Scheduled_Dep_Time                  decimal(4) not null,
    Scheduled_Arr_Time                  decimal(4) not null,
    Actual_Dep_Time                     decimal(4),
    Actual_Arr_Time                     decimal(4),
    -- 6 comes from 24*60 = 1440min  => 1440.00
    DepDelayMinutes                     decimal(6,2), 
    ArrDelayMinutes                     decimal(6,2),
    CRS_Elapsed_Time                    decimal(10,2),

    Actual_Elapsed_Time                 decimal(10,2),
    AirTime                             decimal(10,2),

    Distance                            decimal(10,2) not null,

    primary key                         (Airline_Name,Tail_Number,Flight_Number,Flight_Date,Origin),
    foreign key                         (Origin) references Airport(AirportID),
    foreign key                         (Dest) references Airport(AirportID)

);


select '----------------------------------------------------------------' as '';
select 'Cause_of_Delay' as '';

create table Cause_of_Delay
(
    Airline_Name                        char(15) not null,
    Tail_Number                         char(15) ,
    Flight_Number                       char(15) not null,
    Flight_Date                         date not null,
    Origin                              char(15) not null,

    Carrier_Delay                       decimal(10) ,
    Weather_Delay                       decimal(10) ,
    NAS_Delay                           decimal(10) ,
    Security_Delay                      decimal(10) ,
    LateAircraft_Delay                  decimal(10) ,

    primary key                         (Airline_Name,Tail_Number,Flight_Number,Flight_Date,Origin),
    foreign key                         (Airline_Name,Tail_Number,Flight_Number,Flight_Date,Origin) references Flight(Airline_Name,Tail_Number,Flight_Number,Flight_Date,Origin)
);

select '----------------------------------------------------------------' as '';
select 'Cause_of_Cancellation' as '';

create table Cause_of_Cancellation
(
    Airline_Name                        char(15) not null,
    Tail_Number                         char(15) ,
    Flight_Number                       char(15) not null,
    Flight_Date                         date not null,
    Origin                              char(15) not null,

    Cancellation_Code                   char(2), 

    primary key                         (Airline_Name,Tail_Number,Flight_Number,Flight_Date,Origin),
    foreign key                         (Airline_Name,Tail_Number,Flight_Number,Flight_Date,Origin) references Flight(Airline_Name,Tail_Number,Flight_Number,Flight_Date,Origin)
);

