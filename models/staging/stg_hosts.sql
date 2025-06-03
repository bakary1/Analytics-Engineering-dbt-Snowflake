{{
    config(
        materialized='ephemeral'
    )
}}


with source_hosts as (

    select * from {{ source('airbnb', 'raw_hosts') }}
),

renamed as (

    select
        id as host_id,
        name as host_name,
        is_superhost,
        created_at,
        updated_at
    from source_hosts
)

select * from renamed
