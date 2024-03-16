{% docs orders_status %}

Orders can be one of the following statuses:

| status         | description                                                               |
|----------------|---------------------------------------------------------------------------|
| placed         | The order has been placed but has not yet left the warehouse              |
| shipped        | The order has been shipped to the customer and is currently in transit    |
| completed      | The order has been received by the customer                               |
| returned       | The order has been returned by the customer and received at the warehouse |
| return_pending | The order has been returned by the customer and not  at the warehouse     |

{% enddocs %}
