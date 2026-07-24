# Atmo-Sync-Micro-Climate

IoT Based Micro Climate Monitoring Project

## Team

- Python: Kanta lokesh
- Snowflake: Mohammed Ibad
- dbt: Alogy
- Superset: Shifla fathima

## Week 1 Progress

- Completed project setup.
- Configured team collaboration workflow.
- Created and managed Git branches.
- Configured data sharing process.
- Reviewed raw IoT data.
- Verified GitHub repository structure and commits.

## Week 2 Progress (dbt & Data Transformation)

- Set up the dbt project.
- Connected dbt with Snowflake.
- Created a staging model to clean the raw IoT data.
- Created a cleaned data model for analysis.
- Added data quality tests.
- Successfully ran `dbt compile`.
- Generated dbt documentation.
- Committed and pushed my dbt work to GitHub.
- Reported the Snowflake permission issue for table creation.


## Week 3 Progress (Spoilage Arbitrage Model)

### Responsibilities
- Created the Spoilage Arbitrage dbt model.
- Built business logic for shipment analysis.
- Calculated Arbitrage Profit using Estimated Revenue and Estimated Loss.
- Categorized shipments into High, Medium, and Low Risk.
- Added Profit Status for profitable and non-profitable shipments.
- Created Transport Priority recommendations based on Time to Spoilage.
- Added Arbitrage Opportunity categories.
- Verified the dbt model using `dbt debug` and `dbt compile`.
- Collaborated with the team to execute the model in Snowflake due to permission limitations.

### Deliverables
- ✅ Spoilage Arbitrage dbt model (`spoilage_arbitrage_model.sql`)
- ✅ Business calculations for reporting
- ✅ Risk categorization
- ✅ Transport priority logic
- ✅ Arbitrage opportunity logic