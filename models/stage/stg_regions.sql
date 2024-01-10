
with reg as (
      
    select
        r_REGIONKEY as region_id ,
        r_NAME as name,
        r_COMMENT as comment

    from {{ source('src', 'regions') }}
)
select * from reg