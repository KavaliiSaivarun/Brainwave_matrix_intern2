SELECT 
    CASE 
        WHEN completed = 1 THEN 'Completed'
        ELSE 'Partial'
    END AS watch_status,
    COUNT(*) AS watch_count,
    CAST(COUNT(*) AS FLOAT) / (SELECT COUNT(*) FROM WatchHistory) * 100 AS percentage
FROM 
    WatchHistory
GROUP BY 
    completed;