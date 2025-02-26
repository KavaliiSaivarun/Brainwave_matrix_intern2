SELECT 
    g.name AS genre_name,
    AVG(CAST(r.rating AS FLOAT)) AS average_rating,
    COUNT(r.review_id) AS review_count
FROM 
    Genres g
JOIN 
    Movies m ON g.genre_id = m.genre_id
JOIN 
    Reviews r ON m.movie_id = r.movie_id
GROUP BY 
    g.name
HAVING 
    COUNT(r.review_id) > 0
ORDER BY 
    average_rating DESC;