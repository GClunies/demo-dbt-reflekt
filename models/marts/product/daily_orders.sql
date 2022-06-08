{{
  config(
    materialized = 'table',
    )
}}

with

pages as (

    select * from {{ ref('reflekt_my_app_web__order_completed') }}

),

final as (

    select
        tstamp::date as date_day,
        count(*) as count_orders

    from pages
    group by 1

)

select * from final
