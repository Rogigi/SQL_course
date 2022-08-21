-- 1.	посмотреть все доступные БД 
show databases;

-- 2.	подключиться к БД "world" 
use world;

-- 3.	получить все данные из таблицы city
select * from city;

-- 4.	вывести только столбцы с названием стран и населением из таблицы city 
select Name, Population from city;

-- 5.	получить уникальные значения поля Language из таблицы countrylanguage 
select distinct language from countrylanguage;

-- 6.	вывести города, где население превышает 5 000 000 человек из таблицы city 
select name from city where population > 5000000;

-- 7.	вывести информацию о конкретном городе - "Лондон" из таблицы city 
select * from city where Name = 'London'; -- запрос 1 выводит все Лондоны
select * from city where Name = 'London' and CountryCode <> 'CAN';   -- запрос два выводит Лондон из Англии ) надеюсь так можно было.

-- 8.	узнать все официальные языки, где процент говорящих выше 80 % из таблицы countrylanguage 
select language from countrylanguage where Percentage > 80;

-- 9.	узнать все города из Австралии или из России из таблицы city 
select Name from city where CountryCode in ('AUS','RUS'); 
select Name from city where CountryCode = 'AUS' or CountryCode = 'RUS';

-- 10.	узнать все города, которые НЕ находятся в Китае из таблицы city. Не нашел страну Китай. )
 select Name, District from city where Not District = 'England';   

-- 11.	узнать данные, где язык = Английский или код страны НЕ “CAN” и процент говорящих НИ меньше 50 из таблицы countrylanguage 
select * from countrylanguage where Language = 'English' OR Not (CountryCode = 'Can' and percentage <= 50);

-- 12.	получить данные только определенных языков: Русский и Английский из таблицы countrylanguage 
select * from countrylanguage where Language In ('Russian', 'English');

-- 13.	получить все города, населения которых от 1 000 000 до 5 000 000 из таблицы city 
select Name from city where Population between 1000000 and 5000000;

-- 14.	узнаем все страны с буквами "St" в названии
select Name from country where Name like "%St%";
