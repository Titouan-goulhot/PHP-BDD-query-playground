SELECT *
FROM orders
WHERE date 
between DATEADD('2021-01-04', INTERVAL -10 day) AND NOW();