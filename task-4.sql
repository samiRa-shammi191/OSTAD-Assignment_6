-- Active: 1699204040929@@127.0.0.1@3306@php_ass_6
SELECT
    c.name AS customer_name,
    SUM(oi.quantity * oi.unit_price) AS total_purchase_amount
FROM Customers c
    JOIN Orders o ON c.customer_id = o.customer_id
    JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY
    c.customer_id,
    c.name
ORDER BY
    total_purchase_amount DESC
LIMIT 5;