{{ config(
  materialized='table'
) }}


-- models/your_table_name.sql

WITH base AS (
    SELECT
        CAST(post_id AS TEXT) AS post_id,
        CAST(message AS TEXT) AS message,
        CAST(created_time AS TIMESTAMP) AS created_time,
        CAST(permalink_url AS TEXT) AS permalink_url,
        CAST(total_likes AS INTEGER) AS total_likes,
        CAST(total_loves AS INTEGER) AS total_loves,
        CAST(total_hahas AS INTEGER) AS total_hahas,
        CAST(total_wows AS INTEGER) AS total_wows,
        CAST(total_sads AS INTEGER) AS total_sads,
        CAST(total_angrys AS INTEGER) AS total_angrys,
        CAST(total_reactions AS INTEGER) AS total_reactions,
        CAST(total_comments AS INTEGER) AS total_comments,
        CAST(total_shares AS INTEGER) AS total_shares,
        CAST(clicks AS INTEGER) AS clicks,
        CAST(impressions_unique AS INTEGER) AS impressions_unique,
        CAST(engaged_users AS INTEGER) AS engaged_users,
        CAST(video_views AS INTEGER) AS video_views,
        CAST(video_avg_time_watched AS INTEGER) AS video_avg_time_watched,
        CAST(extract_date AS DATE) AS extract_date,
        CAST(page_id AS BIGINT) AS page_id
    FROM staging.posts_data_1
)

SELECT * FROM base
