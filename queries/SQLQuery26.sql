SELECT 
    g.name AS genre_name,
    COUNT(m.movie_id) AS movie_count
FROM 
    Genres g
LEFT JOIN 
    Movies m ON g.genre_id = m.genre_id
GROUP BY 
    g.name
ORDER BY 
    movie_count DESC;