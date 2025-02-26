SELECT TOP 10
    release_year,
    COUNT(*) AS movie_count
FROM 
    Movies
GROUP BY 
    release_year
ORDER BY 
    movie_count DESC, release_year DESC;