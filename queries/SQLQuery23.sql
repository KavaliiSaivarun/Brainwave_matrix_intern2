SELECT TOP 10
    u.user_id,
    u.first_name + ' ' + u.last_name AS full_name,
    COUNT(r.review_id) AS review_count
FROM 
    Users u
JOIN 
    Reviews r ON u.user_id = r.user_id
GROUP BY 
    u.user_id, u.first_name, u.last_name
ORDER BY 
    review_count DESC;