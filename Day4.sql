USE abc_data;

----- 1. Which customer has made the most orders?

SELECT customer.customer_id,
COUNT(orders.order_id) AS order_count
FROM customer
INNER JOIN orders ON customer.customer_id = orders.customer_id
GROUP BY customer_id
ORDER BY order_count DESC
LIMIT 1;

----- 2. What’s the total revenue per product?
SELECT products.product_name,
SUM(products.price * order_items.quantity) AS total_revenue
FROM products
INNER JOIN order_items ON products.product_id = order_items.product_id
GROUP BY product_name
ORDER BY total_revenue DESC;


