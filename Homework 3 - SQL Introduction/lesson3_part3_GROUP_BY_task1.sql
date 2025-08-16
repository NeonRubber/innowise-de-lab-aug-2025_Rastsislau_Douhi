SELECT
	COUNT(customer_id),
	country 
FROM customers
GROUP BY (country);

--Подсчитайте количество клиентов в каждой стране.