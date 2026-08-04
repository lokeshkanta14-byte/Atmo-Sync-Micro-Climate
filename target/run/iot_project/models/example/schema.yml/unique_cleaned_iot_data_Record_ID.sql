
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    Record_ID as unique_field,
    count(*) as n_records

from IOT_PROJECT.PUBLIC.cleaned_iot_data
where Record_ID is not null
group by Record_ID
having count(*) > 1



  
  
      
    ) dbt_internal_test