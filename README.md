#  Apache Superset Dashboard Development

## Team Member
**Name:** Fathima Shifla P

## Role
Apache Superset Dashboard Developer

## Project
**IoT-Based Cold Chain Monitoring System**

---

#  Week 1 – Environment Setup

## Objective
Set up the Apache Superset environment and establish connectivity with the Snowflake database for dashboard development.

### Tasks Completed
- Installed Apache Superset using Docker Desktop.
- Configured the Apache Superset environment.
- Connected Apache Superset to the Snowflake database.
- Verified the database connection.
- Created a dataset from the `CLEANED_IOT_DATA` table.
- Planned the dashboard layout and visualizations.

### Tools Used
- Apache Superset
- Docker Desktop
- Snowflake
- Git
- GitHub

### Dataset Details
- **Database:** `IOT_PROJECT`
- **Schema:** `PUBLIC`
- **Table:** `CLEANED_IOT_DATA`

### Planned Dashboard Features
- Temperature Monitoring
- Humidity Monitoring
- Vibration Monitoring
- Spoilage Risk Monitoring
- Executive KPI Cards

### Week 1 Deliverables
- Apache Superset configured successfully.
- Snowflake connection established successfully.
- Dataset imported successfully.
- Environment prepared for dashboard development.

**Status:**  Week 1 completed successfully.

---

#  Week 2 – Dashboard Development

## Objective
Develop an interactive Cold Chain Monitoring Dashboard using Apache Superset for real-time IoT shipment monitoring.

### Dashboard KPIs
-  Average Temperature
-  Average Humidity
-  Containers Online
-  Average Spoilage Risk

### Dashboard Visualizations
- Temperature Trend
- Humidity Trend
- Container Status Distribution
- Top 10 Containers by Spoilage Risk

### Data Source
- **Database:** `IOT_PROJECT`
- **Schema:** `PUBLIC`
- **Table:** `CLEANED_IOT_DATA`
- **Records:** 30,000

### Key Insights
- Successfully monitored 30,000 IoT container records.
- Temperature remained stable across shipments.
- Humidity levels were consistent throughout the monitoring period.
- Most containers were classified as Medium Risk.
- High-risk containers were identified for early intervention.
- Dashboard provides real-time visibility into cold chain operations.

### Team Workflow

```
Python IoT Simulator
        ↓
Kafka
        ↓
Snowflake
        ↓
dbt
        ↓
Apache Superset Dashboard
```

### Week 2 Deliverables
- Connected Apache Superset to Snowflake.
- Developed the Cold Chain Monitoring Dashboard.
- Created KPI cards and interactive visualizations.
- Validated dashboard metrics and insights.
- Prepared the dashboard for Week 3 enhancements.

**Status:**  Week 2 completed successfully.

---

## Repository Status

- Week 1 – Environment Setup Completed
- Week 2 – Dashboard Development Completed
- Ready to continue with Week 3 Advanced Analytics Dashboard.
