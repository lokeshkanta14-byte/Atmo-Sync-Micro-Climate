{{ config(materialized='table') }}

select
    Record_ID,
    Timestamp,
    Container_ID,
    Shipment_ID,
    Product_Name,
    Origin_City,
    Destination_City,

    Temperature,
    Humidity_percentage,
    Vibration_Level,
    Spoilage_Risk,
    Quality_Score,

    Distance_to_Market,
    Time_to_Spoilage_Hours,
    Estimated_Revenue,
    Estimated_Loss,
    Arbitrage_Profit,

    case
        when Spoilage_Risk >= 70 then 'High'
        when Spoilage_Risk >= 40 then 'Medium'
        else 'Low'
    end as Risk_Category,

    case
        when Arbitrage_Profit > 0 then 'Profitable'
        else 'Not Profitable'
    end as Profit_Status,

    case
        when Time_to_Spoilage_Hours <= 24 then 'Immediate Sale'
        when Time_to_Spoilage_Hours <= 72 then 'Priority Transport'
        else 'Normal Transport'
    end as Recommended_Action

from IOT_PROJECT.PUBLIC.ANALYTICS_IOT_DATA