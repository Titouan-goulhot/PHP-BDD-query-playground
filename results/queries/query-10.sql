SELECT *
COUNT(orders.number), customers.first_name, customers.last_name
FROM orders
FULL OUTER JOIN customers ON customer_id = orders.customer_id
GROUP BY orders.number

