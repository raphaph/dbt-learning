select 
distinct event_name as tipo,
event_timestamp as data_hora,
event_schema as schema,
event_model as modelo,
event_user as usuario,
event_target as target
from {{target.schema}}_meta.dbt_audit_log
order by data_hora asc