with markup as (
    select * ,
    first_value(customer_id) -- retorna primeiro valor
    over(
        partition by company_name, contact_name -- caso esses dois sejam iguais
        order by company_name
        rows between unbounded preceding and unbounded following -- da primeira a ultima linha da partição
        ) as result
    from {{source('sources','customers')}}
), removed as (

    select distinct result from markup

), final as ( 
    
    select * from {{source('sources','customers')}} where customer_id in (select result from removed)
)
select * from final
