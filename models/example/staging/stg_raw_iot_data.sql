{{ config(materialized='table') }}

select
    RECORD_ID,
    TIMESTAMP,
    CONTAINER_ID,
    SHIPMENT_ID,
    PRODUCT_NAME,
    ORIGIN_CITY,
    DESTINATION_CITY,
    TEMPERATURE_C,
    "Humidity_%" as HUMIDITY_PERCENT,
    VIBRATION_LEVEL,
    MARKET_PRICE_PER_KG,
    "Spoilage_Risk_%" as SPOILAGE_RISK,
    TIME_TO_SPOILAGE_HOURS,
    DISTANCE_TO_MARKET,

    case
        when "Spoilage_Risk_%" >= 70 then 'High'
        when "Spoilage_Risk_%" >= 40 then 'Medium'
        else 'Low'
    end as RISK_LEVEL,

    case
        when TIME_TO_SPOILAGE_HOURS <= 24 then 'Immediate Sale'
        when TIME_TO_SPOILAGE_HOURS <= 72 then 'Priority Transport'
        else 'Normal Transport'
    end as RECOMMENDED_ACTION

from IOT_PROJECT.PUBLIC.ANALYTICS_IOT_DATA