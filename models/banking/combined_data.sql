select c.*,
'transcation_id' as transcation_id,'customer_id' as customer_id,
'transcation_date' as transcation_date,
  'transcation_type' as transcation_type,'Transaction_Amount' as Transaction_Amount,
  'transcation_mode'as transcation_mode from dbt_fivetran.customer_data c
inner join dbt_fivetran.transcation_data tr
on tr."Customer_ID"=c.Customer_ID