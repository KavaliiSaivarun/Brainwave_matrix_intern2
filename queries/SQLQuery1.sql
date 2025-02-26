SELECT 
    FORMAT(created_at, 'yyyy-MM') AS registration_month,
    COUNT(*) AS users_registered
FROM 
    Users
GROUP BY 
    FORMAT(created_at, 'yyyy-MM')
ORDER BY 
    registration_month;