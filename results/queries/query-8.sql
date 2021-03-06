
SELECT orders.number, SUM(products.price*order_product.quantity) AS total
FROM orders
INNER JOIN order_product ON order_product.order_id = orders.id
INNER JOIN products ON products.id = order_product.product_id
GROUP BY orders.number
HAVING SUM(products.price*order_product.quantity) BETWEEN 110 AND  550

