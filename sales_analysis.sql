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

SELECT c2 AS city
   SUM(c6) AS total_revenue
FROM Sales_data 
GROUP BY c2
ORDER BY total_revenue DESC;

SELECT SUM(c4) AS total_units_sold
FROM Sales_data

SELECT AVG(c5) AS avarage_unit_price
FROM Sales_data;

SELECT c3 AS product,
  SUM(c6) AS total_revenue
FROM Sales_data 
WHERE c3<>'Product'
GROUP BY c3
ORDER BY total_revenue

SELECT c2 AS city,
  SUM(c6) AS total_revenue
FROM Sales_data
WHERE c2<>'City'
GROUP BY c2
ORDER BY total_revenue DESC;

SELECT c2 AS city,
   SUM(c6) AS total_revenue
FROM Sales_data
WHERE c2!='city'
AND c6>0
GROUP BY c2
ORDER BY total_revenue DESC;

SELECT c3 AS product,
   SUM(c4) AS total_units_sold
   SUM(c6) AS total_revenue
FROM Sales_data
WHERE c3 NOT IN ('Product','Monitor')
GROUP BY c3
ORDER BY total_revenue DESC;

SELECT c2 AS city,
   c3 AS product,
   SUM(c6) AS total_revenue
FROM Sales_data
WHERE c2 !='City'
 AND c3 NOT IN ('Product','Monitor')
 AND c6>0
GROUP BY c2,c3
ORDER BY total_revenue DESC;

SELECT c3 AS product,  
  c5 AS unit_price
  c6 AS revenue
FROM Sales_data
WHERE c3 NOT IN ('Product','Monitor')
 AND c6>0;

SELEcT c3 AS product,
  c5 AS units_sold,
  c6 AS revenue
FROM Sales_data
WHERE c3 NOT IN ('Product','MOnitor')
 AND c6>0;

SELECT c3 AS product,
SUM(c6) AS total_revenue
FROM Sales_data
WHERE c3 NOT IN ('Product','Monitor')
AND c6>0
GROUP BY c3
ORDER BY total_revenue DESC;

SELECT c3 AS product,
 SUM(c5) AS total_units_sold
FROM Sales_data
WHERE c3 NOT IN('Product','Monitor')
AND c5>0
GROUP BY c3
ORDER BY total_units_sold DESC;

SELECT c2 AS city,
SUM(c6) AS total_revenue
FROM Sales_data
WHERE c2 NOT IN('City')
AND c6>0
GROUP BY c2
ORDER BY total_revenue DESC;

SELECT c2 AS city,
SUM(c5) AS total_units_sold
FROM Sales_data
WHERE c2 NOT IN ('CITY')
AND c5>0
GROUP BY c2
ORDER BY total_units_sold DESC;

SELECT c3 AS product,
AVG(c6) AS average_revenue
FROM Sales_data
WHRE c3 NOT IN('Product','Monitor')
AND c6>0
GROUP BY c3
ORDER BY average_revenue DESC;

SELECT                    
  SUM(C6) AS total_revenue
FROM Sales_data 
WHERE c3 NOT IN ('Product','MONITOR')
AND c6>o;

SELECT
SUM(c5) AS total_units_sold
FROM Sales_data
WHERE c3 NOT IN ('Product','Monitor')
AND c5>0;

SELECT 
AVG(c4) AS avarage_unit_price
FROM Sales_data
WHERE c3 NOT IN ('Product','Monitor')
AND c4>0;

SELECT
c3 AS product,
SUM(c5) AS total_units_sold,
SUM(c6) AS total_revenue
FROM Sales_data
WHERE c3 NOT IN ('Product','Monitor')
AND c5>0
AND c6>0
GROUP BY c3
ORDER BY total_revenue DESC;

SELECT
c2 AS city,
c3 AS product,
SUM(c6) AS total_revenue
FROM Sales_data
WHERE c2 NOT IN ('city')
AND c3 NOT IN ('Product','Monitor')
AND c6>0
GROUP BY c2,c3
ORDER BY total_revenue DESC;






