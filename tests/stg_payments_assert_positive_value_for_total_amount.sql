-- the test will run:
-- dbt test -s stg_payments
-- dbt test -s stg_payments_assert_positive_value_for_total_amount
-- bacause of the ref
select
  order_id,
	sum(amount) as total_amount
from {{ ref('stg_payments') }}
group by 1
having not(total_amount >= 0)
