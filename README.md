# Tesla Sales SQL Analysis Report

## 1. Introduction

This report presents insights derived from Tesla's sales dataset using SQL queries. The dataset contains records of Tesla car sales across various countries and time periods, including details such as model, price, purchase type, and gross profit.

## 2. Dataset Overview

| Column        | Description                                |
|---------------|--------------------------------------------|
| Model         | Tesla car model (e.g., Model X, Model Y)   |
| Period        | Sales period (YYYYMM format)               |
| Country       | The country where the sale took place      |
| Purchase Type | How the car was purchased (Deposit, Cash, etc.) |
| Version       | The specific version of the car            |
| Price         | The price at which the car was sold        |
| Gross Profit  | The profit made from the sale              |

## 3. Key Insights from SQL Analysis

### 3.1 Total Sales Over Time

**SQL Query Used:**

```sql
SELECT period, COUNT(*) AS total_sales
FROM TeslaSales
GROUP BY period
ORDER BY total_sales;
```

![image](https://github.com/user-attachments/assets/f485c1da-4f1e-495f-bb7f-0a1fc0c6fd5b)


#### Findings:

* The highest number of Tesla sales occurred in 2016-04.

* The slowest sales month was 2017-10.


### 3.2 Country-Wise Sales Performance

**SQL Query Used:**

```sql
SELECT country, SUM(price) AS total_revenue
FROM TeslaSales
GROUP BY country
ORDER BY total_revenue DESC;
```

![image](https://github.com/user-attachments/assets/13647ba3-1b4f-423b-9766-0243dcd5f57a)


#### Findings:

* The United States had the highest sales revenue.

* The lowest revenue came from Australia.


### 3.3 Most Popular Tesla Model

**SQL Query Used:**

```sql
SELECT model, COUNT(*) AS total_sales
FROM TeslaSales
GROUP BY model
ORDER BY total_sales DESC;
```

![image](https://github.com/user-attachments/assets/4a7a3f24-b681-458f-9eb9-d5545e81bd05)


#### Findings:

* The best-selling Tesla model was Model X.

* The least popular model was Model S.


### 3.4 Tesla Version with Highest Revenue

**SQL Query Used:**

```sql
SELECT version, SUM(price) AS total_revenue
FROM TeslaSales
GROUP BY version
ORDER BY total_revenue DESC;
```

#### Findings:

* The P90D version contributed the highest revenue.

* The 90D AWD version had the least revenue.


### 3.5 Profitability Analysis

**SQL Query Used:**

```sql
SELECT model, SUM(gross_profit) AS total_gross_profit
FROM TeslaSales
GROUP BY model
ORDER BY total_gross_profit DESC;
```

#### Findings:

* The most profitable Tesla model was Model X.

* The least profitable model was Model S.


## 4. Power BI Visualizations

The dataset was also visualized in Power BI, showcasing:

* Sales Trends Over Time (Line Chart)

* Country-Wise Sales Revenue (Bar Chart)

* Model Popularity (Pie Chart)

* Profitability by Model (Stacked Column Chart)





## 5. Conclusion

* Tesla's highest revenue comes from USA.

* Model X is the most popular model based on sales count.

* Seasonal trends impact Tesla sales, with peaks in 2016-04.

* Tesla should focus on improving sales in Australia.
