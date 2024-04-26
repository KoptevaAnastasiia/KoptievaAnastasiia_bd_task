Purpose
This database will allow you to effectively organize information about clients, services, employees and much more, contributing to the optimal management of a beauty salon.

contents:

pa1/console.sql
This SQL script creates a database for a beauty salon with the following tables:

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
 



pa2/


pa3/subqueries.sql 
This SQL file contains various queries for managing the beauty salon database:

Queries for selecting staff

Queries for selecting records for services

Checking the availability of records by a certain date and status

Queries for updating prices

Requests to delete records 

Requests for information

Queries for updating payments

Queries for combining and filtering data


pa4/procedures.sql

pa5/views.sql
This file contains the employee schedule, where each employee is assigned a list of services with defined start and end times, as well as the type of service. Each employee has its own identifier(employee_id) and is associated with the employee table. TheINSERT INTO query fills the employee_schedule1 table with information about the employee schedule using data from the employee_service and service tables, where each service has its own type and identifier.

 
