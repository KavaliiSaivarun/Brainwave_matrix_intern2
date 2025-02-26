SELECT 
    DATENAME(WEEKDAY, watched_at) AS day_of_week,
    COUNT(*) AS watch_count
FROM 
    WatchHistory
GROUP BY 
    DATENAME(WEEKDAY, watched_at)
ORDER BY 
    watch_count DESC;