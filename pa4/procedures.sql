CREATE PROCEDURE the_number_of_employees_with_wages_sproc(
    IN salary_min INT,
    salary_max INT,
    OUT employee_count INT)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
    END;

START TRANSACTION;


SELECT COUNT(1) INTO employee_count FROM employee
    WHERE salary BETWEEN salary_min AND salary_max;
-- add insert, update or delete operation

COMMIT ;
END;
DELIMITER ;