SELECT orders.number, SUM(products.price*order_product.quantity) AS total
FROM orders
INNER JOIN order_product ON order_product.order_id = orders.id
INNER JOIN products ON products.id = order_product.product_id
INNER JOIN customers ON customers.id = orders.customer_id
WHERE customers.first_name = 'Charlize'
GROUP BY orders.number