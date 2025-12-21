## Detailed Project Breakdown 🔬

This repository includes a series of focused data analysis projects that showcase diverse skills in data manipulation, cleaning, and reporting across different tools.
and project implements a complete ETL (Extract–Transform–Load) pipeline for processing smart-meter electricity consumption data.

### 💼 Project 1: Data Science Jobs Analysis

* **Dataset Focus:** **Global Data Science Job Postings** focusing on salary, company revenue, and industry.
  
* **Tools Used:** Microsoft Excel 📘
  
* **Key Activities & Achievements:**

     - **Advanced Data Pre-processing:** Performed extensive cleaning including **removing Nulls** and **splitting highly unstructured columns** (`revenue` and `salary`) into multiple standardized, numerical, and categorical features.
    
     - **Feature Engineering:** Decomposed the messy `revenue` column into **`Revenue_numeric`** and **`Revenue Status`**.
    
     - **Visualization:** Created an interactive dashboard to compare **AVG Salary by Industry, Job Status, and Company Ownership**.

    
  ![Project 1](STDS/Task01_Excel/README.md)

---
### 🛍️ Project 2: AdventureWorks Data Analysis

* **Dataset Focus:** Analysis of the **AdventureWorks sales and finance dataset**, focusing on performance, profitability, and product trends.
 
* **Tools Used:** SQL 💾 & Microsoft Excel 📘

* **Key Activities & Achievements:**

    - **Comprehensive SQL Pre-processing:** Performed deep data cleaning in **SQL Server**, including handling **Nulls**, **Duplicates**, and verifying **data consistency** across multiple relational tables (Products, Resellers, Targets).
     
    - **Advanced Excel Modeling:** Built an interactive **Excel Dashboard** utilizing **Data Modeling** to connect relational tables.
    - 
    - **KPI Calculation:** Created complex **Measures** (Target Achievement Percentage, total Profits, avg profit)and visualized in  **Cards** 
   
     ![Project 2](STDS/Task01_SQL/README.md)
---
### 🍕 Project 3: Pizza Sales Data Analysis
* **Dataset Focus:** In-depth data analysis of pizza sales 🍕 to extract KPIs, understand customer behavior, and identify temporal patterns (daily/hourly peaks) to support inventory and marketing strategies.

**Tool Used:** Power BI

**Key Activities & Achievements 🛠️** 

  - Data Preprocessing: Extracted Day/Month Names and ensured correct data typing for accurate analysis.

  - Interactive Dashboard: Built a Power BI dashboard featuring 5 essential KPIs (e.g., Total Revenue) and analytical charts (e.g., Revenue by Category/Size).

  - Analysis: Identified Top/Bottom 5 Pizzas and visualized peak order timings (5-6 PM, Thu-Sat).

  - Key Insight 🧠: Large and Classic pizzas drive the most revenue. The Thai Chicken Pizza is the top-earning individual product, and peak operational readiness is required on weekends around dinner time.

  ![Project 3](STDS/Task03_Power_BI/README.md)

---
### 📦 Project 4: Brazilian E-Commerce Analysis (Olist)

* **Dataset Focus:** * Comprehensive analysis of 100k+ orders from Brazilian marketplaces, targeting Supply Chain efficiency, Sales trends, and Customer Satisfaction (Reviews).

**Tool Used:** Tableau 📊

**Key Activities & Achievements 🛠️** 

  - Advanced Data Modeling: Built a relationship model connecting 5+ tables (Orders, Customers, Payments, Geolocation) to enable cross-dimensional analysis.
    
- Logistics KPI Creation: Developed complex Calculated Fields to track delivery performance, specifically distinguishing 'On Time' vs. 'Late' orders based on estimated delivery dates.
    
- Multi-Faceted Storytelling: Designed 3 specialized dashboards:
    
        1. Sales & Revenue: Tracking revenue growth, seasonality (Black Friday spikes), and payment method preferences.
        
        2. Logistics: Monitoring shipping costs, average delivery time, and delay heatmaps by State.
        
        3. Customer Reviews: Analyzing the correlation between delivery delays and customer ratings (1-5 stars).

  ![Project 4](STDS/Task04_Tableau/README.md)   

---
### 📦 Final Project: Smart Energy Meter ETL Pipeline
This project implements a complete ETL (Extract–Transform–Load) pipeline for smart energy meter data. It ingests raw meter readings, cleans and validates them, standardizes energy units, detects faulty or invalid records, and stores clean data in a structured database while archiving analytics-ready data in Parquet format. The system ensures reliable, accurate, and high-quality time-series energy data suitable for dashboards, reporting, and advanced analytics.

 ![Final Project](Lec_Task/README.md) 



























