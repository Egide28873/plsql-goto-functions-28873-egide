Employee Payroll Management System

Student Information

Student Name: Egide Niyonzima

Student ID: 28873

Course: Database Development with PL/SQL

Course Code: INSY 8311

Assignment: Individual Assignment III

Project: Employee Payroll Management System

Project Description

This project is a simple Employee Payroll Management System developed using Oracle PL/SQL.

The system stores information about employees, departments, and payroll. It also demonstrates the use of GOTO statements and PL/SQL functions.

Database Tables

The project uses three tables:

departments - stores department information.

employees - stores employee information such as name, salary, department, and hire date.

payroll - stores payroll information such as basic salary, tax, and net salary.

GOTO Statements

The GOTO section contains:

A1: Number/salary classifier using GOTO.

A2: Employee salary review using GOTO.

A3: Illegal GOTO example and corrected version.

A4: Rewrite of the salary review without GOTO.

Functions

The project contains the following functions:

B1: fn_annual_salary - calculates annual salary.

B2: fn_years_of_service - calculates years of service.

B3: fn_calculate_tax - calculates employee tax.

B4: fn_dept_name - returns the employee department name.

C1: fn_validate_payroll - validates payroll information.

Testing

The functions are tested using:

test_functions.sql

B5_functions_in_select.sql

test_validate_payroll.sql

The functions are also used inside a SQL SELECT statement.

How to Run the Project

Open Oracle SQL Developer.

Run 00_setup/create_tables.sql.

Run the files in 01_goto.

Run the function files in 02_functions.

Run the test files in 03_tests.

Check the output in the DBMS Output or Script Output window.

Tools Used

Oracle Database

Oracle SQL Developer

PL/SQL

Git

GitHub

AI Usage

I used an AI assistant to help me understand some PL/SQL concepts and to guide me when I had errors. I tested the code myself in Oracle SQL Developer and made sure I understood how the code works.
