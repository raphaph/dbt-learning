{% snapshot customers_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='customer_id',
      strategy='check',
      check_cols=['customer_id']
    )
}}
-- directly from source
select * from {{ source('sources','customers') }}

{% endsnapshot %}