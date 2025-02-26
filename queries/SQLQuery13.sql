WITH SubscriptionEndDates AS (
    SELECT 
        user_id,
        end_date
    FROM 
        Subscriptions
)

SELECT 
    u.user_id,
    u.first_name + ' ' + u.last_name AS full_name
FROM 
    Users u
JOIN 
    Subscriptions s1 ON u.user_id = s1.user_id
JOIN 
    SubscriptionEndDates s2 ON s1.user_id = s2.user_id AND s1.start_date = s2.end_date
GROUP BY 
    u.user_id, u.first_name, u.last_name;