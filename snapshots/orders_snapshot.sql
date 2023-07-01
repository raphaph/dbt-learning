{% snapshot orders_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='customer_id',
      strategy='timestamp',
      updated_at='order_date'
    )
}}
-- directly from source
select * from {{ source('sources','orders') }}

{% endsnapshot %}