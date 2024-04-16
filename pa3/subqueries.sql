 
USE my_test;



-- НЕ КОРОЛЬОВАНІ 

SELECT employee_id FROM appointment WHERE employee_id IN (SELECT employee_id FROM employee WHERE position = 'Стиліст' )
                                      AND employee_id NOT IN (SELECT employee_id FROM employee WHERE salary = '3000');
SELECT * FROM appointment WHERE  employee_id NOT IN (SELECT employee_id FROM employee WHERE salary = '3000') ;

SELECT * FROM appointment WHERE EXISTS (SELECT 1 FROM appointment WHERE datetime = '2024-03-07 10:00:00'
                                                                    AND status = 'Завершено');

SELECT * FROM appointment WHERE NOT EXISTS (SELECT 1 FROM appointment WHERE status = 'Триває');


-- non c update
UPDATE service
SET price = 30
WHERE id NOT IN (
    SELECT id FROM (
                       SELECT id FROM service WHERE id != 1 AND id != 5
                   ) AS subquery
);

UPDATE service SET price = 30 WHERE price IN (
    SELECT id FROM (
                       SELECT id FROM service WHERE id != 1 AND id != 5
                   ) AS subquery
);

UPDATE service
SET price = 30
WHERE id NOT IN (
    SELECT id FROM (SELECT id FROM service WHERE id != 1 AND id != 5) AS subquery
);


DELETE FROM appointment WHERE id NOT IN (SELECT appointment_id FROM payment);



-- КОРОЛЬОВАНІ 
SELECT * FROM appointment
WHERE service_id IN (SELECT id FROM service WHERE duration >= 60 );

SELECT * FROM appointment
WHERE service_id NOT IN (SELECT id FROM service WHERE duration < 60);


SELECT * FROM customer cust
WHERE EXISTS (
    SELECT * FROM appointment appoint
    WHERE appoint.customer_id = cust.id AND appoint.status = 'Завершений'
);


SELECT * FROM customer custo
WHERE NOT EXISTS (
    SELECT * FROM appointment appoint
    WHERE appoint.customer_id = custo.id AND appoint.status = 'Завершений'
);

SELECT * FROM appointment WHERE status = 'Завершений';  -- ------------------------------------------------------------------------




UPDATE service
SET price = price * 0.9
WHERE id IN (SELECT service_id FROM services2products WHERE product_id = 4);


UPDATE appointment SET status = 'Скасований'
WHERE customer_id NOT IN (SELECT  customer_id FROM payment);


UPDATE payment
SET method = 'Часткова'
WHERE NOT EXISTS (
    SELECT 1
    FROM appointment
    WHERE appointment.id != payment.appointment_id
);


UPDATE payment
SET method = 'Часткова'
WHERE NOT EXISTS (
    SELECT 1
    FROM appointment
    WHERE appointment.id = payment.appointment_id
);


DELETE FROM service
WHERE id NOT IN (SELECT DISTINCT service_id FROM employee_service);

DELETE FROM appointment
WHERE id NOT IN (SELECT appointment_id FROM payment);


DELETE FROM employee
WHERE NOT EXISTS (
    SELECT 1
    FROM employee_service
    WHERE employee_service.employee_id = employee.employee_id
);


DELETE FROM payment
WHERE  EXISTS ( SELECT 1 FROM appointment
                WHERE appointment.id != payment.appointment_id
);


SELECT product.name
FROM product
WHERE product.name = 'Крем'

UNION

SELECT service.name
FROM service
;



SELECT customer.name, customer.phone, customer.address
FROM customer
WHERE id > 10

UNION ALL

SELECT service.name, NULL, NULL
FROM service
WHERE id = 1;


SELECT customer.name, customer.phone, customer.address
FROM customer
WHERE id > 10

EXCEPT


SELECT service.name, NULL, NULL
FROM service
WHERE id = 1;

SELECT name
FROM service
WHERE id = 1;

UPDATE service
SET price = 30
WHERE price = 40.00
  AND NOT EXISTS (
    SELECT 1
    FROM (SELECT * FROM service) AS temp
    WHERE temp.price = 40.00
);


UPDATE service
SET price = 30
WHERE price = 40.00
  AND EXISTS (
    SELECT 1
    FROM (SELECT * FROM service) AS temp
    WHERE temp.price = 40.00
);



DELETE FROM payment
WHERE EXISTS (
    SELECT * FROM payment WHERE date = '2024-03-12'
);
COMMIT;

DELETE FROM payment
WHERE NOT EXISTS (
    SELECT * FROM payment WHERE date = '2024-03-12'
);
ROLLBACK; --  /////////////////////////////////////////////////

DELETE FROM payment
WHERE date = (
    SELECT date FROM payment WHERE date = '2024-03-12'
);

DELETE FROM product
WHERE EXISTS (
    SELECT 1
    FROM (SELECT * FROM product) AS temp
    WHERE temp.cost > 15.00
);

DELETE FROM product
WHERE NOT EXISTS (
    SELECT 1
    FROM (SELECT * FROM product) AS temp
    WHERE temp.cost > 15.00
);

SELECT 2;

DELETE FROM product
WHERE  cost = 15.00;-- --------------------------------------------------------------------------------------------------------------------


SELECT serv.name AS service_name, prod.name AS product_name
FROM service serv
         JOIN services2products s2p ON serv.id = s2p.service_id
         JOIN product prod ON s2p.product_id = prod.id
    LIMIT 3;


-- змінити зірочки 
-- додати підзапити  там де їх нема


SELECT DISTINCT e.name AS massage_therapist FROM employee e
                                                     JOIN employee_service es ON e.employee_id = es.employee_id
WHERE es.service_id IN (SELECT id FROM service
                        WHERE name LIKE '%Масаж%')
  AND e.employee_id NOT IN (SELECT DISTINCT a.employee_id FROM appointment a
                            WHERE DATE(a.datetime) = '2024-04-23'
    );


SELECT   p.name AS product_name, COUNT(sp.product_id) AS required_products
FROM appointment a
         JOIN service s ON a.service_id = s.id
         JOIN services2products sp ON s.id = sp.service_id
         JOIN product p ON sp.product_id = p.id
WHERE DATE(a.datetime) BETWEEN '2004-03-21' AND '2025-03-27'
GROUP BY s.id, s.name, p.id, p.name;

