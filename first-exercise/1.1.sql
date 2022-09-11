SELECT name, earnings_rank
FROM Movie , Oscar
WHERE Movie.id = Oscar.Movie_id AND O.type = "Best-Picture"
ORDER BY m.earnings_rank ASC LIMIT 1;