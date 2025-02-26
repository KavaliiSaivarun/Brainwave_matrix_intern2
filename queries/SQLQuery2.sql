SELECT 
    u.user_id,
    u.first_name + ' ' + u.last_name AS full_name,
    COUNT(wh.movie_id) AS movies_watched
FROM 
    Users u
JOIN 
    WatchHistory wh ON u.user_id = wh.user_id
WHERE 
    wh.watched_at >= DATEADD(MONTH, -1, GETDATE())
GROUP BY 
    u.user_id, u.first_name, u.last_name
ORDER BY 
    movies_watched DESC;