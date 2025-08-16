SELECT
	first_name,
	last_name,
	age,
	country
FROM customers
WHERE
	country='USA' AND age>25;

--There was no ID column in the example of expected result in homework PDF, so I chose every column but "customer_id"

--Задача 1 - Найдите всех клиентов из страны 'USA', которым больше 25 лет.