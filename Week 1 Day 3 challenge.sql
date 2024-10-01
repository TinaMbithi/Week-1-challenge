use ABC_DATA;

SELECT product_id,product_name,price FROM products
ORDER BY price DESC
LIMIT 1;

SELECT order_id FROM order_items
GROUP BY order_id
ORDER BY sum(quantity) DESC
limit 1;




