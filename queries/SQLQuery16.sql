SELECT 
    m.movie_id,
    m.title,
    AVG(CAST(wh.watch_duration AS FLOAT)) AS avg_watch_duration_mins,
    m.duration_mins AS total_duration_mins,
    (AVG(CAST(wh.watch_duration AS FLOAT)) / m.duration_mins) * 100 AS percent_watched
FROM 
    Movies m
JOIN 
    WatchHistory wh ON m.movie_id = wh.movie_id
GROUP BY 
    m.movie_id, m.title, m.duration_mins
ORDER BY 
    avg_watch_duration_mins DESC;