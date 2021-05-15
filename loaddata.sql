-- load sequence
-- 1 airport 
-- 2 airline
-- 3 delay
-- 4 cancel

select "Load Airport" as "";

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_09.csv' ignore into table Airport
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, @throw,
        @throw,@throw,@throw,
        AirportID, City, State, Country,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     );

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_10.csv' ignore into table Airport
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, @throw,
        @throw,@throw,@throw,
        AirportID, City, State, Country,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     );

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_11.csv' ignore into table Airport
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, @throw,
        @throw,@throw,@throw,
        AirportID, City, State, Country,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     );

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_12.csv' ignore into table Airport
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, @throw,
        @throw,@throw,@throw,
        AirportID, City, State, Country,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     );

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_01.csv' ignore into table Airport
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, @throw,
        @throw,@throw,@throw,
        AirportID, City, State, Country,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     );

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_02.csv' ignore into table Airport
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, @throw,
        @throw,@throw,@throw,
        AirportID, City, State, Country,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     );

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_03.csv' ignore into table Airport
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, @throw,
        @throw,@throw,@throw,
        AirportID, City, State, Country,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     );

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_04.csv' ignore into table Airport
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, @throw,
        @throw,@throw,@throw,
        AirportID, City, State, Country,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     );

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_05.csv' ignore into table Airport
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, @throw,
        @throw,@throw,@throw,
        AirportID, City, State, Country,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     );

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_06.csv' ignore into table Airport
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, @throw,
        @throw,@throw,@throw,
        AirportID, City, State, Country,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     );

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_07.csv' ignore into table Airport
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, @throw,
        @throw,@throw,@throw,
        AirportID, City, State, Country,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     );

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_08.csv' ignore into table Airport
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, @throw,
        @throw,@throw,@throw,
        AirportID, City, State, Country,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     );

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_09.csv' ignore into table Airport
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, @throw,
        @throw,@throw,@throw,
        AirportID, City, State, Country,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     );


select "Load Flight" as "";
load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_09.csv' ignore into table Flight
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw1, @throw2, @throw3, Flight_Date,
        Airline_Name,@Tail_Number,Flight_Number,
        Origin, @throw5, @throw6, @throw7,
        Dest, @throw8, @throw9, @throw10,
        Scheduled_Dep_Time,@Actual_Dep_Time,@DepDelayMinutes,
        Scheduled_Arr_Time,@Actual_Arr_Time,@ArrDelayMinutes,
        Cancelled,@throw11,
        @CRS_Elapsed_Time,@Actual_Elapsed_Time,@AirTime,@throw12,Distance,
        @throw13,@throw14,@throw15,@throw16,@throw17
     )
    set Tail_Number               = if(@Tail_Number like '', NULL, @Tail_Number),
        Actual_Dep_Time           = if(@Actual_Dep_Time like '', NULL, @Actual_Dep_Time),
        Actual_Arr_Time           = if(@Actual_Arr_Time like '', NULL, @Actual_Arr_Time),
        AirTime                   = if(@AirTime like '', NULL, @AirTime),
        Actual_Elapsed_Time       = if(@Actual_Elapsed_Time like '', NULL, @Actual_Elapsed_Time),
        DepDelayMinutes           = if(@DepDelayMinutes like '', NULL, @DepDelayMinutes),
        ArrDelayMinutes           = if(@ArrDelayMinutes like '', NULL, @ArrDelayMinutes),
        CRS_Elapsed_Time          = if(@CRS_Elapsed_Time like '', NULL, @CRS_Elapsed_Time);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_10.csv' ignore into table Flight
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw1, @throw2, @throw3, Flight_Date,
        Airline_Name,@Tail_Number,Flight_Number,
        Origin, @throw5, @throw6, @throw7,
        Dest, @throw8, @throw9, @throw10,
        Scheduled_Dep_Time,@Actual_Dep_Time,@DepDelayMinutes,
        Scheduled_Arr_Time,@Actual_Arr_Time,@ArrDelayMinutes,
        Cancelled,@throw11,
        @CRS_Elapsed_Time,@Actual_Elapsed_Time,@AirTime,@throw12,Distance,
        @throw13,@throw14,@throw15,@throw16,@throw17
     )
    set Tail_Number               = if(@Tail_Number like '', NULL, @Tail_Number),
        Actual_Dep_Time           = if(@Actual_Dep_Time like '', NULL, @Actual_Dep_Time),
        Actual_Arr_Time           = if(@Actual_Arr_Time like '', NULL, @Actual_Arr_Time),
        AirTime                   = if(@AirTime like '', NULL, @AirTime),
        Actual_Elapsed_Time       = if(@Actual_Elapsed_Time like '', NULL, @Actual_Elapsed_Time),
        DepDelayMinutes           = if(@DepDelayMinutes like '', NULL, @DepDelayMinutes),
        ArrDelayMinutes           = if(@ArrDelayMinutes like '', NULL, @ArrDelayMinutes),
        CRS_Elapsed_Time          = if(@CRS_Elapsed_Time like '', NULL, @CRS_Elapsed_Time);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_11.csv' ignore into table Flight
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw1, @throw2, @throw3, Flight_Date,
        Airline_Name,@Tail_Number,Flight_Number,
        Origin, @throw5, @throw6, @throw7,
        Dest, @throw8, @throw9, @throw10,
        Scheduled_Dep_Time,@Actual_Dep_Time,@DepDelayMinutes,
        Scheduled_Arr_Time,@Actual_Arr_Time,@ArrDelayMinutes,
        Cancelled,@throw11,
        @CRS_Elapsed_Time,@Actual_Elapsed_Time,@AirTime,@throw12,Distance,
        @throw13,@throw14,@throw15,@throw16,@throw17
     )
    set Tail_Number               = if(@Tail_Number like '', NULL, @Tail_Number),
        Actual_Dep_Time           = if(@Actual_Dep_Time like '', NULL, @Actual_Dep_Time),
        Actual_Arr_Time           = if(@Actual_Arr_Time like '', NULL, @Actual_Arr_Time),
        AirTime                   = if(@AirTime like '', NULL, @AirTime),
        Actual_Elapsed_Time       = if(@Actual_Elapsed_Time like '', NULL, @Actual_Elapsed_Time),
        DepDelayMinutes           = if(@DepDelayMinutes like '', NULL, @DepDelayMinutes),
        ArrDelayMinutes           = if(@ArrDelayMinutes like '', NULL, @ArrDelayMinutes),
        CRS_Elapsed_Time          = if(@CRS_Elapsed_Time like '', NULL, @CRS_Elapsed_Time);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_12.csv' ignore into table Flight
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw1, @throw2, @throw3, Flight_Date,
        Airline_Name,@Tail_Number,Flight_Number,
        Origin, @throw5, @throw6, @throw7,
        Dest, @throw8, @throw9, @throw10,
        Scheduled_Dep_Time,@Actual_Dep_Time,@DepDelayMinutes,
        Scheduled_Arr_Time,@Actual_Arr_Time,@ArrDelayMinutes,
        Cancelled,@throw11,
        @CRS_Elapsed_Time,@Actual_Elapsed_Time,@AirTime,@throw12,Distance,
        @throw13,@throw14,@throw15,@throw16,@throw17
     )
    set Tail_Number               = if(@Tail_Number like '', NULL, @Tail_Number),
        Actual_Dep_Time           = if(@Actual_Dep_Time like '', NULL, @Actual_Dep_Time),
        Actual_Arr_Time           = if(@Actual_Arr_Time like '', NULL, @Actual_Arr_Time),
        AirTime                   = if(@AirTime like '', NULL, @AirTime),
        Actual_Elapsed_Time       = if(@Actual_Elapsed_Time like '', NULL, @Actual_Elapsed_Time),
        DepDelayMinutes           = if(@DepDelayMinutes like '', NULL, @DepDelayMinutes),
        ArrDelayMinutes           = if(@ArrDelayMinutes like '', NULL, @ArrDelayMinutes),
        CRS_Elapsed_Time          = if(@CRS_Elapsed_Time like '', NULL, @CRS_Elapsed_Time);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_01.csv' ignore into table Flight
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw1, @throw2, @throw3, Flight_Date,
        Airline_Name,@Tail_Number,Flight_Number,
        Origin, @throw5, @throw6, @throw7,
        Dest, @throw8, @throw9, @throw10,
        Scheduled_Dep_Time,@Actual_Dep_Time,@DepDelayMinutes,
        Scheduled_Arr_Time,@Actual_Arr_Time,@ArrDelayMinutes,
        Cancelled,@throw11,
        @CRS_Elapsed_Time,@Actual_Elapsed_Time,@AirTime,@throw12,Distance,
        @throw13,@throw14,@throw15,@throw16,@throw17
     )
    set Tail_Number               = if(@Tail_Number like '', NULL, @Tail_Number),
        Actual_Dep_Time           = if(@Actual_Dep_Time like '', NULL, @Actual_Dep_Time),
        Actual_Arr_Time           = if(@Actual_Arr_Time like '', NULL, @Actual_Arr_Time),
        AirTime                   = if(@AirTime like '', NULL, @AirTime),
        Actual_Elapsed_Time       = if(@Actual_Elapsed_Time like '', NULL, @Actual_Elapsed_Time),
        DepDelayMinutes           = if(@DepDelayMinutes like '', NULL, @DepDelayMinutes),
        ArrDelayMinutes           = if(@ArrDelayMinutes like '', NULL, @ArrDelayMinutes),
        CRS_Elapsed_Time          = if(@CRS_Elapsed_Time like '', NULL, @CRS_Elapsed_Time);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_02.csv' ignore into table Flight
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw1, @throw2, @throw3, Flight_Date,
        Airline_Name,@Tail_Number,Flight_Number,
        Origin, @throw5, @throw6, @throw7,
        Dest, @throw8, @throw9, @throw10,
        Scheduled_Dep_Time,@Actual_Dep_Time,@DepDelayMinutes,
        Scheduled_Arr_Time,@Actual_Arr_Time,@ArrDelayMinutes,
        Cancelled,@throw11,
        @CRS_Elapsed_Time,@Actual_Elapsed_Time,@AirTime,@throw12,Distance,
        @throw13,@throw14,@throw15,@throw16,@throw17
     )
    set Tail_Number               = if(@Tail_Number like '', NULL, @Tail_Number),
        Actual_Dep_Time           = if(@Actual_Dep_Time like '', NULL, @Actual_Dep_Time),
        Actual_Arr_Time           = if(@Actual_Arr_Time like '', NULL, @Actual_Arr_Time),
        AirTime                   = if(@AirTime like '', NULL, @AirTime),
        Actual_Elapsed_Time       = if(@Actual_Elapsed_Time like '', NULL, @Actual_Elapsed_Time),
        DepDelayMinutes           = if(@DepDelayMinutes like '', NULL, @DepDelayMinutes),
        ArrDelayMinutes           = if(@ArrDelayMinutes like '', NULL, @ArrDelayMinutes),
        CRS_Elapsed_Time          = if(@CRS_Elapsed_Time like '', NULL, @CRS_Elapsed_Time);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_03.csv' ignore into table Flight
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw1, @throw2, @throw3, Flight_Date,
        Airline_Name,@Tail_Number,Flight_Number,
        Origin, @throw5, @throw6, @throw7,
        Dest, @throw8, @throw9, @throw10,
        Scheduled_Dep_Time,@Actual_Dep_Time,@DepDelayMinutes,
        Scheduled_Arr_Time,@Actual_Arr_Time,@ArrDelayMinutes,
        Cancelled,@throw11,
        @CRS_Elapsed_Time,@Actual_Elapsed_Time,@AirTime,@throw12,Distance,
        @throw13,@throw14,@throw15,@throw16,@throw17
     )
    set Tail_Number               = if(@Tail_Number like '', NULL, @Tail_Number),
        Actual_Dep_Time           = if(@Actual_Dep_Time like '', NULL, @Actual_Dep_Time),
        Actual_Arr_Time           = if(@Actual_Arr_Time like '', NULL, @Actual_Arr_Time),
        AirTime                   = if(@AirTime like '', NULL, @AirTime),
        Actual_Elapsed_Time       = if(@Actual_Elapsed_Time like '', NULL, @Actual_Elapsed_Time),
        DepDelayMinutes           = if(@DepDelayMinutes like '', NULL, @DepDelayMinutes),
        ArrDelayMinutes           = if(@ArrDelayMinutes like '', NULL, @ArrDelayMinutes),
        CRS_Elapsed_Time          = if(@CRS_Elapsed_Time like '', NULL, @CRS_Elapsed_Time);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_04.csv' ignore into table Flight
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw1, @throw2, @throw3, Flight_Date,
        Airline_Name,@Tail_Number,Flight_Number,
        Origin, @throw5, @throw6, @throw7,
        Dest, @throw8, @throw9, @throw10,
        Scheduled_Dep_Time,@Actual_Dep_Time,@DepDelayMinutes,
        Scheduled_Arr_Time,@Actual_Arr_Time,@ArrDelayMinutes,
        Cancelled,@throw11,
        @CRS_Elapsed_Time,@Actual_Elapsed_Time,@AirTime,@throw12,Distance,
        @throw13,@throw14,@throw15,@throw16,@throw17
     )
    set Tail_Number               = if(@Tail_Number like '', NULL, @Tail_Number),
        Actual_Dep_Time           = if(@Actual_Dep_Time like '', NULL, @Actual_Dep_Time),
        Actual_Arr_Time           = if(@Actual_Arr_Time like '', NULL, @Actual_Arr_Time),
        AirTime                   = if(@AirTime like '', NULL, @AirTime),
        Actual_Elapsed_Time       = if(@Actual_Elapsed_Time like '', NULL, @Actual_Elapsed_Time),
        DepDelayMinutes           = if(@DepDelayMinutes like '', NULL, @DepDelayMinutes),
        ArrDelayMinutes           = if(@ArrDelayMinutes like '', NULL, @ArrDelayMinutes),
        CRS_Elapsed_Time          = if(@CRS_Elapsed_Time like '', NULL, @CRS_Elapsed_Time);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_05.csv' ignore into table Flight
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw1, @throw2, @throw3, Flight_Date,
        Airline_Name,@Tail_Number,Flight_Number,
        Origin, @throw5, @throw6, @throw7,
        Dest, @throw8, @throw9, @throw10,
        Scheduled_Dep_Time,@Actual_Dep_Time,@DepDelayMinutes,
        Scheduled_Arr_Time,@Actual_Arr_Time,@ArrDelayMinutes,
        Cancelled,@throw11,
        @CRS_Elapsed_Time,@Actual_Elapsed_Time,@AirTime,@throw12,Distance,
        @throw13,@throw14,@throw15,@throw16,@throw17
     )
    set Tail_Number               = if(@Tail_Number like '', NULL, @Tail_Number),
        Actual_Dep_Time           = if(@Actual_Dep_Time like '', NULL, @Actual_Dep_Time),
        Actual_Arr_Time           = if(@Actual_Arr_Time like '', NULL, @Actual_Arr_Time),
        AirTime                   = if(@AirTime like '', NULL, @AirTime),
        Actual_Elapsed_Time       = if(@Actual_Elapsed_Time like '', NULL, @Actual_Elapsed_Time),
        DepDelayMinutes           = if(@DepDelayMinutes like '', NULL, @DepDelayMinutes),
        ArrDelayMinutes           = if(@ArrDelayMinutes like '', NULL, @ArrDelayMinutes),
        CRS_Elapsed_Time          = if(@CRS_Elapsed_Time like '', NULL, @CRS_Elapsed_Time);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_06.csv' ignore into table Flight
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw1, @throw2, @throw3, Flight_Date,
        Airline_Name,@Tail_Number,Flight_Number,
        Origin, @throw5, @throw6, @throw7,
        Dest, @throw8, @throw9, @throw10,
        Scheduled_Dep_Time,@Actual_Dep_Time,@DepDelayMinutes,
        Scheduled_Arr_Time,@Actual_Arr_Time,@ArrDelayMinutes,
        Cancelled,@throw11,
        @CRS_Elapsed_Time,@Actual_Elapsed_Time,@AirTime,@throw12,Distance,
        @throw13,@throw14,@throw15,@throw16,@throw17
     )
    set Tail_Number               = if(@Tail_Number like '', NULL, @Tail_Number),
        Actual_Dep_Time           = if(@Actual_Dep_Time like '', NULL, @Actual_Dep_Time),
        Actual_Arr_Time           = if(@Actual_Arr_Time like '', NULL, @Actual_Arr_Time),
        AirTime                   = if(@AirTime like '', NULL, @AirTime),
        Actual_Elapsed_Time       = if(@Actual_Elapsed_Time like '', NULL, @Actual_Elapsed_Time),
        DepDelayMinutes           = if(@DepDelayMinutes like '', NULL, @DepDelayMinutes),
        ArrDelayMinutes           = if(@ArrDelayMinutes like '', NULL, @ArrDelayMinutes),
        CRS_Elapsed_Time          = if(@CRS_Elapsed_Time like '', NULL, @CRS_Elapsed_Time);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_07.csv' ignore into table Flight
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw1, @throw2, @throw3, Flight_Date,
        Airline_Name,@Tail_Number,Flight_Number,
        Origin, @throw5, @throw6, @throw7,
        Dest, @throw8, @throw9, @throw10,
        Scheduled_Dep_Time,@Actual_Dep_Time,@DepDelayMinutes,
        Scheduled_Arr_Time,@Actual_Arr_Time,@ArrDelayMinutes,
        Cancelled,@throw11,
        @CRS_Elapsed_Time,@Actual_Elapsed_Time,@AirTime,@throw12,Distance,
        @throw13,@throw14,@throw15,@throw16,@throw17
     )
    set Tail_Number               = if(@Tail_Number like '', NULL, @Tail_Number),
        Actual_Dep_Time           = if(@Actual_Dep_Time like '', NULL, @Actual_Dep_Time),
        Actual_Arr_Time           = if(@Actual_Arr_Time like '', NULL, @Actual_Arr_Time),
        AirTime                   = if(@AirTime like '', NULL, @AirTime),
        Actual_Elapsed_Time       = if(@Actual_Elapsed_Time like '', NULL, @Actual_Elapsed_Time),
        DepDelayMinutes           = if(@DepDelayMinutes like '', NULL, @DepDelayMinutes),
        ArrDelayMinutes           = if(@ArrDelayMinutes like '', NULL, @ArrDelayMinutes),
        CRS_Elapsed_Time          = if(@CRS_Elapsed_Time like '', NULL, @CRS_Elapsed_Time);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_08.csv' ignore into table Flight
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw1, @throw2, @throw3, Flight_Date,
        Airline_Name,@Tail_Number,Flight_Number,
        Origin, @throw5, @throw6, @throw7,
        Dest, @throw8, @throw9, @throw10,
        Scheduled_Dep_Time,@Actual_Dep_Time,@DepDelayMinutes,
        Scheduled_Arr_Time,@Actual_Arr_Time,@ArrDelayMinutes,
        Cancelled,@throw11,
        @CRS_Elapsed_Time,@Actual_Elapsed_Time,@AirTime,@throw12,Distance,
        @throw13,@throw14,@throw15,@throw16,@throw17
     )
    set Tail_Number               = if(@Tail_Number like '', NULL, @Tail_Number),
        Actual_Dep_Time           = if(@Actual_Dep_Time like '', NULL, @Actual_Dep_Time),
        Actual_Arr_Time           = if(@Actual_Arr_Time like '', NULL, @Actual_Arr_Time),
        AirTime                   = if(@AirTime like '', NULL, @AirTime),
        Actual_Elapsed_Time       = if(@Actual_Elapsed_Time like '', NULL, @Actual_Elapsed_Time),
        DepDelayMinutes           = if(@DepDelayMinutes like '', NULL, @DepDelayMinutes),
        ArrDelayMinutes           = if(@ArrDelayMinutes like '', NULL, @ArrDelayMinutes),
        CRS_Elapsed_Time          = if(@CRS_Elapsed_Time like '', NULL, @CRS_Elapsed_Time);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_09.csv' ignore into table Flight
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw1, @throw2, @throw3, Flight_Date,
        Airline_Name,@Tail_Number,Flight_Number,
        Origin, @throw5, @throw6, @throw7,
        Dest, @throw8, @throw9, @throw10,
        Scheduled_Dep_Time,@Actual_Dep_Time,@DepDelayMinutes,
        Scheduled_Arr_Time,@Actual_Arr_Time,@ArrDelayMinutes,
        Cancelled,@throw11,
        @CRS_Elapsed_Time,@Actual_Elapsed_Time,@AirTime,@throw12,Distance,
        @throw13,@throw14,@throw15,@throw16,@throw17
     )
    set Tail_Number               = if(@Tail_Number like '', NULL, @Tail_Number),
        Actual_Dep_Time           = if(@Actual_Dep_Time like '', NULL, @Actual_Dep_Time),
        Actual_Arr_Time           = if(@Actual_Arr_Time like '', NULL, @Actual_Arr_Time),
        AirTime                   = if(@AirTime like '', NULL, @AirTime),
        Actual_Elapsed_Time       = if(@Actual_Elapsed_Time like '', NULL, @Actual_Elapsed_Time),
        DepDelayMinutes           = if(@DepDelayMinutes like '', NULL, @DepDelayMinutes),
        ArrDelayMinutes           = if(@ArrDelayMinutes like '', NULL, @ArrDelayMinutes),
        CRS_Elapsed_Time          = if(@CRS_Elapsed_Time like '', NULL, @CRS_Elapsed_Time);


select '----------------------------------------------------------------' as '';
select 'drop abnormal data' as '';

DELETE FROM Flight
WHERE Flight.Airline_Name = 'DL'
and Flight.Tail_Number = 'N906DN'
and Flight.Flight_Number = '8797'
and Flight.Flight_Date = '2020-08-02'
and Flight.Origin = 'ANC';

select "Load Delay" as "";

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_09.csv' ignore into table Cause_of_Delay
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @Carrier_Delay, @Weather_Delay, @NAS_Delay, @Security_Delay, @LateAircraft_Delay
     )
    set Carrier_Delay               = if(@Carrier_Delay like '', NULL, @Carrier_Delay),
        Weather_Delay               = if(@Weather_Delay like '', NULL, @Weather_Delay),
        NAS_Delay                   = if(@NAS_Delay like '', NULL, @NAS_Delay),
        Security_Delay              = if(@Security_Delay like '', NULL, @Security_Delay),
        LateAircraft_Delay          = if(@LateAircraft_Delay like '', NULL, @LateAircraft_Delay);
        
load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_10.csv' ignore into table Cause_of_Delay
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @Carrier_Delay, @Weather_Delay, @NAS_Delay, @Security_Delay, @LateAircraft_Delay
     )
    set Carrier_Delay               = if(@Carrier_Delay like '', NULL, @Carrier_Delay),
        Weather_Delay               = if(@Weather_Delay like '', NULL, @Weather_Delay),
        NAS_Delay                   = if(@NAS_Delay like '', NULL, @NAS_Delay),
        Security_Delay              = if(@Security_Delay like '', NULL, @Security_Delay),
        LateAircraft_Delay          = if(@LateAircraft_Delay like '', NULL, @LateAircraft_Delay);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_11.csv' ignore into table Cause_of_Delay
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @Carrier_Delay, @Weather_Delay, @NAS_Delay, @Security_Delay, @LateAircraft_Delay
     )
    set Carrier_Delay               = if(@Carrier_Delay like '', NULL, @Carrier_Delay),
        Weather_Delay               = if(@Weather_Delay like '', NULL, @Weather_Delay),
        NAS_Delay                   = if(@NAS_Delay like '', NULL, @NAS_Delay),
        Security_Delay              = if(@Security_Delay like '', NULL, @Security_Delay),
        LateAircraft_Delay          = if(@LateAircraft_Delay like '', NULL, @LateAircraft_Delay);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_12.csv' ignore into table Cause_of_Delay
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @Carrier_Delay, @Weather_Delay, @NAS_Delay, @Security_Delay, @LateAircraft_Delay
     )
    set Carrier_Delay               = if(@Carrier_Delay like '', NULL, @Carrier_Delay),
        Weather_Delay               = if(@Weather_Delay like '', NULL, @Weather_Delay),
        NAS_Delay                   = if(@NAS_Delay like '', NULL, @NAS_Delay),
        Security_Delay              = if(@Security_Delay like '', NULL, @Security_Delay),
        LateAircraft_Delay          = if(@LateAircraft_Delay like '', NULL, @LateAircraft_Delay);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_01.csv' ignore into table Cause_of_Delay
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @Carrier_Delay, @Weather_Delay, @NAS_Delay, @Security_Delay, @LateAircraft_Delay
     )
    set Carrier_Delay               = if(@Carrier_Delay like '', NULL, @Carrier_Delay),
        Weather_Delay               = if(@Weather_Delay like '', NULL, @Weather_Delay),
        NAS_Delay                   = if(@NAS_Delay like '', NULL, @NAS_Delay),
        Security_Delay              = if(@Security_Delay like '', NULL, @Security_Delay),
        LateAircraft_Delay          = if(@LateAircraft_Delay like '', NULL, @LateAircraft_Delay);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_02.csv' ignore into table Cause_of_Delay
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @Carrier_Delay, @Weather_Delay, @NAS_Delay, @Security_Delay, @LateAircraft_Delay
     )
    set Carrier_Delay               = if(@Carrier_Delay like '', NULL, @Carrier_Delay),
        Weather_Delay               = if(@Weather_Delay like '', NULL, @Weather_Delay),
        NAS_Delay                   = if(@NAS_Delay like '', NULL, @NAS_Delay),
        Security_Delay              = if(@Security_Delay like '', NULL, @Security_Delay),
        LateAircraft_Delay          = if(@LateAircraft_Delay like '', NULL, @LateAircraft_Delay);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_03.csv' ignore into table Cause_of_Delay
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @Carrier_Delay, @Weather_Delay, @NAS_Delay, @Security_Delay, @LateAircraft_Delay
     )
    set Carrier_Delay               = if(@Carrier_Delay like '', NULL, @Carrier_Delay),
        Weather_Delay               = if(@Weather_Delay like '', NULL, @Weather_Delay),
        NAS_Delay                   = if(@NAS_Delay like '', NULL, @NAS_Delay),
        Security_Delay              = if(@Security_Delay like '', NULL, @Security_Delay),
        LateAircraft_Delay          = if(@LateAircraft_Delay like '', NULL, @LateAircraft_Delay);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_04.csv' ignore into table Cause_of_Delay
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @Carrier_Delay, @Weather_Delay, @NAS_Delay, @Security_Delay, @LateAircraft_Delay
     )
    set Carrier_Delay               = if(@Carrier_Delay like '', NULL, @Carrier_Delay),
        Weather_Delay               = if(@Weather_Delay like '', NULL, @Weather_Delay),
        NAS_Delay                   = if(@NAS_Delay like '', NULL, @NAS_Delay),
        Security_Delay              = if(@Security_Delay like '', NULL, @Security_Delay),
        LateAircraft_Delay          = if(@LateAircraft_Delay like '', NULL, @LateAircraft_Delay);
        
load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_05.csv' ignore into table Cause_of_Delay
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @Carrier_Delay, @Weather_Delay, @NAS_Delay, @Security_Delay, @LateAircraft_Delay
     )
    set Carrier_Delay               = if(@Carrier_Delay like '', NULL, @Carrier_Delay),
        Weather_Delay               = if(@Weather_Delay like '', NULL, @Weather_Delay),
        NAS_Delay                   = if(@NAS_Delay like '', NULL, @NAS_Delay),
        Security_Delay              = if(@Security_Delay like '', NULL, @Security_Delay),
        LateAircraft_Delay          = if(@LateAircraft_Delay like '', NULL, @LateAircraft_Delay);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_06.csv' ignore into table Cause_of_Delay
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @Carrier_Delay, @Weather_Delay, @NAS_Delay, @Security_Delay, @LateAircraft_Delay
     )
    set Carrier_Delay               = if(@Carrier_Delay like '', NULL, @Carrier_Delay),
        Weather_Delay               = if(@Weather_Delay like '', NULL, @Weather_Delay),
        NAS_Delay                   = if(@NAS_Delay like '', NULL, @NAS_Delay),
        Security_Delay              = if(@Security_Delay like '', NULL, @Security_Delay),
        LateAircraft_Delay          = if(@LateAircraft_Delay like '', NULL, @LateAircraft_Delay);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_07.csv' ignore into table Cause_of_Delay
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @Carrier_Delay, @Weather_Delay, @NAS_Delay, @Security_Delay, @LateAircraft_Delay
     )
    set Carrier_Delay               = if(@Carrier_Delay like '', NULL, @Carrier_Delay),
        Weather_Delay               = if(@Weather_Delay like '', NULL, @Weather_Delay),
        NAS_Delay                   = if(@NAS_Delay like '', NULL, @NAS_Delay),
        Security_Delay              = if(@Security_Delay like '', NULL, @Security_Delay),
        LateAircraft_Delay          = if(@LateAircraft_Delay like '', NULL, @LateAircraft_Delay);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_08.csv' ignore into table Cause_of_Delay
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @Carrier_Delay, @Weather_Delay, @NAS_Delay, @Security_Delay, @LateAircraft_Delay
     )
    set Carrier_Delay               = if(@Carrier_Delay like '', NULL, @Carrier_Delay),
        Weather_Delay               = if(@Weather_Delay like '', NULL, @Weather_Delay),
        NAS_Delay                   = if(@NAS_Delay like '', NULL, @NAS_Delay),
        Security_Delay              = if(@Security_Delay like '', NULL, @Security_Delay),
        LateAircraft_Delay          = if(@LateAircraft_Delay like '', NULL, @LateAircraft_Delay);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_09.csv' ignore into table Cause_of_Delay
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @throw,
        @throw, @throw, @throw, @throw, @throw,
        @Carrier_Delay, @Weather_Delay, @NAS_Delay, @Security_Delay, @LateAircraft_Delay
     )
    set Carrier_Delay               = if(@Carrier_Delay like '', NULL, @Carrier_Delay),
        Weather_Delay               = if(@Weather_Delay like '', NULL, @Weather_Delay),
        NAS_Delay                   = if(@NAS_Delay like '', NULL, @NAS_Delay),
        Security_Delay              = if(@Security_Delay like '', NULL, @Security_Delay),
        LateAircraft_Delay          = if(@LateAircraft_Delay like '', NULL, @LateAircraft_Delay);

select "Load Cancel" as "";

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_09.csv' ignore into table Cause_of_Cancellation
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @Cancellation_Code,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     )
     set Cancellation_Code               = if(@Cancellation_Code like "", NULL, @Cancellation_Code);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_10.csv' ignore into table Cause_of_Cancellation
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @Cancellation_Code,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     )
     set Cancellation_Code               = if(@Cancellation_Code like "", NULL, @Cancellation_Code);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_11.csv' ignore into table Cause_of_Cancellation
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @Cancellation_Code,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     )
     set Cancellation_Code               = if(@Cancellation_Code like "", NULL, @Cancellation_Code);
     
load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_19_12.csv' ignore into table Cause_of_Cancellation
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @Cancellation_Code,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     )
     set Cancellation_Code               = if(@Cancellation_Code like "", NULL, @Cancellation_Code);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_01.csv' ignore into table Cause_of_Cancellation
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @Cancellation_Code,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     )
     set Cancellation_Code               = if(@Cancellation_Code like "", NULL, @Cancellation_Code);
     
load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_02.csv' ignore into table Cause_of_Cancellation
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @Cancellation_Code,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     )
     set Cancellation_Code               = if(@Cancellation_Code like "", NULL, @Cancellation_Code);
     
load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_03.csv' ignore into table Cause_of_Cancellation
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @Cancellation_Code,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     )
     set Cancellation_Code               = if(@Cancellation_Code like "", NULL, @Cancellation_Code);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_04.csv' ignore into table Cause_of_Cancellation
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @Cancellation_Code,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     )
     set Cancellation_Code               = if(@Cancellation_Code like "", NULL, @Cancellation_Code);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_05.csv' ignore into table Cause_of_Cancellation
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @Cancellation_Code,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     )
     set Cancellation_Code               = if(@Cancellation_Code like "", NULL, @Cancellation_Code);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_06.csv' ignore into table Cause_of_Cancellation
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @Cancellation_Code,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     )
     set Cancellation_Code               = if(@Cancellation_Code like "", NULL, @Cancellation_Code);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_07.csv' ignore into table Cause_of_Cancellation
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @Cancellation_Code,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     )
     set Cancellation_Code               = if(@Cancellation_Code like "", NULL, @Cancellation_Code);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_08.csv' ignore into table Cause_of_Cancellation
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @Cancellation_Code,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     )
     set Cancellation_Code               = if(@Cancellation_Code like "", NULL, @Cancellation_Code);

load data local infile './BTS_source_data/820815533_T_ONTIME_REPORTING_20_09.csv' ignore into table Cause_of_Cancellation
     fields terminated by ','
     enclosed by '"'
     lines terminated by '\n'
     ignore 1 lines
     (
        @throw, @throw, @throw, Flight_Date,
        Airline_Name,Tail_Number,Flight_Number,
        Origin, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw,
        @throw, @throw,  @throw,
        @throw, @throw, @throw,
        @throw, @Cancellation_Code,
        @throw, @throw, @throw, @throw, @throw,
        @throw, @throw, @throw, @throw, @throw
     )
     set Cancellation_Code               = if(@Cancellation_Code like "", NULL, @Cancellation_Code);










-- remove nulls from cancellation and delay table
-- clean up

-- mysql> select count(*) from Cause_of_Cancellation where Cancellation_Code is null;
-- +----------+
-- | count(*) |
-- +----------+
-- |  5743307 |
-- +----------+

-- AFTER total COUNT : 305430

select '----------------------------------------------------------------' as '';
select 'Clean Up NULL in Delay' as '';
delete from Cause_of_Cancellation where Cancellation_Code is NULL;





-- mysql> select count(*) from Cause_of_Delay where Carrier_Delay is null;
-- +----------+
-- | count(*) |
-- +----------+
-- |  5294396 |
-- +----------+

-- AFTER total COUNT : 754341
select '----------------------------------------------------------------' as '';
select 'Clean Up NULL in Cancellation' as '';
delete from Cause_of_Delay where Carrier_Delay is NULL;

select '----------------------------------------------------------------' as '';
select 'Set country to US from Airport table' as '';
update Airport set Country = 'USA';

select '----------------------------------------------------------------' as '';
select 'Assign IsDelayed key from Cause_of_Delay table' as '';
UPDATE Flight
        RIGHT JOIN
    Cause_of_Delay ON Flight.Airline_Name = Cause_of_Delay.Airline_Name 
    and Flight.Tail_Number = Cause_of_Delay.Tail_Number
    and Flight.Flight_Number = Cause_of_Delay.Flight_Number
    and Flight.Flight_Date = Cause_of_Delay.Flight_Date
    and Flight.Origin = Cause_of_Delay.Origin
SET 
    isdelayed = 1;



-- same as select count(*) from flight where arrdelayminutes >= '15';

-- abnormal data record for delay time
-- +--------------+-------------+---------------+-------------+--------+------+-----------+-----------+--------------------+--------------------+-----------------+-----------------+-----------------+-----------------+------------------+---------------------+---------+----------+
-- | Airline_Name | Tail_Number | Flight_Number | Flight_Date | Origin | Dest | Cancelled | IsDelayed | Scheduled_Dep_Time | Scheduled_Arr_Time | Actual_Dep_Time | Actual_Arr_Time | DepDelayMinutes | ArrDelayMinutes | CRS_Elapsed_Time | Actual_Elapsed_Time | AirTime | Distance |
-- +--------------+-------------+---------------+-------------+--------+------+-----------+-----------+--------------------+--------------------+-----------------+-----------------+-----------------+-----------------+------------------+---------------------+---------+----------+
-- | DL           | N906DN      | 8797          | 2020-08-02  | ANC    | SEA  |      0.00 |         0 |                750 |               1218 |            1629 |            2047 |          519.00 |          509.00 |           208.00 |              198.00 |  179.00 |  1448.00 |
-- +--------------+-------------+---------------+-------------+--------+------+-----------+-----------+--------------------+--------------------+-----------------+-----------------+-----------------+-----------------+------------------+---------------------+---------+----------+

