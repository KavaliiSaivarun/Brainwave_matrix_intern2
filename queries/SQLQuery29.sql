SELECT 
    ar.code AS rating_code,
    ar.description AS rating_description,
    COUNT(m.movie_id) AS movie_count,
    CAST(COUNT(m.movie_id) AS FLOAT) / (SELECT COUNT(*) FROM Movies) * 100 AS percentage
FROM 
    AgeRatings ar
LEFT JOIN 
    Movies m ON ar.rating_id = m.rating_id
GROUP BY 
    ar.code, ar.description
ORDER BY 
    movie_count DESC;