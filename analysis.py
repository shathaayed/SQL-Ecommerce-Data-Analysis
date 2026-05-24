import mysql.connector
import matplotlib.pyplot as plt
import pandas as pd
#ننادي المكتبات الثلاث عشان نبدا نحلل الداتابيس

db_connection = mysql.connector.connect(
    host="localhost",
    user="root",      
    password="",      
    database="ecommerce_analysis" 
)
#مكتبه الكونكتر عشان نوصل للسيرفر وندخل على الداتابيس

query = """
SELECT YEAR(orders.order_date) AS Order_year, 
       COUNT(orders.order_id) AS Total_Orders, 
       SUM(orders.total) AS year_Revenue 
FROM orders 
GROUP BY YEAR(orders.order_date) 
ORDER BY Order_year ASC;
"""
#استعلام البيعات في السنه 
df = pd.read_sql(query, db_connection)
db_connection.close()

plt.figure(figsize=(8, 5))
plt.plot(df['Order_year'].astype(str), df['year_Revenue'], marker='o', color='#8e44ad')
plt.title('E-Commerce Annual Business Growth (2022 - 2026)')
plt.xlabel('Year')
plt.ylabel('Revenue (SAR)')
plt.show()
#بارت الرسم واستخدمت  AI

plt.figure(figsize=(8, 5))
plt.plot(df['Order_year'].astype(str), df['year_Revenue'], marker='o', color='#8e44ad')
plt.title('E-Commerce Annual Business Growth (2022 - 2026)')
plt.xlabel('Year')
plt.ylabel('Revenue (SAR)')
plt.show()
