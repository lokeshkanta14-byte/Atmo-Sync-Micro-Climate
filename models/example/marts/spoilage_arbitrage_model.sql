{{ config(
    materialized='table',
    tags=['week4','analytics','optimization']
) }}

SELECT
    RECORD_ID,
    TIMESTAMP,
    CONTAINER_ID,
    SHIPMENT_ID,
    PRODUCT_NAME,
    ORIGIN_CITY,
    DESTINATION_CITY,

    TEMPERATURE_C,
    HUMIDITY_PERCENT,
    VIBRATION_LEVEL,

    SPOILAGE_RISK,

    MARKET_PRICE_PER_KG,

    COALESCE(DISTANCE_TO_MARKET,100) AS DISTANCE_TO_MARKET,
    COALESCE(TIME_TO_SPOILAGE_HOURS,48) AS TIME_TO_SPOILAGE_HOURS,

    MARKET_PRICE_PER_KG * 100 AS ESTIMATED_REVENUE,

    (SPOILAGE_RISK / 100) * (MARKET_PRICE_PER_KG * 100)
        AS ESTIMATED_LOSS,

    (MARKET_PRICE_PER_KG * 100)
    -
    ((SPOILAGE_RISK / 100) * (MARKET_PRICE_PER_KG * 100))
        AS ARBITRAGE_PROFIT,

    CASE
        WHEN SPOILAGE_RISK >= 70 THEN 'High'
        WHEN SPOILAGE_RISK >= 40 THEN 'Medium'
        ELSE 'Low'
    END AS RISK_CATEGORY,

    CASE
        WHEN
        (
            (MARKET_PRICE_PER_KG * 100)
            -
            ((SPOILAGE_RISK / 100) * (MARKET_PRICE_PER_KG * 100))
        ) > 0
        THEN 'Profitable'
        ELSE 'Not Profitable'
    END AS PROFIT_STATUS,

    CASE
        WHEN COALESCE(TIME_TO_SPOILAGE_HOURS,48) <= 24
            THEN 'Immediate Sale'

        WHEN COALESCE(TIME_TO_SPOILAGE_HOURS,48) <= 72
            THEN 'Priority Transport'

        ELSE 'Normal Transport'
    END AS TRANSPORT_PRIORITY,

    CASE
        WHEN COALESCE(TIME_TO_SPOILAGE_HOURS,48) <= 24
             AND COALESCE(DISTANCE_TO_MARKET,100) > 200
            THEN 'High Arbitrage Opportunity'

        WHEN COALESCE(TIME_TO_SPOILAGE_HOURS,48) <= 72
             AND COALESCE(DISTANCE_TO_MARKET,100) <= 200
            THEN 'Medium Arbitrage Opportunity'

        ELSE 'Low Arbitrage Opportunity'
    END AS ARBITRAGE_OPPORTUNITY
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

    COALESCE(Distance_to_Market, 100) AS Distance_to_Market,
    COALESCE(Time_to_Spoilage_Hours, 48) AS Time_to_Spoilage_Hours,

    Estimated_Revenue,
    Estimated_Loss,

    (Estimated_Revenue - Estimated_Loss) AS Arbitrage_Profit,

    CASE
        WHEN Spoilage_Risk >= 70 THEN 'High'
        WHEN Spoilage_Risk >= 40 THEN 'Medium'
        ELSE 'Low'
    END AS Risk_Category,

    CASE
        WHEN (Estimated_Revenue - Estimated_Loss) > 0
            THEN 'Profitable'
        ELSE 'Not Profitable'
    END AS Profit_Status,

    CASE
        WHEN COALESCE(Time_to_Spoilage_Hours,48) <= 24
            THEN 'Immediate Sale'
        WHEN COALESCE(Time_to_Spoilage_Hours,48) <= 72
            THEN 'Priority Transport'
        ELSE 'Normal Transport'
    END AS Transport_Priority,

    CASE
        WHEN COALESCE(Time_to_Spoilage_Hours,48) <= 24
             AND COALESCE(Distance_to_Market,100) > 200
            THEN 'High Arbitrage Opportunity'

        WHEN COALESCE(Time_to_Spoilage_Hours,48) <= 72
             AND COALESCE(Distance_to_Market,100) <= 200
            THEN 'Medium Arbitrage Opportunity'

        ELSE 'Low Arbitrage Opportunity'
    END AS Arbitrage_Opportunity

FROM {{ ref('cleaned_iot_data') }}