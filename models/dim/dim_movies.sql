WITH src_movies AS (
    SELECT *
    FROM {{ ref('src_movies') }}
)

SELECT
    movie_id,
    INITCAP(TRIM(title)) AS title_title,
    SPLIT(genre, '|') AS genre_array
FROM src_movies