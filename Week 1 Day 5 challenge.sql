use ABC_DATA;

-- first order by date for each customer

SELECT c.customer_id, c.first_name, c.last_name, MIN(o.order_date) AS first_order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

-- Total revenue per product

SELECT p.product_name,
       SUM(oi.quantity * p.price) AS total_revenue
FROM products p
JOIN order_items oi ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;

-- the day with highest revenue 

SELECT
    c.first_name,
    c.last_name,
    p.price
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN products p ON p.product_id = oi.product_id
JOIN customers c ON c.customer_id = o.customer_id
WHERE p.price = (SELECT MAX(price) FROM products);

