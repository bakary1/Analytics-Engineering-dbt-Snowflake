select
    *
from {{ ref('dim_listings_cleaned') }} l
inner join {{ ref('fct_reviews') }} r
    on l.listing_id = r.listing_id
where l.created_at >= r.review_date