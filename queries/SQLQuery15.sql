SELECT TOP 1
    plan_type,
    COUNT(*) AS subscription_count
FROM 
    Subscriptions
WHERE 
    is_active = 1
GROUP BY 
    plan_type
ORDER BY 
    subscription_count DESC;