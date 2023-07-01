select 
sh.shipper_id,
sh.company_name,
sh.phone,
se.shipper_email
from{{source('sources','shippers')}} sh
left join {{ref('shippers_emails')}} se on (sh.shipper_id = se.shipper_id)