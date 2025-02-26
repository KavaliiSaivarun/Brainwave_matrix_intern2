SELECT TOP 10
    m.movie_id,
    m.title,
    COUNT(wh.movie_id) AS watch_count
FROM 
    Movies m
JOIN 
    WatchHistory wh ON m.movie_id = wh.movie_id
GROUP BY 
    m.movie_id, m.title
ORDER BY 
    watch_count DESC;