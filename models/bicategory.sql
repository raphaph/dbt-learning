select {{return_fields()}} from {{ref('joins')}}
where category_name = '{{env_var('DBT_ENV_CATEGORY')}}'