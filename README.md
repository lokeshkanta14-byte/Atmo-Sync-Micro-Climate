# Week 1 - Apache Superset Dashboard 

## Team Member
**Name:** Fathima Shifla P

## Role
Apache Superset Dashboard Development

## Week 1 Objectives

- Installed Apache Superset using Docker.
- Configured the Superset environment.
- Connected Superset with the Snowflake database.
- Verified database connection.
- Created a dataset from the `cleaned_iot_data` table.
- Planned dashboard visualizations for IoT monitoring.

## Tools Used

- Apache Superset
- Docker Desktop
- Snowflake
- Git
- GitHub

## Dataset

Database: IOT_PROJECT

Schema: PUBLIC

Table: cleaned_iot_data

## Dashboard Plan

- Temperature Monitoring
- Humidity Monitoring
- Vibration Monitoring
- Spoilage Risk
- Executive KPI Cards

## Week 1 Status

 - Apache Superset configured successfully.

 - Snowflake connected successfully.

 - Dataset created successfully.

 - Ready to begin dashboard development in Week 2.


# Week 2 - Apache Superset Dashboard 

## Project
*Cold Chain Monitoring Dashboard*

## Objective
Developed an interactive dashboard in Apache Superset to monitor IoT-based cold chain shipments using data from Snowflake.

## Technologies Used
- Apache Superset
- Snowflake
- SQL
- Git & GitHub

## Data Source
- Database: IOT_PROJECT
- Table: CLEANED_IOT_DATA
- Records: *30,000*

## Dashboard KPIs
-  Average Temperature
-  Average Humidity
-  Containers Online
-  Average Spoilage Risk

## Dashboard Visualizations
- Temperature Trend
- Humidity Trend
- Container Status Distribution
- Top 10 Containers by Spoilage Risk

## Key Insights
- Successfully monitored *30,000 IoT container records*.
- Temperature and humidity remained relatively stable.
- Most containers were categorized as *Medium Risk*.
- High-risk containers were identified for quick action.
- Dashboard provides real-time monitoring of cold chain performance.

## Team Workflow


Python IoT Simulator
        ↓
Kafka
        ↓
Snowflake
        ↓
dbt
        ↓
Apache Superset Dashboard


## Week 2 Deliverables
- Connected Apache Superset to Snowflake.
- Built the Cold Chain Monitoring Dashboard.
- Created KPI cards and interactive charts.
- Validated dashboard metrics.
- Prepared the dashboard for Week 3 enhancements.

## Status
Week 2 completed successfully

