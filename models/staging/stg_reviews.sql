{{
    config(
        materialized='ephemeral'
    )
}}


with source_reviews as (

    select * from {{ source('airbnb', 'raw_reviews') }}
),

renamed as (

    select
        listing_id,
        date as review_date,
        reviewer_name,
        comments as review_text,
        sentiment as review_sentiment
    from source_reviews
)

select * from renamed