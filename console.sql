CREATE SCHEMA test;
USE test;

CREATE TABLE service (
                         id INT PRIMARY KEY,
                         name VARCHAR(255),
                         description TEXT,
                         duration INT,
                         price DOUBLE
);

INSERT INTO service (id, name, description, duration, price)
VALUES
    (1, 'Стрижка', 'Базова стрижка', 30, 25.00),
    (2, 'Манікюр', 'Базовий манікюр', 45, 20.00),
    (3, 'Педикюр', 'Класичний педикюр', 60, 30.00),
    (4, 'Масаж спини', 'Релаксуючий масаж спини', 45, 40.00),
    (5, 'Масаж обличчя', 'Релаксуючий масаж обличчя', 40, 35.00),
    (6, 'Фарбування волосся', 'Фарбування волосся за бажанням клієнта', 90, 60.00),
    (7, 'Манікюр з дизайном', 'Манікюр з оригінальним дизайном', 60, 40.00),
    (8, 'Спа-процедура для рук', 'Комплексна спа-процедура для рук', 60, 50.00),
    (9, 'Масаж ніг', 'Масаж ніг для відпочинку', 40, 35.00),
    (10, 'Спа-процедура для обличчя', 'Комплексна спа-процедура для обличчя', 60, 70.00),
    (11, 'Масаж голови', 'Релаксуючий масаж голови', 30, 30.00),
    (12, 'Масаж стоп', 'Масаж стоп для відновлення енергії', 45, 40.00),
    (13, 'Макіяж', 'Вечірній макіяж', 60, 50.00),
    (14, 'Пірсинг', 'Прокол вуха', 20, 25.00),
    (15, 'Епіляція', 'Шугарінг ніг', 60, 45.00),
    (16, 'Масаж живота', 'Масаж живота для зняття напруги', 30, 30.00),
    (17, 'Архітектура брів', 'Корекція форми брів', 20, 20.00),
    (18, 'Масаж ноги', 'Масаж ніг для відпочинку', 40, 35.00),
    (19, 'Шугарінг восковий', 'Воскове видалення волосся', 60, 50.00),
    (20, 'Фарбування брів', 'Фарбування брів з використанням гіпоалергенних фарб', 30, 40.00),
    (21, 'Масаж рук', 'Масаж рук для розслаблення', 30, 25.00),
    (22, 'Педикюр з гелевим покриттям', 'Класичний педикюр з гелевим покриттям', 90, 60.00),
    (23, 'Спа-процедура для ніг', 'Комплексна спа-процедура для ніг', 60, 50.00),
    (24, 'Масаж шиї', 'Релаксуючий масаж шиї', 30, 30.00),
    (25, 'Масаж ліктів', 'Масаж ліктів для полегшення напруги', 30, 25.00),
    (26, 'Чистка обличчя', 'Процедура очищення обличчя', 60, 55.00),
    (27, 'Нарощування вій', 'Професійне нарощування вій', 90, 70.00);

CREATE TABLE product (
                         id INT PRIMARY KEY,
                         name VARCHAR(255),
                         description TEXT,
                         quantity INT,
                         cost DOUBLE
);

INSERT INTO product (id, name, description, quantity, cost)
VALUES
    (1, 'Шампунь', 'Базовий шампунь', 100, 10.00),
    (2, 'Лак для нігтів', 'Червоний лак для нігтів', 50, 5.00),
    (3, 'Олія для волосся', 'Олія для волосся з маслом ши', 30, 20.00),
    (4, 'Крем', 'Зволожуючий крем для рук', 40, 15.00),
    (5, 'Шампунь', 'Базовий шампунь', 80, 25.00),
    (6, 'Лосьйон для тіла', 'Освіжаючий лосьйон для тіла', 60, 18.00),
    (7, 'Спрей для захисту волосся від тепла', 'Спрей для захисту волосся від термічних впливів', 50, 30.00),
    (8, 'Крем для вій', 'Зміцнюючий крем для вій', 40, 22.00),
    (9, 'Масло для тіла', 'Зволожуюче масло для тіла', 60, 25.00),
    (10, 'Крем', 'Денний крем для обличчя', 50, 30.00),
    (11, 'Засіб для видалення макіяжу', 'Ніжний засіб для видалення макіяжу', 70, 15.00),
    (12, 'Шампунь', 'Шампунь для чутливої шкіри', 120, 15.00),
    (13, 'Лак для нігтів', 'Прозорий лак для нігтів', 30, 7.00),
    (14, 'Олія для волосся', 'Олія для волосся з жожоба', 25, 18.00),
    (15, 'Крем', 'Антивіковий крем для рук', 35, 20.00),
    (16, 'Шампунь', 'Шампунь для волосся з кератином', 90, 30.00),
    (17, 'Спрей для захисту волосся від тепла', 'Спрей для захисту волосся від ультрафіолету', 40, 25.00),
    (18, 'Гель для душу', 'Освіжаючий гель для душу', 70, 12.00),
    (19, 'Гель для вмивання', 'Зволожуюча маска для обличчя', 40, 25.00),
    (20, 'Крем для шкіри навколо очей', 'Крем для догляду за шкірою навколо очей', 50, 30.00),
    (21, 'Скраб для тіла', 'Ексфоліюючий скраб для тіла', 60, 20.00),
    (22, 'Гель для вмивання', 'Тонік для зняття залишків макіяжу', 30, 15.00),
    (23, 'Олія для масажу', 'Олія для масажу з ефектом розслаблення', 50, 35.00),
    (24, 'Крем', 'Засіб для догляду за шкірою ніг', 60, 18.00),
    (25, 'Теплий воск', 'Воск для гарячого шугарінгу', 40, 40.00),
    (26, 'Шампунь', 'Шампунь для волосся з олією жожоба', 80, 25.00),
    (27, 'Гель для вмивання', 'Гель для вмивання з екстрактом алое', 70, 18.00);



CREATE TABLE customer (
                          id INT PRIMARY KEY,
                          name VARCHAR(255),
                          phone VARCHAR(20),
                          email VARCHAR(255),
                          address TEXT
);

INSERT INTO customer (id, name, phone, email, address)
VALUES
    (1, 'Джон Доу', '123456789', 'john@example.com', '123 Головна вулиця'),
    (2, 'Джейн Сміт', '987654321', 'jane@example.com', '456 Вулиця В’яза'),
    (3, 'Анна Ковальчук', '111222333', 'anna@example.com', '567 Вулиця Лісова'),
    (4, 'Василь Петренко', '444555666', 'vasya@example.com', '890 Вулиця Полярна'),
    (5, 'Іван Білий', '555666777', 'ivan@example.com', '345 Вулиця Сонячна'),
    (6, 'Олена Петрів', '333444555', 'olena@example.com', '678 Вулиця Тиха'),
    (7, 'Марина Сидоренко', '777888999', 'marina@example.com', '901 Вулиця Весняна'),
    (8, 'Петро Коваль', '999000111', 'petro@example.com', '234 Вулиця Зелена'),
    (9, 'Марія Іванова', '333222111', 'maria@example.com', '890 Вулиця Садова'),
    (10, 'Олександр Петров', '555444333', 'oleksandr@example.com', '456 Вулиця Лісна'),
    (11, 'Наталія Сідоренко', '777666555', 'natalia@example.com', '678 Вулиця Полярна'),
    (12, 'Антон Коваль', '999888777', 'anton@example.com', '345 Вулиця Північна'),
    (13, 'Юлія Лисенко', '111000999', 'yulia@example.com', '234 Вулиця Центральна'),
    (14, 'Віталій Степанов', '222333444', 'vitaliy@example.com', '567 Вулиця Перша'),
    (15, 'Маргарита Коваленко', '888777666', 'margaryta@example.com', '789 Вулиця Друга'),
    (16, 'Павло Мельник', '444555666', 'pavlo@example.com', '123 Вулиця Третя'),
    (17, 'Дарина Шевченко', '777888999', 'darina@example.com', '456 Вулиця Четверта'),
    (18, 'Катерина Сидорова', '111222333', 'katya@example.com', '123 Вулиця Промислова'),
    (19, 'Максим Коваленко', '444555666', 'max@example.com', '456 Вулиця Шкільна'),
    (20, 'Олексій Петренко', '777888999', 'oleksiy@example.com', '789 Вулиця Паркова'),
    (21, 'Валентина Іванова', '999000111', 'valentina@example.com', '890 Вулиця Польова'),
    (22, 'Євгенія Семенова', '333444555', 'evgeniya@example.com', '345 Вулиця Градська'),
    (23, 'Ігор Сидоренко', '555666777', 'igor@example.com', '678 Вулиця Київська'),
    (24, 'Тетяна Ковальчук', '888999000', 'tanya@example.com', '901 Вулиця Нова'),
    (25, 'Антоніна Петрова', '222333444', 'antonia@example.com', '234 Вулиця Проспект'),
    (26, 'Олег Сідоренко', '555444333', 'oleg_sid@example.com', '567 Вулиця Центральна'),
    (27, 'Лариса Коваленко', '777666555', 'larisa@example.com', '890 Вулиця Весняна') ;



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
    (1, 'Еліс Джонсон', '111222333', 'alice@example.com', 'Стиліст', 2500),
    (2, 'Боб Вільямс', '444555666', 'bob@example.com', 'Естетик', 2800),
    (3, 'Боб Вільямс', '777888999', 'irina@example.com', 'Фахівець з манікюру', 2700),
    (4, 'Андрій Петренко', '123456789', 'andrew@example.com', 'Фахівець з педикюру', 2800),
    (5, 'Олег Чорний', '222333444', 'oleg@example.com', 'Масажист', 3000),
    (6, 'Тетяна Сидоренко', '444555666', 'tetyana@example.com', 'Косметолог', 3200),
    (7, 'Ірина Біла', '666777888', 'iryna@example.com', 'Майстер манікюру', 2900),
    (8, 'Іван Петров', '888999000', 'ivan_petrov@example.com', 'Майстер педикюру', 3100),
    (9, 'Софія Іванова', '111000999', 'sofia@example.com', 'Косметолог', 3200),
    (10, 'Віктор Петров', '333444555', 'viktor@example.com', 'Майстер манікюру', 2900),
    (11, 'Ольга Сидоренко', '666777888', 'olga@example.com', 'Майстер педикюру', 3100),
    (12, 'Андрій Коваль', '999000111', 'andriy@example.com', 'Стиліст', 2500),
    (13, 'Тамара Лисенко', '222333444', 'tamara@example.com', 'Естетик', 2800),
    (14, 'Сергій Степанов', '444555666', 'sergiy@example.com', 'Фахівець з масажу', 3000),
    (15, 'Олена Коваленко', '777888999', 'olena@example.com', 'Фахівець з депіляції', 2700),
    (16, 'Валентин Мельник', '888999000', 'valentin@example.com', 'Візажист', 2600),
    (17, 'Ірина Шевченко', '555666777', 'irina_she@example.com', 'Фахівець з пірсингу', 2600),
    (18, 'Наталія Павлюк', '123456789', 'nataliya@example.com', 'Майстер візажу', 2800),
    (19, 'Іван Черненко', '444555666', 'ivan_ch@example.com', 'Масажист', 3000),
    (20, 'Олена Петренко', '777888999', 'olena_p@example.com', 'Фахівець з епіляції', 2700),
    (21, 'Марина Сидоренко', '111222333', 'marina_s@example.com', 'Спеціаліст з депіляції', 2800),
    (22, 'Максим Коваленко', '222333444', 'max_k@example.com', 'Фахівець з архітектури брів', 2700),
    (23, 'Ольга Іванова', '333444555', 'olga_i@example.com', 'Майстер пірсингу', 3000),
    (24, 'Петро Лисенко', '555666777', 'petro_l@example.com', 'Стиліст', 3200),
    (25, 'Ірина Петренко', '666777888', 'irina_p@example.com', 'Естетик', 3000),
    (26, 'Андрій Сидоренко', '888999000', 'andriy_s@example.com', 'Косметолог', 3200),
    (27, 'Євгенія Шевченко', '999000111', 'evgeniya_sh@example.com', 'Фахівець з манікюру', 2900),
    (28, 'Михайло Іванченко', '111222333', 'mikhailo@example.com', 'Фахівець з педикюру', 3100),
    (29, 'Марія Сидоренко', '222333444', 'maria_s@example.com', 'Майстер манікюру', 2900),
    (30, 'Олександр Петров', '333444555', 'oleksandr_p@example.com', 'Майстер педикюру', 3100),
    (31, 'Оксана Коваль', '444555666', 'oksana_k@example.com', 'Естетик', 3100),
    (32, 'Віталій Литвин', '777888999', 'vitaliy_l@example.com', 'Стиліст', 3300),
    (33, 'Тетяна Михайленко', '888999000', 'tetiana_m@example.com', 'Фахівець з педикюру', 3000),
    (34, 'Анастасія Павленко', '111222333', 'anastasiya_p@example.com', 'Майстер манікюру', 2900),
    (35, 'Ігор Білий', '222333444', 'igor_b@example.com', 'Косметолог', 3300),
    (36, 'Наталія Григоренко', '444555666', 'nataliya_g@example.com', 'Майстер педикюру', 3100),
    (37, 'Юлія Шевченко', '555666777', 'yuliya_sh@example.com', 'Майстер пірсингу', 3200),
    (38, 'Дмитро Мороз', '666777888', 'dmytro_m@example.com', 'Фахівець з макіяжу', 3000);


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
    (1, 21, 1, 11, '2024-03-07 10:00:00', 'Запланований'),
    (2, 5, 2, 2, '2024-03-08 14:00:00', 'Завершений'),
    (3, 2, 4, 3, '2024-03-09 11:00:00', 'Запланований'),
    (4, 4, 4, 4, '2024-03-10 15:00:00', 'Завершений'),
    (5, 5, 5, 5, '2024-03-11 09:00:00', 'Запланований'),
    (6, 2, 6, 2, '2024-03-12 14:30:00', 'Запланований'),
    (7, 7, 7, 7, '2024-03-13 11:15:00', 'Запланований'),
    (8, 8, 3, 8, '2024-03-14 16:45:00', 'Запланований'),
    (9, 9, 9, 9, '2024-03-15 13:00:00', 'Запланований'),
    (10, 13, 13, 10, '2024-03-16 10:00:00', 'Завершений'),
    (11, 15, 1, 11, '2024-03-17 11:30:00', 'Запланований'),
    (12, 12, 12, 12, '2024-03-18 14:45:00', 'Завершений'),
    (13, 13, 13, 13, '2024-03-19 15:30:00', 'Запланований'),
    (14, 4, 14, 14, '2024-03-20 09:15:00', 'Запланований'),
    (15, 15, 15, 15, '2024-03-21 16:00:00', 'Запланований'),
    (16, 16, 16, 16, '2024-03-22 12:30:00', 'Запланований'),
    (17, 17, 17, 17, '2024-03-23 14:00:00', 'Запланований'),
    (18, 18, 18, 18, '2024-03-24 10:00:00', 'Запланований'),
    (19, 19, 19, 19, '2024-03-25 14:00:00', 'Завершений'),
    (20, 20, 20, 20, '2024-03-26 11:00:00', 'Запланований'),
    (21, 21, 21, 21, '2024-03-27 15:00:00', 'Завершений'),
    (22, 22, 22, 22, '2024-03-28 09:00:00', 'Запланований'),
    (23, 23, 23, 23, '2024-03-29 14:30:00', 'Запланований'),
    (24, 14, 25, 24, '2024-03-30 11:15:00', 'Запланований'),
    (25, 25, 25, 25, '2024-03-31 16:45:00', 'Запланований'),
    (26, 2, 6, 26, '2024-04-01 13:00:00', 'Запланований'),
    (27, 17, 2, 27, '2024-04-02 10:00:00', 'Завершений');


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
    (1, 1, 1, 25.00, 'Готівка', '2024-03-07'),
    (2, 2, 2, 20.00, 'Картка', '2024-03-08'),
    (3, 3, 3, 30.00, 'Готівка', '2024-03-09'),
    (4, 4, 4, 40.00, 'Картка', '2024-03-10'),
    (5, 5, 5, 35.00, 'Готівка', '2024-03-11'),
    (6, 6, 6, 60.00, 'Картка', '2024-03-12'),
    (7, 7, 7, 40.00, 'Готівка', '2024-03-13'),
    (8, 8, 8, 50.00, 'Картка', '2024-03-14'),
    (9, 9, 9, 45.00, 'Готівка', '2024-03-15'),
    (10, 10, 10, 30.00, 'Картка', '2024-03-16'),
    (11, 11, 11, 35.00, 'Готівка', '2024-03-17'),
    (12, 12, 12, 50.00, 'Картка', '2024-03-18'),
    (13, 13, 13, 40.00, 'Готівка', '2024-03-19'),
    (14, 14, 14, 55.00, 'Картка', '2024-03-20'),
    (15, 15, 15, 60.00, 'Готівка', '2024-03-21'),
    (16, 16, 16, 25.00, 'Картка', '2024-03-22'),
    (17, 17, 17, 30.00, 'Готівка', '2024-03-23'),
    (18, 18, 18, 35.00, 'Готівка', '2024-03-24'),
    (19, 19, 19, 30.00, 'Картка', '2024-03-25'),
    (20, 20, 20, 40.00, 'Готівка', '2024-03-26'),
    (21, 21, 21, 50.00, 'Картка', '2024-03-27'),
    (22, 22, 22, 45.00, 'Готівка', '2024-03-28'),
    (23, 23, 23, 60.00, 'Картка', '2024-03-29'),
    (24, 24, 24, 40.00, 'Готівка', '2024-03-30'),
    (25, 25, 25, 50.00, 'Картка', '2024-03-31'),
    (26, 26, 26, 55.00, 'Готівка', '2024-04-01'),
    (27, 27, 27, 45.00, 'Картка', '2024-04-02');

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
    ADD CONSTRAINT fk_employee_id
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



-- НЕ КОРОЛЬОВАНІ 
  
SELECT * FROM appointment WHERE employee_id IN (SELECT employee_id FROM employee WHERE position = 'Стиліст' )
AND employee_id NOT IN (SELECT employee_id FROM employee WHERE salary = '3000');
SELECT * FROM appointment WHERE  employee_id NOT IN (SELECT employee_id FROM employee WHERE salary = '3000') ;

SELECT * FROM appointment WHERE EXISTS (SELECT 1 FROM appointment WHERE datetime = '2024-03-07 10:00:00'
                                                                  AND status = 'Завершено');

 SELECT * FROM appointment WHERE NOT EXISTS (SELECT 1 FROM appointment WHERE status = 'Триває');


-- non c update
UPDATE employee SET salary = 3000 WHERE salary = 2500 ;
UPDATE service SET price = 30 WHERE id NOT IN (1, 5);

  


DELETE FROM appointment
WHERE id NOT IN (SELECT appointment_id FROM payment);



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
SELECT * FROM appointment WHERE status = 'Завершений';


 
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

