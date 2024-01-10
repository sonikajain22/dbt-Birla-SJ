
with nat as (
      
    select
        N_NATIONKEY as nation_id ,
        N_NAME as name,
        N_REGIONKEY as region_id,
        N_COMMENT as comment

    from {{ source('src', 'nations') }}
)
select * from nat