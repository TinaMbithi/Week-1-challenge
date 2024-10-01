CREATE DATABASE ABC_DATA;

use ABC_DATA;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
email VARCHAR(100)
);

SELECT * FROM customers;

INSERT INTO customers (customer_id, first_name, last_name, email) VALUES
(1, 'John', 'Doe', 'johndoe@email.com');

CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
price DECIMAL(10,2)
);
    
SELECT * FROM products;
    
INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Product A', 10.00);

    
CREATE TABLE order_items (
order_id INT,
product_id INT,
quantity INT,
FOREIGN KEY (product_id) references products (product_id),
FOREIGN KEY( order_id) REFERENCES orders (order_id)
);

SELECT * FROM order_items;
    
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 2);
         