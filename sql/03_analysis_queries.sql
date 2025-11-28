-- ================================
-- 03_analysis_queries.sql
-- Analysis and Insights Script
-- ================================

-- 1. Total Sales
SELECT SUM(sales) AS total_sales
FROM train;

-- 2. Total orders
SELECT COUNT(*) AS total_orders
FROM train;

-- 3. Sales by Category
SELECT category, SUM(sales) AS total_sales
FROM train
GROUP BY category
ORDER BY total_sales DESC;

-- 4. Sales by Region
SELECT region, SUM(sales) AS total_sales
FROM train
GROUP BY region
ORDER BY total_sales DESC;

-- 5. Monthly Sales Trend
SELECT 
    order_year,
    order_month,
    SUM(sales) AS monthly_sales
FROM train
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

-- 6. Top 10 Products by Revenue
SELECT product_name, SUM(sales) AS revenue
FROM train
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

-- 7. Sales by Sub-Category
SELECT sub_category, SUM(sales) AS total_sales
FROM train
GROUP BY sub_category
ORDER BY total_sales DESC;

-- 8. Sales by Customer Segment
SELECT segment, SUM(sales) AS total_sales
FROM train
GROUP BY segment;

-- 9. Average Ship Days by Region
SELECT region, AVG(ship_days) AS avg_ship_days
FROM train
GROUP BY region;

-- 10. Top 10 Customers
SELECT customer_name, SUM(sales) AS total_spent
FROM train
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;
