SELECT 
    CASE 
        WHEN duration_mins < 90 THEN 'Short (< 90 mins)'
        WHEN duration_mins BETWEEN 90 AND 120 THEN 'Medium (90-120 mins)'
        WHEN duration_mins BETWEEN 121 AND 150 THEN 'Long (121-150 mins)'
        ELSE 'Very Long (> 150 mins)'
    END AS duration_category,
    COUNT(*) AS movie_count,
    CAST(COUNT(*) AS FLOAT) / (SELECT COUNT(*) FROM Movies) * 100 AS percentage
FROM 
    Movies
GROUP BY 
    CASE 
        WHEN duration_mins < 90 THEN 'Short (< 90 mins)'
        WHEN duration_mins BETWEEN 90 AND 120 THEN 'Medium (90-120 mins)'
        WHEN duration_mins BETWEEN 121 AND 150 THEN 'Long (121-150 mins)'
        ELSE 'Very Long (> 150 mins)'
    END
ORDER BY 
    MIN(duration_mins);