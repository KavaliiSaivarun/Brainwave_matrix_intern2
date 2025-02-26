SELECT 
    u.user_id,
    u.first_name + ' ' + u.last_name AS full_name
FROM 
    Users u
LEFT JOIN 
    WatchHistory wh ON u.user_id = wh.user_id
WHERE 
    wh.user_id IS NULL;