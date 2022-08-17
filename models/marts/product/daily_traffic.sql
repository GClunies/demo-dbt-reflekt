{{
  config(
    materialized = 'table',
    )
}}

with

pages as (

    select * from {{ ref('stg_my_app_web__pages') }}

),

final as (

    select
        tstamp::date as date_day,
        count(distinct coalesce(user_id, anonymous_id)) as count_visitors

    from pages
    group by 1

)

select * from final
