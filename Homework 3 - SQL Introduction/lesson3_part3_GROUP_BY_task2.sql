SELECT
	item,
	COUNT(order_id),
	ROUND(AVG(amount), 2)
FROM orders
GROUP BY (item);

--Посчитайте общее количество заказов и среднюю сумму по каждому товару.