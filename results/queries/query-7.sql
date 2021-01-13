SELECT SUM(products.price*order_product.quantity) AS 'total'
FROM orders
INNER JOIN order_product ON orders.id = order_product.order_id
INNER JOIN products ON order_product.product_id=products.id
WHERE DATE (orders.date) = CURRENT_DATE()

