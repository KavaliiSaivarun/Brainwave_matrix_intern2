SELECT TOP 10
    m.movie_id,
    m.title,
    COUNT(r.review_id) AS review_count
FROM 
    Movies m
JOIN 
    Reviews r ON m.movie_id = r.movie_id
GROUP BY 
    m.movie_id, m.title
ORDER BY 
    review_count DESC;