 

<h1 align="left">Purpose:</h1>
This database will allow you to effectively organize information about clients, services, employees and much more, contributing to the optimal management of a beauty salon.

 
<h1 align="left">Contents:</h1>


<h2 align="left">pa1/console.sql:</h2>
 
This SQL script creates a database for a beauty salon with the following tables and relationship:

1 service: Stores information about the services provided by the salon, such as name, description, duration, price, start and end time.

2 product: Contains information about the products that are sold in the salon, such as name, description, quantity in stock, and price.

3 customer: A table to store customer data, including name, phone, email, and address.

4 employee: Contains information about the salon's employees, such as name, contact information, position, and salary.

5 appointment: Records data about customer appointments for services, indicating the customer, service, employee, date, and status of the appointment.

7 payment: Stores information about payments for services, including the amount, payment method, and payment date.

8 services2products: A many-to-many table that establishes a relationship between services and products used or sold in connection with those services.

9 employee_service: A many-to-many table specifying which employees can perform which services.


1 The relationship between appointment and customer:
Each record in the appointment table contains a customer_id field that refers to a unique customer identifier(id) in the customer table. This allows you to identify the client who makes a particular record.

2 The relationship between appointment and service:
Each record in the appointment table has a service_id field that refers to the unique service identifier(id) in the service table. This indicates which service has been scheduled for that record.

3 The relationship between appointment and employee:
The employee_id field in the appointment table refers to the unique employee identifier(id) in the employee table. This determines which employee will perform the scheduled service for the customer.

4 Relationship between payment and appointment:
Each record in the payment table has an appointment_id field that refers to a unique record identifier in the appointment table. This allows you to track payments by specific customer records.

5 Relationship between payment and customer:
The customer_id field in the payment table refers to a unique customer identifier(id) in the customer table. This helps to track payments made by a particular customer.

6 Additional relationship in the  appointment table with employee:
There is an additional relationship in the appointment table where the employee_id field also refers to the unique employee identifier(id) in the employee table. This relationship allows you to determine which employees are responsible for specific client records.
 



<h2 align="left">pa2/queries.sql:</h2>

Contains 2 queries:

Query 1: Select unique names of hairdressers who work with massage services but are not working on a specific date.
Query 2: Selection of product names and their number of uses during a certain date range.
<h2 align="left">pa3/subqueries.sql :</h2>
 
This SQL file contains various queries for managing the beauty salon database:

Queries for selecting staff

Queries for selecting records for services

Checking the availability of records by a certain date and status

Queries for updating prices

Requests to delete records 

Requests for information

Queries for updating payments

Queries for combining and filtering data

<h2 align="left">pa4/procedures.sql:</h2>

This SQL file contains a procedure to count the number of employees with corresponding salaries in the beauty salon database. Here is a brief description of its contents:

<h2 align="left">pa5/views.sql:</h2>
 
This file contains the employee schedule, where each employee is assigned a list of services with defined start and end times, as well as the type of service. Each employee has its own identifier(employee_id) and is associated with the employee table. 


<h2 align="left"> Deploy project instruction :</h2>
1 Ensure your environment is configured properly


2 Clone a repository using a HTTPS or SSH

 <h1 align="left">Languages:</h1>
<p align="left"> <a href="https://www.mysql.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original-wordmark.svg" alt="mysql" width="40" height="40"/> </a> </p>
