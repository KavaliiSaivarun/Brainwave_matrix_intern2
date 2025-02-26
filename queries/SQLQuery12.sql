SELECT 
    SUM(monthly_fee) AS total_monthly_revenue
FROM 
    Subscriptions
WHERE 
    is_active = 1;