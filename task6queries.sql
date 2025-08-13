create database task6;
use task6
CREATE TABLE orders (
    order_date DATE,
    amount DECIMAL(10,2),
    product_id VARCHAR(50),
    order_id VARCHAR(50),
    Quantity INT,
    CustomerID INT,
    UnitPrice DECIMAL(10,2),
    Country VARCHAR(50)
);
SELECT * FROM orders;
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue
FROM orders
GROUP BY order_year, order_month
ORDER BY total_revenue DESC
LIMIT 3;
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
