# SQL_Employee_Analysis
Using a sql query to answer questions about employee data. 

##  ERD Table 
The first thing I did to tackle this problem was create an ERD table so that I could visualize connections between the CSV files

# Data Types
To create the ERD tables I first defined the Data Types of each column. This was relatively straightforward  for most columns with the exception of: birth_date and hire_date in the employees csv file. To read these columns into SQL as data type DATE their format had to be changed to a custom format in excel of yyyy-mm-dd

# Primary Keys 
Having all the Data Types defined I was ready to move on to identifying the primary keys for each file. 
I made sure 3 criteria were met when selecting Primary Keys 
1. Primary Keys are unique
2. Primary Keys are unchanging
3. Primary Keys cannot be null

Not all of the tables had columns that met all 3 criteria so in some tables composite keys were used. 

The last steps in creating the ERD were establishing relationships between the data tables &
Checking if the relationships were One to One, One to Many, or Many to Many

The ERD was created using a website online called QuickDBD. A picture of the ERD is in this repo

## Table Schemas
After I created the ERD I used the same logic to write code for table schemas and imported the tables into SQL

## Querying Data
After importing the data into SQL I began to query it. Here are a few of the things that I queried.
1.  I joined the employee and salaries to get a list the following details of each employee: employee number, last name, first name, sex, and salary. 
2.  Next I listed first name, last name, and hire date for employees who were hired in 1986. This all came from the employee CSV.
3.  Next I listed the following information for each manager: department number, department name, the manager's employee number, last name, first name.
4.  Next I listed the department of each employee with: first name, last name, employee number, and dept name

There are more queries in the sql code
