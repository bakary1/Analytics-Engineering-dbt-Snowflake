with mart_fullmoon_reviews as (

    select * from {{ ref('mart_fullmoon_reviews') }}
),

final as (

    select
        count(*) as num_reviews,
        is_full_moon,
        review_sentiment
    from mart_fullmoon_reviews
    group by all
    order by is_full_moon, review_sentiment
)

select * from final