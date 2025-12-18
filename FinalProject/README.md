📌 Project Overview
GreenStream Energy: Serverless ETL Pipeline Design

GreenStream Energy is a smart-utility provider collecting electricity usage data from 50,000 households. This project focuses on the Design Thinking phase of a data science workflow, transforming "dark data" from smart meters into actionable insights.

The goal is to design an automated, serverless ETL (Extract, Transform, Load) pipeline that standardizes raw data, detects faulty equipment, and prepares datasets for future predictive analytics.

🏗️ Architecture Design
The system follows a Data Lake-Centric Architecture on AWS, utilizing a 6-layer logical approach:

Ingestion: Raw CSV data from smart meters is uploaded to an Amazon S3 Raw Bucket.

Orchestration: AWS Step Functions manage the workflow, including event triggers and error-handling logic.

Transformation: AWS Lambda (Serverless) processes the data using specific business logic.

Storage: * Structured: Cleaned data is stored in Amazon RDS for immediate SQL querying.

Analytics: Data is archived in Parquet format in an S3 Curated Bucket for long-term analysis.

🧠 Business Rules & Transformation Logic
The pipeline addresses real-world data quality issues through the following rules:

Unit Standardization: Automatically detects "Watts (W)" and converts them to "Kilowatts (kW)" (Value / 1000).

Missing Value Handling: Identifies NULL readings and flags records to ensure they don't skew peak-usage calculations.

Faulty Meter Detection: Flags any meter reporting zero consumption for more than 24 consecutive hours as "potentially faulty."

Data Validation: Ensures timestamp consistency and filters out duplicate readings.

🔄 Single Record Lifecycle
Upload: CSV data lands in the S3 Raw bucket.

Trigger: S3 event triggers the Lambda transformation function.

Transform: The record is cleaned, standardized, and validated against business rules.

Store: The processed record is inserted into RDS for real-time access.

Archive: The record is converted to Parquet for cost-efficient, high-performance historical analytics.

Success/Failure: Step Functions handle retries (up to 3 times) or route failed records to a Dead Letter Queue (DLQ).

🛠️ Tools Used
Design Tool: Edraw Max / Draw.io

Architecture Pattern: AWS Serverless (S3, Lambda, RDS, Step Functions)

Data Formats: CSV (Source), Parquet (Optimized Archive)
## 💬 Author
**Amany Elfiky**  
Data Analyst | Data Scientist

📧 amanyelfiky2020@gmail.com 
