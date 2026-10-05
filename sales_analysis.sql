## Sales Perfomance Analyses

#Total Sales
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
