{{
    config(
        materialized='ephemeral'
    )
}}


with source_listings as (

    select * from {{ source('airbnb', 'raw_listings') }}
),

renamed as (

    select
        id as listing_id,
        name as listing_name,
        listing_url,
        room_type,
        minimum_nights,
        host_id,
        price as price_str,
        created_at,
        updated_at
    from source_listings

)

select * from renamed
