{{
    config(
        materialized = 'ephemeral'
    )
}}

WITH movies AS (
    SELECT * FROM {{ ref('dim_movies')}}
),
tags AS (
    SELECT * FROM {{ ref('dim_genome_tags')}}
),
scores AS(
    SELECT * from {{ ref('fct_genome_scores')}}
)

SELECT 
    m.movie_id,
    m.movie_title,
    m.genere,
    t.tag_name,
    s.relevance_score

    
FROM movies m
LEFT JOIN scores s ON m.movies_id = s.movie_id
LEFT JOIN tags t ON t.tag_id = s.tag_id