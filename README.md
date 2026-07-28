# Atmo-Sync Micro-Climate Monitoring System

## Branch
**Ibad_Snowflake_creation**

## Team Members

| Member | Role |
|---------|------|
| Lokesh Kanta | Python + IoT Data Generation |
| Mohammed Ibad | Snowflake Data Warehouse |
| Middealogy | dbt Data Transformation |
| Shifla | Apache Superset Dashboard |

---

# Project Overview

This project builds a cloud-based IoT data pipeline for monitoring micro-climate conditions using Snowflake, dbt, and Apache Superset.

The pipeline stores raw sensor data, transforms it into analytics-ready datasets, and provides dashboards for monitoring environmental conditions.

---

# My Role (Snowflake Engineer)

As the Snowflake Engineer, my responsibilities include:

- Creating and configuring the Snowflake environment
- Loading raw IoT sensor data
- Managing database, schema, and warehouse
- Granting user permissions
- Supporting dbt integration
- Validating transformed datasets
- Preparing data for Apache Superset

---

# Week 1 Completed

## Snowflake Setup

- Configured Snowflake account
- Created compute warehouse
- Created database and schema
- Loaded raw IoT dataset
- Verified successful data loading
- Shared Snowflake environment with the team

---

# Week 2 Completed

## Data Engineering

- Created staging model (`stg_raw_iot_data`)
- Created cleaned dataset (`cleaned_iot_data`)
- Removed duplicate records
- Handled missing values using SQL
- Generated Spoilage Risk Category

## Data Validation

- Verified total row count
- Checked duplicate records
- Validated NULL values
- Confirmed data quality
- Prepared analytics-ready dataset

## Team Support

- Granted Snowflake permissions
- Supported dbt integration
- Prepared dataset for Apache Superset dashboard

---

# Week 3 Completed

## Advanced Analytics

- Created analytics-ready datasets
- Prepared Snowflake analytics layer
- Created `CLEANED_RAW_IOT_DATA`
- Removed duplicate records from raw dataset
- Handled missing values using SQL and dbt
- Validated 30,000 clean records
- Generated Risk Category for monitoring
- Prepared dataset for Spoilage Analytics

## Dashboard Support

- Shared cleaned dataset with Apache Superset
- Granted access to Shifla for dashboard development
- Granted access to Lokesh for project collaboration
- Verified dashboard connectivity
- Supported final dashboard integration

## Documentation

- Updated Week 3 documentation
- Prepared analytics documentation
- Updated project README
- Documented Snowflake implementation
- Maintained GitHub repository

---

# Technologies Used

- Snowflake
- SQL
- dbt
- Git
- GitHub
- Apache Superset

---

# Repository Structure

```
models/
├── staging/
│   └── stg_raw_iot_data.sql
│
├── marts/
│   ├── cleaned_iot_data.sql
│   ├── spoilage_arbitrage_model.sql
│   └── 05_week2_user_access.sql
│
seeds/
├── raw_iot_dataset.csv

README.md
```

---

# Current Status

- Week 1 ✅ Completed
- Week 2 ✅ Completed
- Week 3 ✅ Completed
- Week 4 🔄 In Progress

---

# Branch

```
Ibad_Snowflake_creation
```

---

# Author

**V. Mohammed Ibad**

Snowflake Engineer

Data Analytics Intern

Infotact Solutions

GitHub: https://github.com/lokeshkanta14-byte/Atmo-Sync-Micro-Climate
