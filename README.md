📘 README: SQL Concepts Used in Ecommerce Dataset
📂 Dataset Overview
The ecommerce system includes the following CSV-based tables:

customers – Customer personal and signup details

orders – Each customer’s order details

products – List of items available for sale

payments – Payment transactions for orders

🧠 SQL Concepts Explained
1. SELECT
Used to retrieve data from tables.

sql
Copy
Edit
SELECT first_name, email FROM customers;
✅ Retrieves selected columns from a table.

2. WHERE
Filters data based on specified conditions.

sql
Copy
Edit
SELECT * FROM customers WHERE country = 'India';
✅ Returns only customers from India.

3. ORDER BY
Sorts query results by one or more columns.

sql
Copy
Edit
SELECT * FROM orders ORDER BY order_date DESC;
✅ Lists recent orders first.

4. GROUP BY
Groups rows with the same values and allows aggregation.

sql
Copy
Edit
SELECT customer_id, COUNT(*) FROM orders GROUP BY customer_id;
✅ Shows total orders placed per customer.

5. HAVING
Filters grouped results (used with GROUP BY).

sql
Copy
Edit
HAVING SUM(amount) > 1000;
✅ Shows only customers who spent more than ₹1000.

6. JOINs (INNER, LEFT, RIGHT)
Combines rows from two or more tables using related columns.

🔹 INNER JOIN
Only returns rows with matching keys in both tables.

sql
Copy
Edit
SELECT * FROM orders o JOIN customers c ON o.customer_id = c.customer_id;
🔹 LEFT JOIN
Returns all rows from the left table, even if there's no match in the right.

sql
Copy
Edit
SELECT * FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id;
🔹 RIGHT JOIN (only in MySQL/PostgreSQL)
Returns all rows from the right table, even if there's no match in the left.

7. Aggregate Functions
Perform calculations on data.

Function	Description
COUNT()	Number of rows
SUM()	Total value
AVG()	Average value
MAX()	Highest value
MIN()	Lowest value

Example:

sql
Copy
Edit
SELECT customer_id, SUM(amount) FROM payments GROUP BY customer_id;
8. Subqueries
A query inside another query.

Example:

sql
Copy
Edit
SELECT customer_id, SUM(amount) 
FROM payments 
GROUP BY customer_id
HAVING SUM(amount) > (
    SELECT AVG(amount) FROM payments WHERE status = 'Success'
);
✅ Filters customers who spent more than average.

9. CREATE VIEW
Creates a virtual table for simplified access to joined/processed data.

sql
Copy
Edit
CREATE VIEW customer_order_summary AS
SELECT c.first_name, o.order_id, p.amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id;
✅ Can now query customer_order_summary like a regular table.

10. CREATE INDEX
Speeds up query performance on large tables by indexing columns.

sql
Copy
Edit
CREATE INDEX idx_country ON customers(country(50)); -- MySQL requires length for TEXT fields
✅ Useful when filtering (WHERE), joining (JOIN), or sorting (ORDER BY) frequently.

🛠 Example Use Cases
Task	SQL Concept
Get top 5 customers by spending	JOIN, GROUP BY, SUM, ORDER BY, LIMIT
Check customer with no orders	LEFT JOIN, NULL filtering
Daily sales trend	GROUP BY, DATE, SUM
Most used payment method	GROUP BY, COUNT, ORDER BY
Performance tuning	CREATE INDEX, data types

📁 How to Use in Projects
Load CSVs into database (e.g., MySQL, PostgreSQL, SQLite)

Run queries using a SQL client or Jupyter Notebook

Create dashboards in Power BI or Tableau using views

Optimize performance with indexes and better joins

