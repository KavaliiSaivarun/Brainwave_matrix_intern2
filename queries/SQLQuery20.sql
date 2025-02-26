SELECT 
    g.name AS genre_name,
    COUNT(CASE WHEN wh.completed = 1 THEN 1 END) AS completed_count,
    COUNT(wh.history_id) AS total_watch_count,
    CAST(COUNT(CASE WHEN wh.completed = 1 THEN 1 END) AS FLOAT) / 
        NULLIF(COUNT(wh.history_id), 0) * 100 AS completion_rate
FROM 
    Genres g
JOIN 
    Movies m ON g.genre_id = m.genre_id
JOIN 
    WatchHistory wh ON m.movie_id = wh.movie_id
GROUP BY 
    g.name
ORDER BY 
    completion_rate DESC;
