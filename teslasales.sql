CREATE DATABASE TeslaSalesDB;
USE TeslaSalesDB;

CREATE TABLE TeslaSales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(50),
    period INT, 
    country VARCHAR(50),
    purchase_type VARCHAR(50),
    version VARCHAR(50),
    price DECIMAL(10,2),
    gross_profit DECIMAL(10,2)
);

#Total Sales Per Period (Year-Month)

SELECT period, COUNT(*) AS total_sales
FROM teslasales
GROUP BY period
ORDER BY period;

#Total Revenue Per Country

SELECT country, SUM(price) AS total_revenue
FROM TeslaSales
GROUP BY country
ORDER BY total_revenue DESC;

#Most Popular Tesla Models

SELECT model, COUNT(*) AS total_sales
FROM TeslaSales
GROUP BY model
ORDER BY total_sales DESC;

#Tesla Versions with the Highest Revenue

SELECT version, SUM(price) AS total_revenue
FROM TeslaSales
GROUP BY version
ORDER BY total_revenue DESC;

 #Average Price & Gross Profit by Model

SELECT model, 
       AVG(price) AS avg_price, 
       AVG(gross_profit) AS avg_profit
FROM TeslaSales
GROUP BY model
ORDER BY avg_price DESC;

#Most Profitable Sales by Gross Profit

SELECT * 
FROM TeslaSales
ORDER BY gross_profit DESC
LIMIT 5;


#Sales Breakdown by Purchase Type

SELECT purchase_type, COUNT(*) AS total_sales
FROM TeslaSales
GROUP BY purchase_type
ORDER BY total_sales DESC;


#Monthly Revenue Trends

SELECT period, SUM(price) AS total_sales
FROM TeslaSales
GROUP BY period
ORDER BY period;


#Rank Tesla Models by Profitability

SELECT model, 
       SUM(gross_profit) AS total_gross_profit,
       RANK() OVER (ORDER BY SUM(gross_profit) DESC) AS rank_profit
FROM TeslaSales
GROUP BY model;


#Country-wise Tesla Version Popularity

SELECT country, version, COUNT(*) AS total_sales
FROM TeslaSales
GROUP BY country, version
ORDER BY country, total_sales DESC;
