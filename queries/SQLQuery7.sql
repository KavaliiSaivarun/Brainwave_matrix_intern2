SELECT 
    m.movie_id,
    m.title,
    AVG(CAST(r.rating AS FLOAT)) AS average_rating,
    COUNT(r.review_id) AS review_count
FROM 
    Movies m
JOIN 
    Reviews r ON m.movie_id = r.movie_id
GROUP BY 
    m.movie_id, m.title
HAVING 
    COUNT(r.review_id) > 0
ORDER BY 
    average_rating DESC;