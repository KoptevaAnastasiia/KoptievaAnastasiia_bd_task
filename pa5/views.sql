USE my_test34;
CREATE TABLE employee_schedule1 (
                                    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
                                    employee_id INT,
                                    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
                                    start_time TIME,
                                    end_time TIME,
                                    service_type VARCHAR(255),
                                    service_list VARCHAR(1024)
);


 


SELECT
      e.name AS 'Employee name',
      TIME_FORMAT(es1.start_time, '%H:%i') AS 'Start Time',
      TIME_FORMAT(es1.end_time, '%H:%i') AS 'End Time',
      es1.service_type AS 'Service List',
      es1.service_list AS 'Kind of service'
  FROM
      employee e
          JOIN (
          SELECT
              es.employee_id,
              MIN(s.start_time) AS start_time,
              MAX(s.end_time) AS end_time,
              sp.profession_name AS service_type,
              GROUP_CONCAT(DISTINCT s.name ORDER BY s.name SEPARATOR ', ') AS service_list          FROM
              employee_service es
                  JOIN service s ON es.service_id = s.id
                  JOIN employee_professions ep ON es.employee_id = ep.employee_id
                  JOIN salon_professions sp ON ep.profession_id = sp.profession_id
          GROUP BY
              es.employee_id, sp.profession_name
      ) es1 ON e.employee_id = es1.employee_id
  ORDER BY
      e.name, es1.start_time;











SELECT
    e.name AS 'Employee name',
    TIME_FORMAT(es1.start_time, '%H:%i') AS 'Start Time',
    TIME_FORMAT(es1.end_time, '%H:%i') AS 'End Time',
    es1.service_type AS 'Service List',
    es1.service_list AS 'Kind of service'
FROM
    employee e
        JOIN (
        SELECT
            es.employee_id,
            MIN(s.start_time) AS start_time,
            MAX(s.end_time) AS end_time,
            sp.profession_name AS service_type,
            GROUP_CONCAT(DISTINCT s.name ORDER BY s.name SEPARATOR ', ') AS service_list
        FROM
            employee_service es
                JOIN service s ON es.service_id = s.id
                JOIN employee_professions ep ON es.employee_id = ep.employee_id
                JOIN salon_professions sp ON ep.profession_id = sp.profession_id
        GROUP BY
            es.employee_id, sp.profession_name
    ) es1 ON e.employee_id = es1.employee_id
ORDER BY
    e.position DESC ;
