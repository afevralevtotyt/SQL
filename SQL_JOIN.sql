/*Task1*/
CREATE TABLE city (city_id BIGSERIAL NOT NULL PRIMARY KEY, city_name VARCHAR(60) NOT NULL);
ALTER TABLE employee ADD COLUMN city_id INT;
ALTER TABLE employee ADD FOREIGN KEY (city_id) REFERENCES city (city_id);
INSERT INTO city (city_name) VALUES('Moscow');
INSERT INTO city (city_name) VALUES('Saint-Petersburg');
INSERT INTO city (city_name) VALUES('Novosibirsk');
INSERT INTO city (city_name) VALUES('Kaliningrad');
INSERT INTO city (city_name) VALUES('Irkutsk');
UPDATE employee SET city_id = 1 WHERE id=1;
UPDATE employee SET city_id = 2 WHERE id=3;
UPDATE employee SET city_id = 2 WHERE id=4;
UPDATE employee SET city_id = 3 WHERE id=2;
UPDATE employee SET city_id = 4 WHERE id=5;
/*Task2*/
SELECT first_name as Имя, last_name as Фамилия, city_name as Город_проживания FROM employee
    JOIN city ON employee.city_id=city.city_id;
SELECT city_name as Город_продивания, first_name as Имя, last_name as Фамилия FROM employee
    LEFT JOIN city ON employee.city_id=city.city_id;
SELECT first_name as Имя, city_name as Город FROM employee
    FULL JOIN city ON employee.city_id=city.city_id;
SELECT first_name as Имя, city_name as Город FROM employee CROSS JOIN city;