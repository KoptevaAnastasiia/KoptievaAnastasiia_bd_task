contents:

pa1/

console.sql

pa2/


pa3/

subqueries.sql 

pa4/

procedures.sql

pa5/

views.sql


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
 
