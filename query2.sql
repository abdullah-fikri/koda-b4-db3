SELECT * 
FROM movies
JOIN movies_directors ON movies_directors.movie_id = movies.id
JOIN directors ON directors.id = movies_directors.director_id
JOIN movies_genres ON movies_genres.movie_id = movies.id
LIMIT 50;

SELECT * 
FROM actors
JOIN roles ON actors.id = roles.actor_id 
JOIN movies ON roles.movie_id = movies.id 