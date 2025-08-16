SELECT
	order_id,
	customer_id,
	item,
	amount,
	SUM(amount) OVER(PARTITION BY customer_id) AS total_by_number
FROM orders
ORDER BY customer_id;

--"SELECT *" could be used to select all the columns, but for it to have the same order as the exmaple from homework PDF I have selected every column in the same order

--Для каждого заказа добавьте колонку с суммой всех заказов этого клиента (используя оконную функцию).