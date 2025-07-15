# 🛒 Retail Sales Analysis using SQL & Power BI

## 📌 Objective
Analyze retail sales data using SQL to identify trends, customer behavior, and discount impact. Visualize insights through an interactive Power BI dashboard to support strategic business decisions.

---

## 💻 Tools Used
- *MySQL* – for querying and aggregating sales data  
- *Power BI* – for creating interactive visualizations  
- *Excel* – for data preprocessing and dashboard reporting

---

## 📂 Project Structure
---

## 📊 Key Business Questions Answered
- Which region generates the highest sales and profit?
- What is the monthly sales trend over time?
- How do discounts affect profit margins?
- Which product category is most profitable?
- What are the average order values across customer segments?

---

## 📄 Sample SQL Query
```sql
SELECT 
  Region, 
  SUM(Sales) AS Total_Sales,
  SUM(Profit) AS Total_Profit
FROM superstore_sales
GROUP BY Region
ORDER BY Total_Sales DESC;

---

**💡 Key Insights**

📍 South region consistently generated the highest revenue.

💰 Technology category had the highest profit margin.

📉 Discounts above 15% led to reduced profitability.

👤 Consumer segment showed the highest average order value.

📅 Sales dipped in February compared to January.

---

✅ Outcome

Gained hands-on experience with SQL, Power BI, and real-world business analysis.

Developed a reusable query pack for business teams.

Delivered clear insights that support sales and pricing strategy.


---

🙋‍♀ About Me

I’m Harini, an aspiring Data Analyst with strong skills in SQL, Excel, Power BI, and machine learning. This project demonstrates my ability to turn raw data into actionable business insights.


