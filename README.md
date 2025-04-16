Airbnb Data Pipeline with dbt and Snowflake

This repository hosts the project from Udemy, building a data pipeline for Airbnb data using dbt and Snowflake. It covers data ingestion, transformation, testing, documentation, snapshots, and optional orchestration with Dagster.



Overview

The project processes Airbnb data (listings, reviews, hosts) stored in Snowflake, transforming it through dbt models into cleansed and enriched datasets. Key outputs include:

Listings with host details.
Reviews flagged for full moon dates.
Snapshots for tracking changes.
The pipeline demonstrates dbt best practices, including testing, macros, documentation, and orchestration.

Prerequisites

Snowflake account with admin access.
Python 3.11 (avoid newer versions due to dbt compatibility).
Access to S3 bucket (s3://dbtlearn/) for sample data.
Code editor (e.g., VS Code).
(Optional) Preset account for reporting.
(Optional) Dagster for orchestration.

SETUP: 
