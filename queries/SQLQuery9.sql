

SELECT TOP 10
    m.movie_id,
    m.title,
    COUNT(wl.watchlist_id) AS watchlist_count
FROM 
    Movies m
JOIN 
    WatchList wl ON m.movie_id = wl.movie_id
GROUP BY 
    m.movie_id, m.title
ORDER BY 
    watchlist_count DESC;