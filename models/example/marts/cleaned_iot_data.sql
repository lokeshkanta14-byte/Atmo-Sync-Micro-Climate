{{ config(materialized='table') }}

SELECT
    *,

    CASE
        WHEN SPOILAGE_RISK >= 70 THEN 'HIGH'
        WHEN SPOILAGE_RISK >= 40 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS RISK_CATEGORY

FROM {{ ref('stg_raw_iot_data') }}

WHERE RECORD_ID IS NOT NULL