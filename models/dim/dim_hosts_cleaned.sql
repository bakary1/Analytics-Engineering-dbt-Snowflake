{{
    config(
        materialized='view'
    )
}}


with stg_hosts as (

    select * from {{ ref('stg_hosts') }}

),

cleaned as (

    select  
        host_id,
        coalesce(host_name, 'Anonymous') as host_name,
        case
            when is_superhost = 't' then 'Yes'
            when is_superhost = 'f' then 'No'
            else 'Unknown'
        end as is_superhost,
        created_at,
        updated_at
    from stg_hosts
)

select * from cleaned