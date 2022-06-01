{{
  config(
    materialized = 'view',
    )
}}

with

pages as (

    select * from {{ ref('reflekt_patty_bar_web__pages') }}

),

final as (

    select
        tstamp::date as date_day,
        count(distinct coalesce(user_id, anonymous_id)) as count_visitors

    from pages
    group by 1

)

select * from final
