# SQL Analytics Layer

This folder contains analytical queries built against the CMS Medicare ACO dataset loaded into AWS RDS PostgreSQL. Each query answers a distinct business question about ACO participation, program structure, and payment model adoption.

## Queries

### 01 — Track Type Distribution
**File:** `query_01_track_type_distribution.sql`  
Breaks down ACO participation by track type (Basic, Enhanced) and basic track level. Shows how ACOs are distributed across the program's performance tracks.

### 02 — High vs Low Revenue Breakdown
**File:** `query_02_high_vs_low_revenue.sql`  
Compares high-revenue and low-revenue ACO counts within each track type. Useful for understanding the financial profile of participating organizations.

### 03 — Longest Participating ACOs
**File:** `query_03_longest_participating_acos.sql`  
Ranks ACOs by tenure in the Medicare Shared Savings Program. Identifies which organizations have the most experience navigating value-based care.

### 04 — Advanced Payment Model Adoption
**File:** `query_04_advanced_payment_adoption.sql`  
Tracks adoption of advanced payment models (ADV PAY, AIM, AIP) by track type. Highlights which program tracks are most engaged with alternative payment structures.

### 05 — SNF 3-Day Rule Waiver Adoption
**File:** `query_05_snf_waiver_by_track.sql`  
Measures adoption of the SNF 3-day rule waiver across track types and levels, including adoption percentage. This waiver allows ACOs to reduce unnecessary hospital stays before skilled nursing facility placement.

### 06 — Prospective vs Retrospective Assignment
**File:** `query_06_prospective_vs_retrospective.sql`  
Compares beneficiary assignment methods by track type. Assignment method affects how ACOs manage population health and financial risk.

### 07 — PC Flex Agreement Status
**File:** `query_07_pc_flex_adoption.sql`  
Breaks down Primary Care Flex agreement status across track types. PC Flex is a newer CMS initiative expanding primary care payment flexibility within the MSSP.

## Data Source
CMS Medicare Shared Savings Program — ACO Participants dataset  
Loaded via ETL pipeline: [healthcare-etl-pipeline](https://github.com/ts-data627/healthcare-etl-pipeline)  
Target: AWS RDS PostgreSQL

## How to Run
Connect to the RDS instance and execute any query directly:
```bash
psql -h healthcare-db.c49ssqoe4siv.us-east-1.rds.amazonaws.com -U <user> -d healthcare_records -p 5432 -f query_01_track_type_distribution.sql
```
Or open in TablePlus and run via the SQL editor (`Cmd+Enter`).