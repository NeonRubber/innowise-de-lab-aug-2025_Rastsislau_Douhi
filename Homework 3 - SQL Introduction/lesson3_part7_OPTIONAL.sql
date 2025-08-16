SELECT
	CONCAT(customers.first_name, ' ',customers.last_name) AS full_name,
	customers.country,
	COUNT(orders.order_id) AS total_orders,
	SUM(orders.amount) AS total_amount
FROM customers
JOIN orders
	ON customers.customer_id=orders.customer_id
	WHERE EXISTS (
		SELECT
		*
		FROM shippings
		WHERE shippings.customer=customers.customer_id
		AND shippings.status='Delivered'
		)
GROUP BY full_name, customers.country
HAVING COUNT(orders.order_id)>=2;

--Найдите клиентов, которые:
--1. Сделали хотя бы 2 заказа (любых),
--2. Имеют хотя бы одну доставку со статусом 'Delivered'.
--Для каждого такого клиента выведите:
--● full_name (имя + фамилия),
--● общее количество заказов,
--● общую сумму заказов,
--● страну проживания.