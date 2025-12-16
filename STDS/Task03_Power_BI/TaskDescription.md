# Pizza Sales Analysis: End-to-End Power BI Project

## 1. Project Overview 🍕
This project involves analyzing the sales performance of a pizza store using **Microsoft Power BI**. The objective is to transform raw sales records into an interactive dashboard that provides actionable insights into sales trends, customer preferences, and operational efficiency.

## 2. Dataset Description
The dataset contains **48,620 records** of pizza orders with the following key attributes:
- **Order Details:** `order_id`, `order_date`, `order_time`.
- **Product Details:** `pizza_name`, `pizza_category` (Classic, Veggie, Supreme, Chicken), `pizza_size` (S, M, L, XL, XXL).
- **Financials:** `quantity`, `unit_price`, `total_price`.
- **Ingredients:** Detailed list of `pizza_ingredients` for each pizza type.

## 3. Project Workflow

### Phase 1: Data Pre-processing (Power Query) ⚙️
Before visualization, the data was processed using **Power Query Editor** within Power BI to ensure quality and consistency:
- **Data Type Validation:** Checked and corrected data types (e.g., ensuring `order_date` is Date and `total_price` is Decimal).
- **Time Intelligence Preparation:** Extracted new time-based columns from `order_date` and `order_time` (e.g., Day , Month,Month Number, Hour) to enable temporal analysis.
- **Data Cleaning:** Verified the dataset for any missing values or duplicates to ensure accurate calculations.

### Phase 2: Data Modeling & Measures (DAX) 📐
- **Calculated Measures:** Created DAX measures for key metrics:
    - `Total Revenue` 
    - `Average Order Value` 
    - `Total Pizzas Sold` 
    - `Total Orders`
    - `Average Pizzas Per Order` 

### Phase 3: Visualization & Analysis (Power BI Dashboard) 📊
The final dashboard focuses on answering critical business questions:
- **Daily & Monthly Trends:** Identifying peak days and busiest months.
- **Sales by Category & Size:** Understanding which pizza types and sizes drive the most revenue.
- **Top/Bottom Performers:** Identifying the best-selling and worst-selling pizzas.
- **Sales Performance:** Visualizing total revenue and total orders.

## 4. Tools Used
- **Microsoft Power BI:** For ETL (Extract, Transform, Load), Data Modeling, DAX calculations, and Visualization.
