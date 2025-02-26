SELECT 
    g.genre_id,
    g.name AS genre_name,
    COUNT(wh.history_id) AS watch_count
FROM 
    Genres g
JOIN 
    Movies m ON g.genre_id = m.genre_id
JOIN 
    WatchHistory wh ON m.movie_id = wh.movie_id
GROUP BY 
    g.genre_id, g.name
ORDER BY 
    watch_count DESC;