# GreenStream Energy: Serverless ETL Pipeline Architecture

[cite_start]This repository contains the design and logic for a **Serverless ETL Pipeline** developed for **GreenStream Energy**[cite: 4]. [cite_start]The project focuses on processing high-volume data from 50,000 smart meters while ensuring data quality and readiness for predictive analytics[cite: 6, 36].

---

## 🏗️ System Architecture

[cite_start]The pipeline uses an event-driven, serverless approach to handle data ingestion, transformation, and storage[cite: 10, 11, 43].

![GreenStream Energy ETL Architecture](ETL.png)

### Key Pipeline Components:
* [cite_start]**Data Sources**: Processes data from 50,000 Smart Meters in CSV format[cite: 6, 7].
* [cite_start]**Ingestion Layer**: Utilizes event-driven triggers and batch processing[cite: 10, 11].
* [cite_start]**Orchestration**: Managed via a workflow engine for state management and error recovery[cite: 13, 14, 15].
* [cite_start]**Transformation Layer**: Includes unit standardization, outlier detection, and data enrichment (timestamp formatting and peak period flags)[cite: 17, 18, 19].
* **Storage & Analytics**:
    * [cite_start]**Structured Storage**: Uses JSON format for real-time querying and data validation[cite: 24, 25, 26].
    * [cite_start]**Analytics Archive**: Stores data in Columnar (Parquet) format for historical analysis and predictive models[cite: 27, 28, 29, 30].

---

## 🛠️ Transformation Logic & Business Rules

[cite_start]During the transformation phase, specific rules are applied to ensure data accuracy[cite: 46, 47]:

| Rule | Description | Logic Applied |
| :--- | :--- | :--- |
| **1. Unit Standardization** | [cite_start]Inconsistent units (W vs kW)[cite: 50]. | [cite_start]If "W", divide by 1000 to convert to "kW"; otherwise, flag as invalid[cite: 52, 54]. |
| **2. Missing Values** | [cite_start]Network outages causing NULL readings[cite: 58]. | [cite_start]Flag record and exclude from peak consumption calculations[cite: 60]. |
| **3. Timestamp Validation** | [cite_start]Ensuring valid, unique time-series data[cite: 65]. | [cite_start]Mark as invalid if missing or if duplicate timestamps exist for a meter[cite: 67, 68]. |
| **4. Data Range** | [cite_start]Detecting unrealistic limits[cite: 73]. | [cite_start]Mark as invalid if < 0; flag as anomaly if it exceeds max threshold[cite: 75, 76]. |
| **5. Faulty Meter** | [cite_start]Identifying hardware malfunctions[cite: 81]. | [cite_start]Flag meters reporting near-zero consumption for prolonged continuous periods[cite: 84]. |
| **6. Schema Validation** | [cite_start]Ensuring structural consistency[cite: 87]. | [cite_start]Must include `meter_id`, `timestamp`, `energy_value`, and `energy_unit`[cite: 89, 90, 91, 92, 93]. |

---

## 🔄 Record Lifecycle

[cite_start]Each record follows a 6-stage lifecycle from ingestion to archival[cite: 98]:

1. [cite_start]**Raw Storage**: Data is uploaded as CSV and stored in its original form for backup[cite: 100, 101].
2. [cite_start]**Triggering**: Arrival of new files automatically initiates the transformation workflow[cite: 103].
3. [cite_start]**Cleansing**: System applies all business rules (standardization, validation, etc.)[cite: 105].
4. [cite_start]**Structured Storage**: Validated records are stored in a relational database (RDS) for querying[cite: 111, 112].
5. [cite_start]**Archival**: Clean records are converted to Parquet format for large-scale analytics and machine learning[cite: 113, 114, 115].
6. [cite_start]**Error Handling**: Failed records are routed to failure storage for manual review if retry mechanisms fail[cite: 121, 123, 124].

---

## 📊 Analytics Outputs
[cite_start]The pipeline provides several key outputs for the business[cite: 33]:
* [cite_start]**Peak Consumption Reports**[cite: 34].
* [cite_start]**Faulty Meter Detection**[cite: 35].
* [cite_start]**Predictive Analytics Ready Data**[cite: 36].

[cite_start]**Student Name:** Amany Abdelmonem [cite: 1]  
[cite_start]**Student ID:** 412200012 [cite: 2]
