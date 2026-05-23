-- 1️⃣ Query 1: Geographical Sales Distribution Analysis
SELECT 
    users.country AS Country,
    COUNT(orders.order_id) AS Total_Orders,
    SUM(orders.total) AS Total_Revenue
FROM orders
JOIN users ON orders.user_id = users.user_id
GROUP BY users.country
ORDER BY Total_Revenue DESC;

-- 2️⃣ Query 2: Customer Valuation & Behavioral Segmentation (VIP Tracking)
SELECT 
    users.name AS Customer_Name,
    users.country AS Country,
    COUNT(orders.order_id) AS Total_Orders,
    SUM(orders.total) AS Total_Spent
FROM orders
JOIN users ON orders.user_id = users.user_id
GROUP BY users.user_id, users.name, users.country
ORDER BY Total_Spent DESC;

-- 3️⃣ Query 3: Seasonal & Monthly Sales Trend Analysis
SELECT 
    MONTH(orders.order_date) AS Order_Month,
    COUNT(orders.order_id) AS Total_Orders,
    SUM(orders.total) AS Monthly_Revenue
FROM orders
GROUP BY MONTH(orders.order_date)
ORDER BY Order_Month ASC;

-- 4️⃣ Query 4: Long-Term Annual Business Growth Analysis
SELECT 
    YEAR(orders.order_date) AS Order_Year, 
    COUNT(orders.order_id) AS Total_Orders, 
    SUM(orders.total) AS Year_Revenue 
FROM orders 
GROUP BY YEAR(orders.order_date) 
ORDER BY Order_Year ASC;
