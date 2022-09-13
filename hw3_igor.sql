-- create db
CREATE DATABASE employeedb;

-- use db

USE DATABASE employeedb;

-- create table
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  salary INT NOT NULL
);

-- insert table
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales', 30000);
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting', 50000);
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales', 70000);
INSERT INTO EMPLOYEE VALUES (0004, 'Ivan', 'IT', 100000);
INSERT INTO EMPLOYEE VALUES (0005, 'Anna', 'IT', 40000);
INSERT INTO EMPLOYEE VALUES (0006, 'Mark', 'Management', 85000);
INSERT INTO EMPLOYEE VALUES (0007, 'Johny', 'Content', 66000);
INSERT INTO EMPLOYEE VALUES (0008, 'Igor', 'Sales', 90000);

-- fetch 
SELECT * FROM EMPLOYEE;

-- отсортируй данные по зарплате 
select * from employee order by salary;

-- отсортируй данные по зарплате от большего к меньшему
select * from employee order by salary desc;

-- выведи первые 3 строчки таблицы
select * from employee limit 3;

-- выведи последние 3 строчки таблицы
select * from employee ORDER BY empId desc limit 3;

-- выведи данные, где в названии отделов встречается буква “t”
select * from employee where dept like "%t%";

-- подсчитай длину названия отдела “Management”
select dept, length(dept) from employee where dept = 'Management';

-- подсчитай сумму всех зарплат сотрудников
select sum(salary) from employee;

-- узнай среднюю зарплату сотрудников
select avg(salary) from employee;
select dept, round(avg(salary)) from employee group by dept; -- узнал дополнительно среднюю зп по отделам

-- округли среднюю зарплату сотрудников
select round(avg(salary)) from employee;

-- узнай минимальную и максимальную зарплату
select min(salary), max(salary)  from employee;
 
-- подсчитай количество сотрудников
select count(empId) from employee;

-- выведи количество сотрудников в каждом отделе
SELECT dept, count(dept) FROM employee GROUP BY dept;

-- выведи отделы, где минимальная зарплата больше 40 000
SELECT dept, salary FROM employee Where Salary > '40000' GROUP BY dept order by salary;