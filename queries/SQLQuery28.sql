SELECT 
    FORMAT(added_date, 'yyyy-MM') AS month_added,
    COUNT(*) AS movies_added
FROM 
    Movies
GROUP BY 
    FORMAT(added_date, 'yyyy-MM')
ORDER BY 
    month_added;