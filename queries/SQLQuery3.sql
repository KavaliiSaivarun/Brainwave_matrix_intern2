SELECT 
    u.user_id,
    u.first_name + ' ' + u.last_name AS full_name,
    COUNT(wl.movie_id) AS watchlist_count
FROM 
    Users u
LEFT JOIN 
    WatchList wl ON u.user_id = wl.user_id
GROUP BY 
    u.user_id, u.first_name, u.last_name
ORDER BY 
    watchlist_count DESC;