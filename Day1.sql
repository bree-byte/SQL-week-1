USE abc_data;

CREATE TABLE customer(
customer_id INT PRIMARY KEY,
first_name VARCHAR(10),
last_name VARCHAR(10),
email VARCHAR(100)
);

CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(20),
price DECIMAL
);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE
);

CREATE TABLE order_items(
order_id INT PRIMARY KEY,
product_id INT,
quantity int
);