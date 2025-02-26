SELECT 
    plan_type,
    COUNT(*) AS active_subscriptions
FROM 
    Subscriptions
WHERE 
    is_active = 1
GROUP BY 
    plan_type
ORDER BY 
    active_subscriptions DESC;