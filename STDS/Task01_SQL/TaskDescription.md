# Adventure Works Sales Analysis: End-to-End Data Project

## 1. Project Overview
This project focuses on analyzing the sales performance of **Adventure Works**, a multinational manufacturing company. The goal is to process raw relational data using **SQL** for data quality assurance and then utilize **Excel** to build an interactive dashboard for strategic decision-making.

## 2. Dataset Description
The analysis is based on a relational schema consisting of the following tables:
* **`Sales`**: The core transactional table containing order details.
* **`Product`**: Details about products, categories, and costs.
* **`Reseller`**: Information about the vendors/stores selling the products.
* **`Region`**: Geographical data for sales territories.
* **`SalesPerson`**: Data regarding the sales team employees.
* **`SalesPersonRegion`**: A bridging table linking salespeople to their assigned territories.
---

## 3. Project Workflow

### Phase 1: Data Pre-processing using SQL 

Before analyzing the data, SQL was used to audit and clean the raw tables to ensure accuracy. Key steps included:
* **Data Integrity Check:** Checking for `NULL` values in critical columns .
* **Duplicate Detection:** Identifying and removing duplicate records.

### Phase 2: Data Analysis & Visualization using Excel 

After cleaning, the data was imported into Excel to uncover key insights:
* **Sales Performance:** Analyzing total revenue trends over time.
* **Regional Analysis:** Comparing sales performance across different territories to identify high-growth regions.
* **Product Performance:** Determining the best-selling products and profit margins.

## 4. Tools Used
* **SQL (Structured Query Language):** For Data Cleaning and Exploration.
* **Microsoft Excel:** For Data Modeling, Pivot Tables, and Dashboard Creation.
