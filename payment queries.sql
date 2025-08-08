SELECT * FROM ecommerce.payments;
// query 10:Revenue by Payment Method
SELECT 
    payment_method,
    SUM(amount) AS total_revenue
FROM ecommerce.payments
WHERE status = 'Success'
GROUP BY payment_method
ORDER BY total_revenue DESC;

