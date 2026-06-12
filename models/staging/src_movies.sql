WITH raw_movies AS(
    SELECT * FROM {{sources('netflix', 'raw_movies') }}
)
SELECT 
    movieId as movie_id,
    title,
    genre
FROM raw_movies
