USE abc_data;

----- Which product has the highest price? Only return a single row.
SELECT * FROM products
ORDER BY price DESC
LIMIT 1;

----- -- Question 2: Order with highest total quantity
SELECT order_id, SUM(quantity) AS total_quantity
FROM order_items
GROUP BY order_id
ORDER BY total_quantity DESC
LIMIT 1;
