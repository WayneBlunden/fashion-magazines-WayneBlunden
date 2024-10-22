-- Add your sql here
SELECT 
    c.customer_name AS 'Customer',
    PRINTF('$%.2f', sum(s.price_per_month * s.subscription_length)) AS 'Amount Due'
    
FROM 
    orders o
    LEFT JOIN customers c ON o.customer_id = c.customer_id
    LEFT JOIN subscriptions s ON o.subscription_id = s.subscription_id
WHERE
    order_status = 'unpaid' AND s.description = 'Fashion Magazine'
GROUP BY
    c.customer_name
    
    ;
