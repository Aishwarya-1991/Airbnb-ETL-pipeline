{{
      config(
        materialized = 'incremental',
        on_schema_change='fail'
        )
    }}
with src_reviews as
(
    select 
     {{ dbt_utils.generate_surrogate_key(['listing_id', 'review_date', 'reviewer_name', 'review_text']) }}
    AS review_id,
    * from {{ref("src_review")}}
)
select * from src_reviews
where review_text is not null
{% if is_incremental() %}
  and review_date >= (select max(review_date) from {{ this }})
{% endif %}