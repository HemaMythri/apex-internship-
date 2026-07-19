# Query 1: Top 5 Products by Revenue
query1 = """
SELECT product_name,
       ROUND(SUM(total_amount), 2) AS revenue
FROM cafe_sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 5;
"""

print("Top 5 Products by Revenue")
print(pd.read_sql_query(query1, conn))
print("\n" + "="*50 + "\n")


# Query 2: Revenue by Payment Method
query2 = """
SELECT payment_method,
       ROUND(SUM(total_amount), 2) AS revenue
FROM cafe_sales
GROUP BY payment_method
ORDER BY revenue DESC;
"""

print("Revenue by Payment Method")
print(pd.read_sql_query(query2, conn))
print("\n" + "="*50 + "\n")


# Query 3: Transaction Status Distribution
query3 = """
SELECT transaction_status,
       COUNT(*) AS total_transactions
FROM cafe_sales
GROUP BY transaction_status;
"""

print("Transaction Status Distribution")
print(pd.read_sql_query(query3, conn))
print("\n" + "="*50 + "\n")


# Query 4: Top 10 Products by Quantity Sold
query4 = """
SELECT product_name,
       SUM(quantity) AS units_sold
FROM cafe_sales
GROUP BY product_name
ORDER BY units_sold DESC
LIMIT 10;
"""

print("Top 10 Products by Quantity Sold")
print(pd.read_sql_query(query4, conn))
print("\n" + "="*50 + "\n")


# Query 5: High Value Transactions Analysis
query5 = """
SELECT high_value_transaction,
       COUNT(*) AS transaction_count
FROM cafe_sales
GROUP BY high_value_transaction;
"""

print("High Value Transactions Analysis")
print(pd.read_sql_query(query5, conn))