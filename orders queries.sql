SELECT * FROM ecommerce.orders;
// Query 2: Calculate average and total amount spent by each customer.
SELECT 
    o.customer_id,
    COUNT(o.order_id) AS total_orders,
    SUM(p.amount) AS total_spent,
    AVG(p.amount) AS avg_spent
FROM ecommerce.orders o
JOIN ecommerce.payments p ON o.order_id = p.order_id
WHERE p.status = 'Success'
GROUP BY o.customer_id
ORDER BY total_spent DESC;

// Query 3: List all orders along with the customer names.
SELECT 
    o.order_id,
    o.order_date,
    c.first_name || ' ' || c.last_name AS customer_name,
    o.status,
    o.total_amount
FROM ecommerce.orders o
INNER JOIN ecommerce.customers c ON o.customer_id = c.customer_id
ORDER BY o.order_date DESC
limit 7;

// Query 5: Show all orders and the customer details, including if customer record is missing (if applicable).
SELECT 
    o.order_id,
    o.customer_id,
    c.first_name,
    o.order_date,
    o.total_amount
FROM ecommerce.orders o
RIGHT JOIN ecommerce.customers c ON o.customer_id = c.customer_id;

// query 9: Top 10 Selling Products (by Order Count)
SELECT 
    o.order_id,
    o.customer_id,
    c.first_name,
    o.order_date,
    o.total_amount
FROM ecommerce.orders o
RIGHT JOIN ecommerce.customers c ON o.customer_id = c.customer_id;

T// query 11:otal Revenue Per Customer
SELECT 
    o.customer_id,
    SUM(p.amount) AS total_spent
FROM ecommerce.orders o
JOIN ecommerce.payments p ON o.order_id = p.order_id
WHERE p.status = 'Success'
GROUP BY o.customer_id
HAVING total_spent > (
    SELECT AVG(amount) 
    FROM ecommerce.payments 
    WHERE status = 'Success'
);

SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM ecommerce.orders
GROUP BY customer_id
ORDER BY total_orders DESC;

SELECT 
    p.product_name,
    COUNT(o.order_id) AS order_count
FROM ecommerce.orders o
JOIN ecommerce.products p ON o.total_amount >= p.price
GROUP BY p.product_name
ORDER BY order_count DESC
LIMIT 10;

SELECT 
    o.customer_id,
    SUM(p.amount) AS total_spent
FROM ecommerce.orders o
JOIN ecommerce.payments p ON o.order_id = p.order_id
WHERE p.status = 'Success'
GROUP BY o.customer_id
ORDER BY total_spent DESC;


 // query 13:Cancelled vs Delivered Orders
 
 
SELECT 
    status,
    COUNT(*) AS count
FROM ecommerce.orders
WHERE status IN ('Cancelled', 'Delivered')
GROUP BY status;



