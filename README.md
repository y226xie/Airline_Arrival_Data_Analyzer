# group_6_BTS

This is the ECE356 project for Group 6 with data in 15-BTS(Airline Travel Data)

For loading csv into database:
    we first use look up table to convert csv VALUES into WORDS (python)
    then populate into database tables (sql)

For client application:
    we would choose react + Nodejs as platform

For backend:
    we might use python

For checking the source url
    https://www.transtats.bts.gov/DL_SelectFields.asp?gnoyr_VQ=FGJ&QO_fu146_anzr=b0-gvzr

Usage:
    To Create DB
    Run db_setup.sql to setup all tables
    Then Run loaddata.sql to populate all needed data


https://stackoverflow.com/questions/59993844/error-loading-local-data-is-disabled-this-must-be-enabled-on-both-the-client

Use the link above to load the file into local:

Frist:
	mysql --local-infile=1 -u root -p
Then:
	SET GLOBAL local_infile=1;
Lastly:
	create database group6;
	source db_setup.sql
	source loaddata.sql

pip3 install -r requirements.txt