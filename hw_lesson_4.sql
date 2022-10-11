SELECT * FROM employee;
SELECT * FROM employee WHERE salary = (SELECT max(salary) from employee);
SELECT salary FROM employee WHERE empId IN (SELECT pdId FROM personaldata WHERE city = "Moscow");
SELECT employee.name, personaldata.phone, employee.salary FROM employee JOIN personaldata ON employee.empId = personaldata.pdId;
SELECT employee.name, personaldata.phone, employee.salary FROM employee LEFT JOIN personaldata ON employee.empId = personaldata.pdId;
SELECT employee.name, personaldata.phone, employee.salary FROM employee RIGHT JOIN personaldata ON employee.empId = personaldata.pdId;


-- Какие компании совершали перелеты на Boeing
SELECT name FROM Company JOIN Trip
on Company.id  = Trip.company  WHERE 
plane = 'Boeing' GROUP by name;

-- Задание 14. В какие города летал Bruce Willis?
SELECT town_to FROM trip JOIN Pass_in_trip
ON Trip.id = Pass_in_trip.trip JOIN Passenger 
on Passenger.id = Pass_in_trip.passenger
WHERE name = 'Bruce Willis';

-- Выведите имена пассажиров улетевших в Москву (Moscow) на самолете TU-134

SELECT DISTINCT name FROM Passenger JOIN Pass_in_trip
ON Passenger.id = Pass_in_trip.passenger  JOIN Trip 
on Pass_in_trip.trip  = Trip.id
WHERE town_to='Moscow' AND plane = 'TU-134';
