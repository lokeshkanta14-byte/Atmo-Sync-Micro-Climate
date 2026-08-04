
    
    

select
    Record_ID as unique_field,
    count(*) as n_records

from IOT_PROJECT.PUBLIC.cleaned_iot_data
where Record_ID is not null
group by Record_ID
having count(*) > 1


