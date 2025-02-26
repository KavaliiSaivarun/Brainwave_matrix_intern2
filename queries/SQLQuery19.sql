SELECT 
    CASE 
        WHEN DATEPART(HOUR, watched_at) BETWEEN 0 AND 5 THEN 'Late Night (12AM-6AM)'
        WHEN DATEPART(HOUR, watched_at) BETWEEN 6 AND 11 THEN 'Morning (6AM-12PM)'
        WHEN DATEPART(HOUR, watched_at) BETWEEN 12 AND 17 THEN 'Afternoon (12PM-6PM)'
        ELSE 'Evening (6PM-12AM)'
    END AS time_of_day,
    COUNT(*) AS watch_count
FROM 
    WatchHistory
GROUP BY 
    CASE 
        WHEN DATEPART(HOUR, watched_at) BETWEEN 0 AND 5 THEN 'Late Night (12AM-6AM)'
        WHEN DATEPART(HOUR, watched_at) BETWEEN 6 AND 11 THEN 'Morning (6AM-12PM)'
        WHEN DATEPART(HOUR, watched_at) BETWEEN 12 AND 17 THEN 'Afternoon (12PM-6PM)'
        ELSE 'Evening (6PM-12AM)'
    END
ORDER BY 
    watch_count DESC;