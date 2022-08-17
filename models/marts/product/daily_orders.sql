{{
  config(
    materialized = 'table',
    )
}}

with

orders as (

    select * from {{ ref('stg_my_app_web__order_completed') }}

),

final as (

    select
        tstamp::date as date_day,
        count(*) as count_orders

    from orders
    group by 1

)

select * from final
