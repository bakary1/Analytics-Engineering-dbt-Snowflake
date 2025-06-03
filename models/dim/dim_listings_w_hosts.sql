{{
    config(
        materialized='table'
    )
}}


with dim_listings_cleansed as (

    select * from {{ ref('dim_listings_cleaned') }}
),

dim_hosts_cleansed as (

    select * from {{ ref('dim_hosts_cleaned') }}
),

final as (

    select
        l.listing_id,
        l.listing_name,
        l.room_type,
        l.price,
        l.minimum_nights,
        l.host_id,
        h.host_name,
        h.is_superhost as host_is_superhost,
        l.created_at,
        greatest(l.updated_at, h.updated_at) as updated_at
    from dim_listings_cleansed l
    left join dim_hosts_cleansed h
        on l.host_id = h.host_id
)

select * from final
