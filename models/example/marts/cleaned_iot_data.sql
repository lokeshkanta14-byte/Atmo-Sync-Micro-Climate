{{ config(materialized='table') }}

WITH ranked_data AS (

    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY RECORD_ID
            ORDER BY RECORD_ID
        ) AS rn
    FROM {{ ref('stg_raw_iot_data') }}

)

SELECT
    RECORD_ID,
    TIMESTAMP,
    CONTAINER_ID,
    SHIPMENT_ID,
    PRODUCT_NAME,
    ORIGIN_CITY,
    DESTINATION_CITY,

    COALESCE(TEMPERATURE_C, AVG(TEMPERATURE_C) OVER()) AS TEMPERATURE_C,
    COALESCE("Humidity_%", AVG("Humidity_%") OVER()) AS "Humidity_%",
    COALESCE(VIBRATION_LEVEL, AVG(VIBRATION_LEVEL) OVER()) AS VIBRATION_LEVEL,
    COALESCE(MARKET_PRICE_PER_KG, AVG(MARKET_PRICE_PER_KG) OVER()) AS MARKET_PRICE_PER_KG,

    "Spoilage_Risk_%",

    CASE
        WHEN "Spoilage_Risk_%" >= 70 THEN 'HIGH'
        WHEN "Spoilage_Risk_%" >= 40 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS RISK_CATEGORY

FROM ranked_data

WHERE rn = 1
  AND RECORD_ID IS NOT NULL 