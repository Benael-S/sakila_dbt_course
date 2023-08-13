{{ config(materialized='table') }}

select 
customer_id,
first_name,
last_name,
{{concat_it('first_name','last_name')}} as the_full_name
from {{ ref('hello_world') }}
where 1=1
and customer_id < {{ var('cust_id') }}
