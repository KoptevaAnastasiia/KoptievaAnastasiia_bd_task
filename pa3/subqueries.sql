CREATE SCHEMA my_test;
USE my_test;


-- Select employee_ids of stylists who do not earn a salary of 3000.
SELECT employee_id
FROM appointment
WHERE employee_id IN (SELECT employee_id FROM employee WHERE position = 'Stylist')
  AND employee_id NOT IN (SELECT employee_id FROM employee WHERE salary = '3000');

-- Select all appointments where the employee_id does not have a salary of 3000.
SELECT *
FROM appointment
WHERE employee_id NOT IN (SELECT employee_id FROM employee WHERE salary = '3000');

-- Select all appointments that have at least one completed appointment at a specific datetime and status.
SELECT *
FROM appointment
WHERE EXISTS (SELECT 1 FROM appointment WHERE datetime = '2024-03-07 10:00:00' AND status = 'Completed');

-- Select all appointments where there is no appointment with status 'Ongoing'.
SELECT *
FROM appointment
WHERE NOT EXISTS (SELECT 1 FROM appointment WHERE status = 'Ongoing');

-- Update prices of services to 30 where the id is not 1 or 5.
UPDATE service
SET price = 30
WHERE id NOT IN (
    SELECT id FROM (
                       SELECT id FROM service WHERE id != 1 AND id != 5
                   ) AS subquery
);

-- Update prices of services to 30 where the price is in a specific set of ids not including 1 or 5.
UPDATE service SET price = 30
WHERE price IN (
    SELECT id FROM (
                       SELECT id FROM service WHERE id != 1 AND id != 5
                   ) AS subquery
);

-- Delete appointments where the id is not associated with any appointment_id in the payment table.
DELETE FROM appointment
WHERE id NOT IN (SELECT appointment_id FROM payment);

-- Select all appointments where the service_id corresponds to services with a duration of 60 minutes or more.
SELECT *
FROM appointment
WHERE service_id IN (SELECT id FROM service WHERE duration >= 60);

-- Select all appointments where the service_id does not correspond to services with a duration less than 60 minutes.
SELECT *
FROM appointment
WHERE service_id NOT IN (SELECT id FROM service WHERE duration < 60);

-- Select all customers who have at least one completed appointment.
SELECT *
FROM customer
WHERE EXISTS (
    SELECT *
    FROM appointment
    WHERE appointment.customer_id = customer.id AND appointment.status = 'Completed'
);

-- Select all customers who do not have any completed appointments.
SELECT *
FROM customer
WHERE NOT EXISTS (
    SELECT *
    FROM appointment
    WHERE appointment.customer_id = customer.id AND appointment.status = 'Completed'
);

-- Select all appointments with status 'Completed'.
SELECT *
FROM appointment
WHERE status = 'Completed';

-- Update prices of services to 90% of their current price where the service_id is associated with a specific product_id.
UPDATE service
SET price = price * 0.9
WHERE id IN (SELECT service_id FROM services2products WHERE product_id = 4);

-- Update appointment status to 'Cancelled' for appointments where the customer has not made a payment.
UPDATE appointment
SET status = 'Cancelled'
WHERE customer_id NOT IN (SELECT customer_id FROM payment);

-- Update payment method to 'Partial' where there is no corresponding appointment.
UPDATE payment
SET method = 'Partial'
WHERE NOT EXISTS (
    SELECT 1
    FROM appointment
    WHERE appointment.id = payment.appointment_id
);

-- Delete services not associated with any employee_service.
DELETE FROM service
WHERE id NOT IN (SELECT DISTINCT service_id FROM employee_service);

-- Delete appointments not associated with any payment.
DELETE FROM appointment
WHERE id NOT IN (SELECT appointment_id FROM payment);

-- Delete employees not associated with any employee_service.
DELETE FROM employee
WHERE NOT EXISTS (
    SELECT 1
    FROM employee_service
    WHERE employee_service.employee_id = employee.employee_id
);

-- Delete payments where there exists an appointment that does not match its appointment_id.
DELETE FROM payment
WHERE EXISTS (
    SELECT 1
    FROM appointment
    WHERE appointment.id != payment.appointment_id
);

-- Select product names where the name is 'Cream' and service names.
SELECT product.name
FROM product
WHERE product.name = 'Cream'

UNION

SELECT service.name
FROM service;

-- Select customer information with IDs greater than 10, and service names where the ID is 1.
SELECT customer.name, customer.phone, customer.address
FROM customer
WHERE id > 10

UNION ALL

SELECT service.name, NULL, NULL
FROM service
WHERE id = 1;

-- Select customer information with IDs greater than 10 except service names where the ID is 1.
SELECT customer.name, customer.phone, customer.address
FROM customer
WHERE id > 10

EXCEPT

SELECT service.name, NULL, NULL
FROM service
WHERE id = 1;

-- Select service name where the ID is 1.
SELECT name
FROM service
WHERE id = 1;

-- Update service prices to 30 where the price is currently 40 and does not exist in the subquery.
UPDATE service
SET price = 30
WHERE price = 40.00
  AND NOT EXISTS (
    SELECT 1
    FROM (SELECT * FROM service) AS temp
    WHERE temp.price = 40.00
);

-- Update service prices to 30 where the price is currently 40 and exists in the subquery.
UPDATE service
SET price = 30
WHERE price = 40.00
  AND EXISTS (
    SELECT 1
    FROM (SELECT * FROM service) AS temp
    WHERE temp.price = 40.00
);

-- Delete payments with a specific date.
DELETE FROM payment
WHERE EXISTS (
    SELECT * FROM payment WHERE date = '2024-03-12'
);

-- Commit changes to the database.
COMMIT;

-- Delete payments without a specific date.
DELETE FROM payment
WHERE NOT EXISTS (
    SELECT * FROM payment WHERE date = '2024-03-12'
);

-- Rollback changes made to the database.
ROLLBACK;

-- Delete payments where the date matches a subquery selecting the same date from the payment table.
DELETE FROM payment
WHERE date = (
    SELECT date FROM payment WHERE date = '2024-03-12'
);

-- Delete products where they are more expensive than 15.00.
DELETE FROM product
WHERE EXISTS (
    SELECT 1
    FROM (SELECT * FROM product) AS temp
    WHERE temp.cost > 15.00
);

-- Delete products where they are not more expensive than 15.00.
DELETE FROM product
WHERE NOT EXISTS (
    SELECT 1
    FROM (SELECT * FROM product) AS temp
    WHERE temp.cost > 15.00
);

-- Select the number 2.
SELECT 2;

-- Delete products with a price of 15.00.
DELETE FROM product
WHERE cost = 15.00;

-- Select service_name and product_name limited to 3 rows.
SELECT serv.name AS service_name, prod.name AS product_name
FROM service serv
         JOIN services2products s2p ON serv.id = s2p.service_id
         JOIN product prod ON s2p.product_id = prod.id
LIMIT 3;

-- Select distinct massage therapists' names who work with massage services but are not working on a specific date.
SELECT DISTINCT e.name AS massage_therapist
FROM employee e
         JOIN employee_service es ON e.employee_id = es.employee_id
WHERE es.service_id IN (SELECT id FROM service WHERE name LIKE '%Massage%')
  AND e.employee_id NOT IN (SELECT DISTINCT a.employee_id FROM appointment a WHERE DATE(a.datetime) = '2024-04-23');

-- Select product_name and count of its usage within a specified date range.
SELECT p.name AS product_name, COUNT(sp.product_id) AS required_products
FROM appointment a
         JOIN service s ON a.service_id = s.id
         JOIN services2products sp ON s.id = sp.service_id
         JOIN product p ON sp.product_id = p.id
WHERE DATE(a.datetime) BETWEEN '2004-03-21' AND '2025-03-27'
GROUP BY s.id, s.name, p.id, p.name;
