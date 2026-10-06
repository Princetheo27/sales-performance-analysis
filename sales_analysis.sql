## Sales Perfomance Analysis

##Total Revenue
SELECT SUM(Revenue) AS total_revenue
FROM sales;

## Total Units Sold
SELECT SUM(Units_sold) AS total_units_sold
FROM sales;

## Revenue by Product
SELECT Product,
  SUM(Revenue) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;

## Revenue by City
SELECT City,
   SUM(Revenue) AS total_revenue
FROM sales
GROUP BY City
ORDER BY total_revenue DESC;

## Top 5 Products by Revenue
SELECT Product,
   SUM(Revenue) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 5;

## Average Unit Price by Product
SELECT Product,
  AVG(unit_price) AS average_unit_price
FROM sales
GROUP BY product
ORDER BY avarage_unit_price DESC;

## Revenue by Date
SELECT Date,
  SUM(Revenue) AS daily_revenue 
FROM sales
GROUP BY Date
ORDER BY Date;

SELECT SUM(c6) AS total_revenue
FROM Sales_data;

SELECT c3 AS product,
   SUM(c6) AS total revenue
FROM Sales_data
GROUP BY c3
ORDER BY total_revenue DESC;
