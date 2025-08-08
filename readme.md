📘 README: SQL Concepts Used in Ecommerce Dataset
📂 Dataset Overview
The ecommerce system includes the following CSV-based tables:

customers – Customer personal and signup details

orders – Each customer’s order details

products – List of items available for sale

payments – Payment transactions for orders

🔹 1. SELECT Statement
The SELECT statement is used to fetch data from one or more tables. You can choose specific columns or use * to get all columns.

Purpose: Retrieve data.

🔹 2. WHERE Clause
Used to filter records based on a specific condition. Only rows that meet the condition will be included in the result.

Purpose: Filter rows.

🔹 3. ORDER BY Clause
Sorts the result set in ascending (ASC) or descending (DESC) order based on one or more columns.

Purpose: Sort rows.

🔹 4. GROUP BY Clause
Groups rows that have the same values in specified columns and is often used with aggregate functions like SUM(), COUNT(), AVG().

Purpose: Aggregate data in groups.

🔹 5. Aggregate Functions
Used to perform calculations on data:

SUM() – Total of numeric column

AVG() – Average value

COUNT() – Number of records

MIN() / MAX() – Lowest / highest value

Purpose: Perform statistical operations on data.

🔹 6. JOINS
Combines rows from two or more tables based on related columns.

INNER JOIN: Returns only matching records.

LEFT JOIN: All records from the left table, and matching from the right.

RIGHT JOIN: All records from the right table, and matching from the left.

FULL OUTER JOIN (if supported): All records when there is a match in either table.

Purpose: Combine related data from different tables.

🔹 7. Subqueries
A query inside another query. Can be used in SELECT, FROM, or WHERE clauses.

Purpose: Provide data for the outer query based on conditions or computations.

🔹 8. VIEWS
A virtual table created by a query. It does not store data itself, but allows you to access complex queries like a table.

Purpose: Simplify access to complex data or calculations.

🔹 9. INDEXES
Indexes improve the speed of data retrieval operations on large tables. They work like a table of contents.

Single-column index: Index on one column.

Composite index: Index on multiple columns.

Purpose: Improve query performance.

🔹 10. HAVING Clause
Similar to WHERE but used to filter results after a GROUP BY.

Purpose: Filter aggregated data.

🔹 11. Aliases
Used to give temporary names to columns or tables for readability.

Purpose: Make output cleaner and more readable.

🔹 12. LIMIT / OFFSET
Used to restrict the number of rows returned by the query. Useful for pagination.

Purpose: Control result set size.
