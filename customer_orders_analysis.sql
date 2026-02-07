Customer Order SQL Analysis

SELECT and show data preview.

SELECT *
FROM customer_orders
LIMIT 10;

Get a COUNT on total orders.

SELECT COUNT(*)
FROM customer_orders;

Get a COUNT on completed orders.

SELECT COUNT(*) 
FROM customer_orders
WHERE status = 'completed';

Show AVG order amount.

SELECT COUNT(*) 
FROM customer_orders
WHERE status = 'completed';

Show revenue by customers GROUP BY total spent.

SELECT SUM(order_amount) AS total_spent
FROM customer_orders
WHERE status = 'completed' 
GROUP BY customer_id
ORDER BY total_spent DESC;

Show orders by day.

SELECT order_date, COUNT(*) AS orders 
FROM customer_orders 
GROUP BY order_date
ORDER BY order_date;