-- SUPERSTORE SALES SQL PROJECT
-- Author : Harini k
-- Tool : MySQL

-- =============================================================================================================================================================
-- Basic Sales Insights
-- =============================================================================================================================================================

CREATE DATABASE newproject;
use newproject;

SELECT * FROM superstore_sales_dataset;

-- 1. Total sales and Profit
SELECT SUM(Sales) AS total_sales, SUM(Profit) AS total_profit FROM superstore_sales_dataset;

-- 2. Sales by Region
SELECT Region, SUM(Sales) AS region_sales FROM superstore_sales_dataset
GROUP BY Region ORDER BY Region_sales DESC;

-- 3. Top 5 Products by sales
SELECT Product_Category, SUM(Sales) AS total_sales FROM superstore_sales_dataset 
GROUP BY Product_Category ORDER BY total_sales DESC LIMIT 5;

-- 4. Most Profitable Region
SELECT Region, SUM(Profit) AS total_profit FROM superstore_sales_dataset
GROUP BY Region ORDER BY total_profit DESC LIMIT 1;

-- 5. Repeat Customers (Based on Multiple orders)
SELECT Customer_ID, Customer_Name, COUNT(DISTINCT Order_ID) AS total_orders FROM superstore_sales_dataset
GROUP BY Customer_ID, Customer_Name HAVING total_orders > 1;

-- ===================================================================================================================================================================
-- Advanced Business Analysis
-- ===================================================================================================================================================================

-- 6. Monthly Sales and Profit Trend
SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS order_month, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit FROM superstore_sales_dataset
GROUP BY order_month ORDER BY order_month;

-- 7. Profit Margin by Product Category
SELECT Product_Category, ROUND(SUM(Profit)/SUM(Sales)*100,2) AS profit_margin_percentage FROM superstore_sales_dataset
GROUP BY Product_category ORDER BY profit_margin_percentage DESC;

-- 8. Sales Impact of Discounts
SELECT Discount, COUNT(*) AS num_orders, ROUND(SUM(Sales),2) AS total_sales, ROUND(SUM(Profit),2) AS total_profit FROM superstore_sales_dataset
GROUP BY Discount ORDER BY Discount;

-- 9. Customer Lifetime value
SELECT Customer_ID,Customer_Name,COUNT(DISTINCT order_ID) AS total_orders, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit FROM superstore_sales_dataset
GROUP BY Customer_ID, Customer_Name ORDER BY total_sales DESC;

-- 10. Average Order Value by Segment
SELECT Segment, ROUND(SUM(Sales) / COUNT(DISTINCT Order_ID),2) AS avg_order_value FROM superstore_sales_dataset
GROUP BY Segment ORDER BY avg_order_value DESC;

-- 11. Region-wise Sales and Profit Heatmap Query
SELECT Region, Product_Category, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit FROM superstore_sales_dataset
GROUP BY Region, Product_Category ORDER BY Region, total_sales DESC;

-- 12. Product Performance with discount Analysis
SELECT Product_Category, ROUND(AVG(Discount),2) AS avg_dicount, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit FROM superstore_sales_dataset
GROUP BY product_category ORDER BY total_sales DESC;
