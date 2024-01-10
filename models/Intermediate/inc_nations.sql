{{
    config(
         materialized='incremental', punique_key='nation_id',query_tag='inc-run-01'
    )
}}

select * from {{ref('stg_nations')}}