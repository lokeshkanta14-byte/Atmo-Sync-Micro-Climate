
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select Shipment_ID
from IOT_PROJECT.PUBLIC.stg_raw_iot_data
where Shipment_ID is null



  
  
      
    ) dbt_internal_test