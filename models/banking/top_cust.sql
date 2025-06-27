 select 'transcation_id' as transcation_id,'customer_id' as customer_id,'transcation_date' as transcation_date,
  'transcation_type' as transcation_type,'Transaction_Amount' as Transaction_Amount,
  'transcation_mode'as transcation_mode
    from (
 select * , rank() over(order by tr."Transaction_Amount" desc) as rnk
from  dbt_fivetran.transcation_data tr )
where rnk<=5
 