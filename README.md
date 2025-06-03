# Analytics Engineering with Airbnb Data

## Tools

<div style="display: flex; justify-content: space-evenly;">
  <img src="assets/snowflake-logo.png" alt="Snowflake Data Warehouse" width="30%" />
  <img src="assets/dbt-logo.png" alt="dbt - Data Build Tool" width="30%" />
  <img src="assets/dagster_plus-primary-horizontal.png" alt="Dagster - Data Orchestration Platform" width="30%" />
</div>

## Project Overview

This project simulates an end-to-end analytics engineering workflow using Airbnb data that focuses on listings, reviews, and hosts. Tools include dbt, Snowflake, Dagster, and Preset.

**Project Implementation**
* **Data Ingestion:** Load raw Airbnb data from an Amazon S3 bucket into Snowflake
* **Transformation:** Model and transform data with dbt 
* **Visualization:** Create a simple dashboard using Preset 
* **Orchestration:** Manage the workflow with Dagster

## Data Model
<p align="left">
 <img src="assets/input_schema.png" alt="input_schema"/>
</p>

## dbt DAG
<p align="left">
 <img src="assets/dbt_lineage_graph.png" alt="dbt_lineage_graph"/>
</p>

## Dagster DAG
<p align="left">
 <img src="assets/dagster_dag.png" alt="dagster_dag"/>
</p>

## Dashboard
<p align="left">
 <img src="assets/exec_dashboard.png" alt="exec_dashboard"/>
</p>
