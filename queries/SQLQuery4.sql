SELECT 
    plan_type,
    COUNT(*) AS number_of_users
FROM 
    Subscriptions
WHERE 
    is_active = 1
GROUP BY 
    plan_type
ORDER BY 
    number_of_users DESC;