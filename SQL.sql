/*Task 1*/
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Natalia', 'Fedorova', 'female', 52);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Lisa', 'Smirnova', 'female', 23);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Sergey', 'Frolov', 'male', 29);
SELECT first_name as Имя, last_name as Фамилия FROM employee;
SELECT * FROM employee WHERE age <30 OR age >=50;
SELECT * FROM employee WHERE age >=30 AND age <=50;
SELECT * FROM employee ORDER BY last_name DESC;
SELECT * FROM employee WHERE LENGTH(first_name) > 4;
/*Task 2*/
UPDATE employee SET first_name='Ivan' WHERE id=2;
UPDATE employee SET first_name='Lisa' WHERE id=3;
SELECT first_name as имя, SUM(age) as суммарный_возраст FROM employee GROUP BY имя;
SELECT first_name, age FROM employee WHERE age =(SELECT MIN(age) from employee);
SELECT first_name, age FROM employee WHERE age IN (SELECT MAX(age) FROM employee GROUP BY first_name HAVING COUNT(first_name)>1);