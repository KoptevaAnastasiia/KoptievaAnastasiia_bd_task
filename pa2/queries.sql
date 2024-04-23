CREATE SCHEMA my_test23;
USE my_test23;

-- Select distinct massage therapists' names who work with massage services but are not working on a specific date.
SELECT DISTINCT e.name AS massage_therapist
FROM employee e
         JOIN employee_service es ON e.employee_id = es.employee_id
WHERE es.service_id IN (SELECT id FROM service WHERE name LIKE '%Massage%')
  AND e.employee_id NOT IN (SELECT DISTINCT a.employee_id FROM appointment a WHERE DATE(a.datetime) BETWEEN '2004-03-21' AND '2025-03-27');

-- Select product_name and count of its usage within a specified date range.
SELECT p.name AS product_name, COUNT(sp.product_id) AS required_products
FROM appointment a
         JOIN service s ON a.service_id = s.id
         JOIN services2products sp ON s.id = sp.service_id
         JOIN product p ON sp.product_id = p.id
WHERE DATE(a.datetime) BETWEEN '2004-03-21' AND '2025-03-27'
GROUP BY s.id, s.name, p.id, p.name;
