USE my_test00;

DROP PROCEDURE the_number_of_employees_with_wages_sproc;

CREATE PROCEDURE the_number_of_employees_with_wages_sproc(IN
                                                              salary_min INT,salary_max INT, OUT employee_count INT)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
        BEGIN
            ROLLBACK;
        END;

    START TRANSACTION;


    SELECT COUNT(*) INTO employee_count FROM employee
    WHERE salary BETWEEN salary_min AND salary_max;

    COMMIT ;
END;
DELIMITER ;

SET @employee_count = 0;

CALL the_number_of_employees_with_wages_sproc(2000, 3000, @employee_count);
SELECT @employee_count;

