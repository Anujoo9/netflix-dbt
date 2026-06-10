# My First dbt Project

This repository contains my first dbt project, where I worked on building a simple data pipeline using AWS, Snowflake, and dbt.

## Data Flow

text CSV Files     -> AWS    ->  Snowflake Stage     -> Snowflake Raw Tables   ->  dbt Transformations    -> Snowflake Tables / Views 

## Getting Started

Run the following commands to build and test the project:

bash # Run all models dbt run  # Execute tests dbt test  # Run a specific model dbt run --select <model_name> 

## Project Goal

The purpose of this project is to:

- Load source data from CSV files
- Store files in AWS
- Ingest data into Snowflake using stages
- Transform and model data using dbt
- Create analytics-ready tables and views in Snowflake

## Resources

- https://docs.getdbt.com/docs/introduction
- https://discourse.getdbt.com/
- https://community.getdbt.com/
- https://events.getdbt.com
- https://blog.getdbt.com/

