{% snapshot parts_snapshot %}

{{
    config(
        target_database='analytics',
      target_schema='snapshots',
        unique_key='p_partkey',
        strategy='check',
        check_cols=['p_retailprice','p_size']

    )

}}

select * from {{ source('src', 'parts') }}

{% endsnapshot %}