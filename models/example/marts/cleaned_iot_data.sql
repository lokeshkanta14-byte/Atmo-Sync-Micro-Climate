{{ config(materialized='table') }}

select
    *,
    case
        when Spoilage_Risk >= 70 then 'HIGH'
        when Spoilage_Risk >= 40 then 'MEDIUM'
        else 'LOW'
    end as Risk_Category
from {{ ref('stg_raw_iot_data') }}
where Record_ID is not null