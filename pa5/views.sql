USE my_test;

CREATE TABLE employee__schedule (
                                    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
                                    employee_id INT,
                                    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
                                    start_time TIME,
                                    end_time TIME,
                                    service_type VARCHAR(255) 
);

-- Вставка даних у таблицю employee__schedule
INSERT INTO employee__schedule (employee_id, start_time, end_time, service_type)
SELECT
    es.employee_id,
    s.start_time,
    s.end_time,
    s.name AS service_type
FROM
    employee_service es
        JOIN
    service s ON es.service_id = s.id;

-- Вибірка даних з об'єднанням таблиць для перевірки вставки
SELECT
    e.name AS 'Employee name',
    TIME_FORMAT(es.start_time, '%H:%i') AS 'Start Time',
    TIME_FORMAT(es.end_time, '%H:%i') AS 'End Time',
    es.service_type AS 'Kind of service'
FROM
    employee e
        JOIN
    employee__schedule es ON e.employee_id = es.employee_id;




USE my_test;

-- Оновлення значень стовпця 'provided_services' в таблиці employee__schedule
UPDATE employee__schedule
SET provided_services = (
    SELECT GROUP_CONCAT(DISTINCT s.name ORDER BY s.name SEPARATOR ', ')
    FROM employee_service es
             JOIN service s ON es.service_id = s.id
    WHERE es.employee_id = employee__schedule.employee_id
)
WHERE employee_id IN (SELECT employee_id FROM employee_service);





-- Оновлений запит INSERT для заповнення таблиці зі списком послуг для кожного працівника
INSERT INTO employee__schedule (employee_id, start_time, end_time, service_type, provided_services)
SELECT
    es.employee_id,
    s.start_time,
    s.end_time,
    s.name AS service_type,
    GROUP_CONCAT(DISTINCT s.name ORDER BY s.name SEPARATOR ', ') AS provided_services
FROM
    employee_service es
        JOIN
    service s ON es.service_id = s.id
        JOIN
    employee_position p ON es.employee_id = p.employee_id
GROUP BY
    es.employee_id, s.start_time, s.end_time, s.name;

-- Вибірка даних з employee__schedule зі списком послуг для кожного працівника
SELECT
    e.name AS 'Employee name',
    TIME_FORMAT(es.start_time, '%H:%i') AS 'Start Time',
    TIME_FORMAT(es.end_time, '%H:%i') AS 'End Time',
    es.service_type AS 'Kind of service',
    es.provided_services AS 'Provided Services'
FROM
    employee e
        JOIN
    employee__schedule es ON e.employee_id = es.employee_id
ORDER BY
    e.name, es.start_time;
