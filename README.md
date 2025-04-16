**Airbnb Data Pipeline with dbt and Snowflake**

This repository hosts the project from Udemy, building a data pipeline for Airbnb data using dbt and Snowflake. It covers data ingestion, transformation, testing, documentation, snapshots, and optional orchestration with Dagster.


**Overview**

The project processes Airbnb data (listings, reviews, hosts) stored in Snowflake, transforming it through dbt models into cleansed and enriched datasets that is used in Preset to understand the impact of full moon on reviews. Key outputs include:

Listings with host details.
Reviews flagged for full moon dates.
Snapshots for tracking changes.
The pipeline demonstrates dbt best practices, including testing, macros, documentation, and orchestration.

**Prerequisites**

Snowflake account with admin access.
Python 3.11 (avoid newer versions due to dbt compatibility).
Access to S3 bucket (s3://dbtlearn/) for sample data.
Code editor (e.g., VS Code).
(Optional) Preset account for reporting.
(Optional) Dagster for orchestration.

**SETUP:**

step 1: Setup snowflake and dbt using following link https://github.com/Aishwarya-1991/Airbnb-ETL-pipeline/edit/main/setup.md

step 2: https://github.com/Aishwarya-1991/Airbnb-ETL-pipeline

cd Airbnb-ETL-pipeline.

step 3: Run following commands for full workflow:.
```
# Setup
cd dbtlearn
source venv/bin/activate
dbt debug
dbt deps

# Run pipeline
dbt seed
dbt run
dbt snapshot
dbt test

# Run macros
dbt run-operation learn_logging
dbt run-operation learn_variables --vars "{user_name: zoltanctoth}"

# Generate docs
dbt docs generate
dbt docs serve

# Optional: Dagster
cd ../dbt_dagster_project
DAGSTER_DBT_PARSE_PROJECT_ON_LOAD=1 dagster dev
```
