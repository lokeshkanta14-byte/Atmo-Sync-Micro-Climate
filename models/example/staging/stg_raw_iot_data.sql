{{ config(materialized='table') }}

SELECT
    RECORD_ID,
    TIMESTAMP,
    CONTAINER_ID,
    SHIPMENT_ID,
    PRODUCT_NAME,
    ORIGIN_CITY,
    DESTINATION_CITY,
    TEMPERATURE_C,
    "Humidity_%" AS HUMIDITY_PERCENT,
    VIBRATION_LEVEL,
    MARKET_PRICE_PER_KG,
    "Spoilage_Risk_%" AS SPOILAGE_RISK,
    TIME_TO_SPOILAGE_HOURS,
    DISTANCE_TO_MARKET,

    CASE
        WHEN "Spoilage_Risk_%" >= 70 THEN 'High'
        WHEN "Spoilage_Risk_%" >= 40 THEN 'Medium'
        ELSE 'Low'
    END AS RISK_LEVEL,

    CASE
        WHEN TIME_TO_SPOILAGE_HOURS <= 24 THEN 'Immediate Sale'
        WHEN TIME_TO_SPOILAGE_HOURS <= 72 THEN 'Priority Transport'
        ELSE 'Normal Transport'
    END AS RECOMMENDED_ACTION

FROM IOT_PROJECT.PUBLIC.ANALYTICS_IOT_DATA