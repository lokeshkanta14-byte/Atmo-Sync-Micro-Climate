{{ config(materialized='view') }}

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
    Travel_Distance,
    Remaining_Distance,
    Transit_Time,
    Shelf_Life,
    Spoilage_Risk,
    Quality_Score,
    Product_Weight_KG,
    Market_Price_per_KG,
    Estimated_Revenue,
    Estimated_Loss,
    Arbitrage_Profit,
    Recommended_Action,
    Alert_Level
from {{ ref('raw_iot_dataset') }}