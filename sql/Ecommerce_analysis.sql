select * from ecommerce_sales;
SELECT DISTINCT Region FROM ecommerce_sales;
SELECT COUNT(*) FROM ecommerce_sales;

-- TOTAL REVENUE
SELECT SUM(Sales) AS revenue
FROM ecommerce_sales;

-- BEST SELLING PRODUCT
SELECT Product, SUM(quantity) AS total_units
FROM ecommerce_sales
GROUP BY Product
ORDER BY total_units DESC;

-- MOST PROFITABLE REGION
SELECT Region, SUM(Profit) AS profit
FROM ecommerce_sales
GROUP BY Region
ORDER BY profit DESC;

-- BEST REGION
SELECT Region, SUM(Sales) AS revenue
FROM ecommerce_sales
GROUP BY Region
ORDER BY revenue DESC;

-- MONTHLY SALES TREND
SELECT MONTHNAME(Order_date) AS Month,
SUM(Sales) AS revenue
FROM ecommerce_sales
GROUP BY Month
order by revenue;

-- VIEWS
CREATE VIEW top_category AS
SELECT category, SUM(Sales) AS revenue
FROM ecommerce_sales
GROUP BY Category;
