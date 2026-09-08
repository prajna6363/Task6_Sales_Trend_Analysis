-- ============================================
-- Task 6: Sales Trend Analysis Using Aggregations
-- Dataset: Online Sales Data
-- Database: MySQL
-- ============================================

USE online_sales;

-- 1. Monthly Revenue
SELECT
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
    ROUND(SUM(amount), 2) AS monthly_revenue
FROM online_sales_data
GROUP BY
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y'))
ORDER BY year, month;


-- 2. Monthly Order Volume
SELECT
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales_data
GROUP BY
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y'))
ORDER BY year, month;


-- 3. Monthly Revenue and Order Volume
SELECT
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
    COUNT(DISTINCT order_id) AS order_volume,
    ROUND(SUM(amount), 2) AS monthly_revenue
FROM online_sales_data
GROUP BY
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y'))
ORDER BY year, month;


-- 4. Top 3 Months by Sales
SELECT
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
    ROUND(SUM(amount), 2) AS monthly_revenue
FROM online_sales_data
GROUP BY
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y'))
ORDER BY monthly_revenue DESC
LIMIT 3;


-- 5. Sales Trend for January to April 2024
SELECT
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
    COUNT(DISTINCT order_id) AS order_volume,
    ROUND(SUM(amount), 2) AS monthly_revenue
FROM online_sales_data
WHERE STR_TO_DATE(order_date, '%d-%m-%Y')
      BETWEEN '2024-01-01' AND '2024-04-30'
GROUP BY
    YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(order_date, '%d-%m-%Y'))
ORDER BY year, month;


-- 6. NULL Value Check
SELECT
    COUNT(*) AS total_records,
    COUNT(order_id) AS non_null_orders,
    COUNT(order_date) AS non_null_dates,
    COUNT(amount) AS non_null_amounts
FROM online_sales_data;


-- 7. Overall Sales Summary
SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(amount), 2) AS total_revenue,
    ROUND(AVG(amount), 2) AS average_order_value,
    MIN(STR_TO_DATE(order_date, '%d-%m-%Y')) AS first_order_date,
    MAX(STR_TO_DATE(order_date, '%d-%m-%Y')) AS last_order_date
FROM online_sales_data;