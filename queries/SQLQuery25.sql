SELECT 
    DATEPART(YEAR, created_at) AS year,
    DATEPART(WEEK, created_at) AS week_number,
    COUNT(*) AS review_count
FROM 
    Reviews
GROUP BY 
    DATEPART(YEAR, created_at),
    DATEPART(WEEK, created_at)
ORDER BY 
    year, week_number;