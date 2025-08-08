SELECT * FROM ecommerce.customers;
// Query 1: Get top 5 customers who signed up after 2022 and are from India, sorted by loyalty points.

SELECT 
    customer_id,
    first_name,
    country,
    signup_date,
    loyalty_points
FROM ecommerce.customers
WHERE country = 'India' AND signup_date > '2022-01-01'
ORDER BY loyalty_points DESC
LIMIT 5;


// Query 4: List all customers and their last order (if any).
SELECT 
    c.customer_id,
    c.first_name,
    c.email,
    MAX(o.order_date) AS last_order_date
FROM ecommerce.customers c
LEFT JOIN ecommerce.orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.email
ORDER BY last_order_date DESC
limit 5;
// Query 7:  showing customer orders and payment details.
SELECT 
    c.customer_id,
    c.first_name,
    o.order_id,
    o.order_date,
    o.total_amount,
    p.amount AS paid_amount,
    p.payment_method,
    p.status
FROM ecommerce.customers c
JOIN ecommerce.orders o ON c.customer_id = o.customer_id
JOIN ecommerce.payments p ON o.order_id = p.order_id;
// query 8 :Show Total Orders per Customer
SELECT 
    c.city,
    COUNT(o.order_id) AS order_count
FROM ecommerce.customers c
JOIN ecommerce.orders o ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY order_count DESC
LIMIT 10;

// query 12:Top Cities by Order Count


SELECT 
    status,
    COUNT(*) AS count
FROM orders
WHERE status IN ('Cancelled', 'Delivered')
GROUP BY status;