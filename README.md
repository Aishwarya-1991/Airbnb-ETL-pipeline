**Airbnb Data Pipeline with dbt and Snowflake**

This project implements an ETL pipeline for Airbnb data using dbt and Snowflake, transforming raw datasets (listings, reviews, hosts) into analytical models for insights. The pipeline includes dbt models, snapshots, seeds, tests, macros, analyses, and documentation, with optional Dagster orchestration. It leverages Snowflake for data storage and processing, ensuring data quality and lineage.

**Acknowledgements:**

Zoltan C. Toth: Author of the Udemy course "Complete dbt Bootcamp: Zero to Hero," providing foundational dbt knowledge and Airbnb project inspiration.

dbt Labs: For the dbt framework, enabling efficient data transformations.

Snowflake: For the cloud data platform hosting the Airbnb data.

dbt Community: For packages like dbt_utils and ecosystem contributions.

**Purpose**

The project processes Airbnb data (listings, reviews, hosts) stored in Snowflake, using dbt models to transform it into cleansed and enriched datasets that are used in the BI tool Preset to analyze the impact of the full moon on reviews

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
# Test connection
dbt debug

# Install dependencies
dbt deps

# Load seed data
dbt seed

# Run models
dbt run

# Run models with full refresh (optional)
dbt run --full-refresh

# Run specific model (example)
dbt run --select dim_listings_cleansed

# Run snapshots
dbt snapshot

# Run specific snapshot (example)
dbt snapshot --select scd_raw_listings

# Test models
dbt test

# Test specific model (example)
dbt test --select dim_listings_cleansed

# Test specific source (example)
dbt test --select source:airbnb.listings

# Run macros
dbt run-operation learn_logging
dbt run-operation learn_variables
dbt run-operation learn_variables --vars "{user_name: zoltanctoth, in_test: True}"
dbt test --select no_nulls_in_dim_listings
dbt run-operation no_nulls_in_columns --args '{model: ref("dim_listings_cleansed")}'

# Run incremental model (example)
dbt run --select fct_reviews --vars '{start_date: "2024-02-15 00:00:00", end_date: "2024-03-15 23:59:59"}'

# Compile analysis
dbt compile --select full_moon_no_sleep

# Generate documentation
dbt docs generate

# Serve documentation
dbt docs serve
```
