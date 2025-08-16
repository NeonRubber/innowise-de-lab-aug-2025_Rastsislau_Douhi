SELECT
	item,
	COUNT(order_id),
	AVG(amount)
FROM orders
GROUP BY (item);

--Посчитайте общее количество заказов и среднюю сумму по каждому товару.