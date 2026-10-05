## Sales Perfomance Analysis

##Total Sales
SELECT SUM(sales)AS total_sales
FROM sales;

## Total Profit
SELECT SUM(profit) AS total_profit
FROM sales;

## Sales by product
SELECT product,
  SUM(sales) AS total_sales
FROM sales
GROUP BY product
ORDER BY total_sales DESC;

## Sales by Region
SELECT region,
   SUM(sales) AS total_sales 
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

## Top 5 Products by Sales
SELECT product,
   SUM(sales) AS total_sales
FROM sales
GROUP BY product
ORDER BY total_sales DESC
LIMIT 5;

## Profit by Product
SELECT product,
  SUM(profit) AS total_profit
FROM sales
GROUP BY product
ORDER BY total_profit DESC;

## Profit by Region
SELECT region,
  SUM(profit) AS total_profit DESC;
FROM sales
GROUP BY region
ORDER BY total_profit DESC;
