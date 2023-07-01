{% macro return_fields() %}
{{ return('
category_name,
suppliers,
product_name,
product_id
')
}}
{% endmacro %}

{% macro return_fields_v2() %}
{{ return('
category_name,
suppliers,
product_name,
product_id,
quantity
')
}}
{% endmacro %}