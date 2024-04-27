CREATE SCHEMA my_test00;
USE my_test00;

CREATE TABLE service (
                         id INT PRIMARY KEY,
                         name VARCHAR(255),
                         description TEXT,
                         duration INT,
                         price DOUBLE,
                         start_time TIME,   
                         end_time TIME
);

INSERT INTO service (id, name, description, duration, price, start_time, end_time)
VALUES
    (1, 'Haircut', 'Basic haircut', 30, 25.00, '09:00:00', '11:00:00'),
    (2, 'Manicure', 'Basic manicure', 45, 20.00, '10:30:00', '12:00:00'),
    (3, 'Pedicure', 'Classic pedicure', 60, 30.00, '13:00:00', '14:00:00'),
    (4, 'Back Massage', 'Relaxing back massage', 45, 40.00, '15:00:00', '15:45:00'),
    (5, 'Facial Massage', 'Relaxing facial massage', 40, 35.00, '16:00:00', '16:40:00'),
    (6, 'Hair Coloring', 'Hair coloring based on client preference', 90, 60.00, '10:00:00', '11:30:00'),
    (7, 'Manicure with Design', 'Manicure with unique design', 60, 40.00, '12:00:00', '13:00:00'),
    (8, 'Spa Treatment for Hands', 'Comprehensive spa treatment for hands', 60, 50.00, '14:00:00', '15:00:00'),
    (9, 'Leg Massage', 'Leg massage for relaxation', 40, 35.00, '16:30:00', '17:10:00'),
    (10, 'Spa Treatment for Face', 'Comprehensive spa treatment for face', 60, 70.00, '11:00:00', '12:00:00'),
    (11, 'Head Massage', 'Relaxing head massage', 30, 30.00, '13:30:00', '14:00:00'),
    (12, 'Foot Massage', 'Foot massage for energy restoration', 45, 40.00, '15:30:00', '16:15:00'),
    (13, 'Makeup', 'Evening makeup', 60, 50.00, '17:00:00', '18:00:00'),
    (14, 'Piercing', 'Ear piercing', 20, 25.00, '10:30:00', '10:50:00'),
    (15, 'Epilation', 'Leg sugaring', 60, 45.00, '11:30:00', '12:30:00'),
    (16, 'Abdominal Massage', 'Abdominal massage for stress relief', 30, 30.00, '14:30:00', '15:00:00'),
    (17, 'Eyebrow Shaping', 'Eyebrow shaping', 20, 20.00, '15:30:00', '15:50:00'),
    (18, 'Leg Massage', 'Leg massage for relaxation', 40, 35.00, '16:00:00', '16:40:00'),
    (19, 'Waxing', 'Hair waxing', 60, 50.00, '10:00:00', '11:00:00'),
    (20, 'Eyebrow Coloring', 'Eyebrow coloring with hypoallergenic dyes', 30, 40.00, '12:00:00', '12:30:00'),
    (21, 'Hand Massage', 'Hand massage for relaxation', 30, 25.00, '13:00:00', '13:30:00'),
    (22, 'Pedicure with Gel Polish', 'Classic pedicure with gel polish', 90, 60.00, '14:00:00', '15:30:00'),
    (23, 'Spa Treatment for Legs', 'Comprehensive spa treatment for legs', 60, 50.00, '16:00:00', '17:00:00'),
    (24, 'Neck Massage', 'Relaxing neck massage', 30, 30.00, '17:30:00', '18:00:00'),
    (25, 'Elbow Massage', 'Elbow massage for tension relief', 30, 25.00, '09:30:00', '10:00:00'),
    (26, 'Facial Cleansing', 'Facial cleansing procedure', 60, 55.00, '11:00:00', '12:00:00'),
    (27, 'Eyelash Extensions', 'Professional eyelash extensions', 90, 70.00, '13:00:00', '14:30:00'),
    (28, 'Head and Neck Massage', 'Relaxing head and neck massage', 60, 55.00, '14:00:00', '15:00:00'),
    (29, 'Aromatherapy', 'Aromatherapy session', 45, 50.00, '16:00:00', '16:45:00'),
    (30, 'Eyelash Lifting', 'Eyelash lifting procedure', 60, 60.00, '11:30:00', '12:30:00'),
    (31, 'Eyebrow Microblading', 'Eyebrow microblading technique', 90, 80.00, '10:00:00', '11:30:00');

    
CREATE TABLE product (
                         id INT PRIMARY KEY,
                         name VARCHAR(255),
                         description TEXT,
                         quantity INT,
                         cost DOUBLE
);
INSERT INTO product (id, name, description, quantity, cost)
VALUES
    (1, 'Shampoo', 'Basic shampoo', 100, 10.00),
    (2, 'Nail Polish', 'Red nail polish', 50, 5.00),
    (3, 'Hair Oil', 'Hair oil with shea butter', 30, 20.00),
    (4, 'Cream', 'Moisturizing hand cream', 40, 15.00),
    (5, 'Shampoo', 'Basic shampoo', 80, 25.00),
    (6, 'Body Lotion', 'Refreshing body lotion', 60, 18.00),
    (7, 'Heat Protection Hair Spray', 'Hair spray for thermal protection', 50, 30.00),
    (8, 'Eyelash Cream', 'Strengthening eyelash cream', 40, 22.00),
    (9, 'Body Oil', 'Moisturizing body oil', 60, 25.00),
    (10, 'Cream', 'Day cream for face', 50, 30.00),
    (11, 'Makeup Remover', 'Gentle makeup remover', 70, 15.00),
    (12, 'Shampoo', 'Sensitive skin shampoo', 120, 15.00),
    (13, 'Nail Polish', 'Clear nail polish', 30, 7.00),
    (14, 'Hair Oil', 'Jojoba hair oil', 25, 18.00),
    (15, 'Cream', 'Anti-aging hand cream', 35, 20.00),
    (16, 'Shampoo', 'Keratin hair shampoo', 90, 30.00),
    (17, 'Heat Protection Hair Spray', 'Hair spray for UV protection', 40, 25.00),
    (18, 'Shower Gel', 'Refreshing shower gel', 70, 12.00),
    (19, 'Face Cleansing Gel', 'Moisturizing face mask', 40, 25.00),
    (20, 'Eye Cream', 'Eye skin care cream', 50, 30.00),
    (21, 'Body Scrub', 'Exfoliating body scrub', 60, 20.00),
    (22, 'Face Cleansing Gel', 'Toner to remove makeup residues', 30, 15.00),
    (23, 'Massage Oil', 'Relaxing massage oil', 50, 35.00),
    (24, 'Cream', 'Foot care product', 60, 18.00),
    (25, 'Warm Wax', 'Hot sugaring wax', 40, 40.00),
    (26, 'Shampoo', 'Hair shampoo with jojoba oil', 80, 25.00),
    (27, 'Face Cleansing Gel', 'Cleansing gel with aloe extract', 70, 18.00);



CREATE TABLE customer (
                          id INT PRIMARY KEY,
                          name VARCHAR(255),
                          phone VARCHAR(20),
                          email VARCHAR(255),
                          address TEXT
);

INSERT INTO customer (id, name, phone, email, address)
  VALUES
      (1, 'John Doe', '123456789', 'john@example.com', '123 Main Street'),
      (2, 'Jane Smith', '987654321', 'jane@example.com', '456 Maple Street'),
      (3, 'Anna Kovalchuk', '111222333', 'anna@example.com', '567 Forest Street'),
      (4, 'Vasyl Petrenko', '444555666', 'vasya@example.com', '890 Polar Street'),
      (5, 'Ivan Bilyi', '555666777', 'ivan@example.com', '345 Sunny Street'),
      (6, 'Olena Petrova', '333444555', 'olena@example.com', '678 Quiet Street'),
      (7, 'Marina Sidorenko', '777888999', 'marina@example.com', '901 Spring Street'),
      (8, 'Petro Koval', '999000111', 'petro@example.com', '234 Green Street'),
      (9, 'Maria Ivanova', '333222111', 'maria@example.com', '890 Garden Street'),
      (10, 'Oleksandr Petrov', '555444333', 'oleksandr@example.com', '456 Forest Street'),
      (11, 'Natalia Sidorenko', '777666555', 'natalia@example.com', '678 Polar Street'),
      (12, 'Anton Koval', '999888777', 'anton@example.com', '345 North Street'),
      (13, 'Yulia Lysenko', '111000999', 'yulia@example.com', '234 Central Street'),
      (14, 'Vitaliy Stepanov', '222333444', 'vitaliy@example.com', '567 First Street'),
      (15, 'Margaryta Kovalenko', '888777666', 'margaryta@example.com', '789 Second Street'),
      (16, 'Pavlo Melnyk', '444555666', 'pavlo@example.com', '123 Third Street'),
      (17, 'Darina Shevchenko', '777888999', 'darina@example.com', '456 Fourth Street'),
      (18, 'Kateryna Sidorova', '111222333', 'katya@example.com', '123 Industrial Street'),
      (19, 'Maxim Kovalenko', '444555666', 'max@example.com', '456 School Street'),
      (20, 'Oleksiy Petrenko', '777888999', 'oleksiy@example.com', '789 Park Street'),
      (21, 'Valentyna Ivanova', '999000111', 'valentina@example.com', '890 Field Street'),
      (22, 'Yevgeniya Semenova', '333444555', 'evgeniya@example.com', '345 City Street'),
      (23, 'Ihor Sidorenko', '555666777', 'igor@example.com', '678 Kiev Street'),
      (24, 'Tetyana Kovalchuk', '888999000', 'tanya@example.com', '901 New Street'),
      (25, 'Antonina Petrova', '222333444', 'antonia@example.com', '234 Avenue Street'),
      (26, 'Oleg Sidorenko', '555444333', 'oleg_sid@example.com', '567 Central Street'),
      (27, 'Larysa Kovalenko', '777666555', 'larisa@example.com', '890 Spring Street');



CREATE TABLE employee (
                          employee_id INT PRIMARY KEY,
                          name VARCHAR(255),
                          phone VARCHAR(20),
                          email VARCHAR(255),
                          position VARCHAR(100),
                          salary DOUBLE
);
INSERT INTO employee (employee_id, name, phone, email, position, salary)
VALUES
    (1, 'Alice Johnson', '111222333', 'alice@example.com', 'Stylist', 2500),
    (2, 'Bob Williams', '444555666', 'bob@example.com', 'Esthetician', 2800),
    (3, 'Irina Williams', '777888999', 'irina@example.com', 'Manicurist', 2700),
    (4, 'Andriy Petrenko', '123456789', 'andrew@example.com', 'Pedicurist', 2800),
    (5, 'Oleg Chornyi', '222333444', 'oleg@example.com', 'Masseur', 3000),
    (6, 'Tetyana Sidorenko', '444555666', 'tetyana@example.com', 'Cosmetologist', 3200),
    (7, 'Irina Bila', '666777888', 'iryna@example.com', 'Nail Technician', 2900),
    (8, 'Ivan Petrov', '888999000', 'ivan_petrov@example.com', 'Pedicure Master', 3100),
    (9, 'Sofia Ivanova', '111000999', 'sofia@example.com', 'Cosmetologist', 3200),
    (10, 'Viktor Petrov', '333444555', 'viktor@example.com', 'Nail Technician', 2900),
    (11, 'Olga Sidorenko', '666777888', 'olga@example.com', 'Pedicure Master', 3100),
    (12, 'Andriy Koval', '999000111', 'andriy@example.com', 'Stylist', 2500),
    (13, 'Tamara Lysenko', '222333444', 'tamara@example.com', 'Esthetician', 2800),
    (14, 'Serhiy Stepanov', '444555666', 'sergiy@example.com', 'Massage Therapist', 3000),
    (15, 'Olena Kovalenko', '777888999', 'olena@example.com', 'Depilation Specialist', 2700),
    (16, 'Valentin Melnyk', '888999000', 'valentin@example.com', 'Makeup Artist', 2600),
    (17, 'Irina Shevchenko', '555666777', 'irina_she@example.com', 'Piercing Specialist', 2600),
    (18, 'Natalia Pavlyuk', '123456789', 'nataliya@example.com', 'Makeup Master', 2800),
    (19, 'Ivan Chernenko', '444555666', 'ivan_ch@example.com', 'Masseur', 3000),
    (20, 'Olena Petrenko', '777888999', 'olena_p@example.com', 'Depilation Specialist', 2700),
    (21, 'Marina Sidorenko', '111222333', 'marina_s@example.com', 'Depilation Specialist', 2800),
    (22, 'Maxim Kovalenko', '222333444', 'max_k@example.com', 'Eyebrow Architecture Specialist', 2700),
    (23, 'Olga Ivanova', '333444555', 'olga_i@example.com', 'Piercing Master', 3000),
    (24, 'Petro Lysenko', '555666777', 'petro_l@example.com', 'Stylist', 3200),
    (25, 'Irina Petrenko', '666777888', 'irina_p@example.com', 'Esthetician', 3000),
    (26, 'Andriy Sidorenko', '888999000', 'andriy_s@example.com', 'Cosmetologist', 3200),
    (27, 'Yevgeniya Shevchenko', '999000111', 'evgeniya_sh@example.com', 'Manicurist', 2900),
    (28, 'Mykhailo Ivanchenko', '111222333', 'mikhailo@example.com', 'Pedicure Master', 3100),
    (29, 'Maria Sidorenko', '222333444', 'maria_s@example.com', 'Nail Technician', 2900),
    (30, 'Oleksandr Petrov', '333444555', 'oleksandr_p@example.com', 'Pedicure Master', 3100),
    (31, 'Oksana Koval', '444555666', 'oksana_k@example.com', 'Esthetician', 3100),
    (32, 'Vitaliy Lytvyn', '777888999', 'vitaliy_l@example.com', 'Stylist', 3300),
    (33, 'Tetyana Mikhaylenko', '888999000', 'tetiana_m@example.com', 'Pedicure Specialist', 3000),
    (34, 'Anastasiya Pavlenko', '111222333', 'anastasiya_p@example.com', 'Nail Technician', 2900),
    (35, 'Ihor Bilyi', '222333444', 'igor_b@example.com', 'Cosmetologist', 3300),
    (36, 'Nataliya Hryhorenko', '444555666', 'nataliya_g@example.com', 'Pedicure Master', 3100),
    (37, 'Yuliya Shevchenko', '555666777', 'yuliya_sh@example.com', 'Piercing Master', 3200),
    (38, 'Dmytro Moroz', '666777888', 'dmytro_m@example.com', 'Makeup Specialist', 3000);

CREATE TABLE appointment (
                             id INT PRIMARY KEY,
                             customer_id INT,
                             service_id INT,
                             employee_id INT,
                             datetime DATETIME,
                             status VARCHAR(50),
                             FOREIGN KEY (customer_id) REFERENCES customer(id),
                             FOREIGN KEY (service_id) REFERENCES service(id),
                             FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);
INSERT INTO appointment (id, customer_id, service_id, employee_id, datetime, status)
VALUES
    (1, 21, 1, 11, '2024-03-07 10:00:00', 'Scheduled'),
    (2, 5, 2, 2, '2024-03-08 14:00:00', 'Completed'),
    (3, 2, 4, 3, '2024-03-09 11:00:00', 'Scheduled'),
    (4, 4, 4, 4, '2024-03-10 15:00:00', 'Completed'),
    (5, 5, 5, 5, '2024-03-11 09:00:00', 'Scheduled'),
    (6, 2, 6, 2, '2024-03-12 14:30:00', 'Scheduled'),
    (7, 7, 7, 7, '2024-03-13 11:15:00', 'Scheduled'),
    (8, 8, 3, 8, '2024-03-14 16:45:00', 'Scheduled'),
    (9, 9, 9, 9, '2024-03-15 13:00:00', 'Scheduled'),
    (10, 13, 13, 10, '2024-03-16 10:00:00', 'Completed'),
    (11, 15, 1, 11, '2024-03-17 11:30:00', 'Scheduled'),
    (12, 12, 12, 12, '2024-03-18 14:45:00', 'Completed'),
    (13, 13, 13, 13, '2024-03-19 15:30:00', 'Scheduled'),
    (14, 4, 14, 14, '2024-03-20 09:15:00', 'Scheduled'),
    (15, 15, 15, 15, '2024-03-21 16:00:00', 'Scheduled'),
    (16, 16, 16, 16, '2024-03-22 12:30:00', 'Scheduled'),
    (17, 17, 17, 17, '2024-03-23 14:00:00', 'Scheduled'),
    (18, 18, 18, 18, '2024-03-24 10:00:00', 'Scheduled'),
    (19, 19, 19, 19, '2024-03-25 14:00:00', 'Completed'),
    (20, 20, 20, 20, '2024-03-26 11:00:00', 'Scheduled'),
    (21, 21, 21, 21, '2024-03-27 15:00:00', 'Completed'),
    (22, 22, 22, 22, '2024-03-28 09:00:00', 'Scheduled'),
    (23, 23, 23, 23, '2024-03-29 14:30:00', 'Scheduled'),
    (24, 14, 25, 24, '2024-03-30 11:15:00', 'Scheduled'),
    (25, 25, 25, 25, '2024-03-31 16:45:00', 'Scheduled'),
    (26, 2, 6, 26, '2024-04-01 13:00:00', 'Scheduled'),
    (27, 17, 2, 27, '2024-04-02 10:00:00', 'Completed');


CREATE TABLE payment (
                         id INT PRIMARY KEY,
                         appointment_id INT,
                         customer_id INT,
                         amount DOUBLE,
                         method VARCHAR(50),
                         date DATE,
                         FOREIGN KEY (appointment_id) REFERENCES appointment(id),
                         FOREIGN KEY (customer_id) REFERENCES customer(id)
);

INSERT INTO payment (id, appointment_id, customer_id, amount, method, date)
VALUES
    (1, 1, 1, 25.00, 'Cash', '2024-03-07'),
    (2, 2, 2, 20.00, 'Card', '2024-03-08'),
    (3, 3, 3, 30.00, 'Cash', '2024-03-09'),
    (4, 4, 4, 40.00, 'Card', '2024-03-10'),
    (5, 5, 5, 35.00, 'Cash', '2024-03-11'),
    (6, 6, 6, 60.00, 'Card', '2024-03-12'),
    (7, 7, 7, 40.00, 'Cash', '2024-03-13'),
    (8, 8, 8, 50.00, 'Card', '2024-03-14'),
    (9, 9, 9, 45.00, 'Cash', '2024-03-15'),
    (10, 10, 10, 30.00, 'Card', '2024-03-16'),
    (11, 11, 11, 35.00, 'Cash', '2024-03-17'),
    (12, 12, 12, 50.00, 'Card', '2024-03-18'),
    (13, 13, 13, 40.00, 'Cash', '2024-03-19'),
    (14, 14, 14, 55.00, 'Card', '2024-03-20'),
    (15, 15, 15, 60.00, 'Cash', '2024-03-21'),
    (16, 16, 16, 25.00, 'Card', '2024-03-22'),
    (17, 17, 17, 30.00, 'Cash', '2024-03-23'),
    (18, 18, 18, 35.00, 'Cash', '2024-03-24'),
    (19, 19, 19, 30.00, 'Card', '2024-03-25'),
    (20, 20, 20, 40.00, 'Cash', '2024-03-26'),
    (21, 21, 21, 50.00, 'Card', '2024-03-27'),
    (22, 22, 22, 45.00, 'Cash', '2024-03-28'),
    (23, 23, 23, 60.00, 'Card', '2024-03-29'),
    (24, 24, 24, 40.00, 'Cash', '2024-03-30'),
    (25, 25, 25, 50.00, 'Card', '2024-03-31'),
    (26, 26, 26, 55.00, 'Cash', '2024-04-01'),
    (27, 27, 27, 45.00, 'Card', '2024-04-02');

CREATE TABLE services2products (
                                   service_id INT,
                                   product_id INT,
                                   FOREIGN KEY (service_id) REFERENCES service(id),
                                   FOREIGN KEY (product_id) REFERENCES product(id),
                                   PRIMARY KEY (service_id, product_id)
);


INSERT INTO services2products (service_id, product_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 1),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 4),
    (11, 11),
    (12, 1),
    (13, 13),
    (14, 3),
    (15, 4),
    (16, 1),
    (17, 6),
    (18, 18),
    (19, 19),
    (20, 20),
    (21, 21),
    (22, 22),
    (23, 23),
    (24, 4),
    (25, 25),
    (26, 1),
    (27, 27);
CREATE TABLE employee_service (
                                  employee_id INT,
                                  service_id INT,
                                  FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
                                  FOREIGN KEY (service_id) REFERENCES service(id),
                                  PRIMARY KEY (employee_id, service_id)
);

INSERT INTO employee_service (employee_id, service_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20),
    (21, 21),
    (22, 22),
    (23, 23),
    (24, 24),
    (25, 25),
    (26, 26),
    (27, 27);

ALTER TABLE appointment
    ADD CONSTRAINT fk_customer_id
        FOREIGN KEY (customer_id) REFERENCES customer(id);  

ALTER TABLE appointment
    ADD CONSTRAINT fk_service_id
        FOREIGN KEY (service_id) REFERENCES service(id);

ALTER TABLE appointment
    ADD CONSTRAINT fk_employee_idtest
        FOREIGN KEY (employee_id) REFERENCES employee(employee_id);

ALTER TABLE payment
    ADD CONSTRAINT fk_appointment_id
        FOREIGN KEY (appointment_id) REFERENCES appointment(id);

ALTER TABLE payment
    ADD CONSTRAINT fk_customer_payment
        FOREIGN KEY (customer_id) REFERENCES customer(id);
 
ALTER TABLE appointment
    ADD CONSTRAINT fk_employee_appointment
        FOREIGN KEY (employee_id) REFERENCES employee(employee_id);


