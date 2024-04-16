USE my_test;

CREATE TABLE employee__schedule (
                                    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
                                    employee_id INT,
                                    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
                                    start_time TIME,
                                    end_time TIME,
                                    service_type VARCHAR(255)
);
 

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


SELECT
    e.name AS 'Employee name',
        TIME_FORMAT(s.start_time, '%H:%i') AS 'Start Time',
        TIME_FORMAT(s.end_time, '%H:%i') AS 'End Time',
        s.name AS 'Kind of service'
FROM
    employee e
        JOIN
    employee_service es ON e.employee_id = es.employee_id
        JOIN
    service s ON es.service_id = s.id;
