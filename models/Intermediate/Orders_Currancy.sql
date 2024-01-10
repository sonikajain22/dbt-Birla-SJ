{{
    config(
            materialized='table',
            transient=false

    )
}}
select order_id as order_id,
    order_date as date,
    total_price AS price_usd,
    {{dol_eur('total_price',2)}} as price_euro
    from {{ref("stg_orders")}}