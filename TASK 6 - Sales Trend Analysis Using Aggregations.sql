CREATE DATABASE Online_sales;

SELECT * FROM Online_sales;


-- EXTRACT(MONTH FROM OrderDate) for month

SELECT OrderID,OrderDate,MONTH(OrderDate) AS Order_Month
FROM Online_sales;

-- GROUP BY year/month

SELECT  YEAR(OrderDate) AS Order_Year,MONTH(OrderDate) AS Order_Month
FROM online_sales
GROUP BY YEAR(OrderDate),MONTH(OrderDate);

--  SUM() for revenue
SELECT YEAR(OrderDate) AS Order_Year,
MONTH(OrderDate) AS Order_Month,
SUM(CAST(SalesAmount AS DECIMAL(18,2))) AS Total_Revenue  FROM  online_sales
GROUP BY YEAR(OrderDate),MONTH(OrderDate)
ORDER BY Order_Year,Order_Month;

-- COUNT(DISTINCT order_id) for volume
SELECT YEAR(OrderDate) AS Order_Year,
MONTH(OrderDate) AS Order_Month,
COUNT(DISTINCT OrderID) AS Order_Volume
FROM online_sales
GROUP BY YEAR(OrderDate),MONTH(OrderDate)
ORDER BY Order_Year,Order_Month;

--  ORDER BY for sorting
SELECT OrderID, OrderDate, SalesAmount
FROM online_sales
ORDER BY OrderDate ASC;

-- Limit results for specific time periods
SELECT  YEAR(OrderDate) AS Order_Year,
 MONTH(OrderDate) AS Order_Month,
 SUM(CAST(SalesAmount AS DECIMAL(18,2))) AS Total_Revenue,
  COUNT(DISTINCT OrderID) AS Order_Volume
FROM  online_sales
WHERE  YEAR(OrderDate) = 2024
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY  Order_Year, Order_Month;




