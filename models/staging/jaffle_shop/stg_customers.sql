select
    c.id as customer_id,
    c.first_name,
    c.last_name,
    e.employee_id is not null as is_employee

from {{ source('jaffle_shop', 'customers') }} as c
left join {{ ref('employees')}} as e
    on c.id = e.customer_id
