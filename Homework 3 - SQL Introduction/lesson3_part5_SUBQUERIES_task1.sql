SELECT
	customers.first_name,
	customers.last_name,
	orders.amount
FROM customers
JOIN orders
	ON customers.customer_id = orders.customer_id
WHERE orders.amount=(SELECT MAX(amount)
	FROM orders);

--Найдите всех клиентов, которые сделали заказ с максимальной суммой.