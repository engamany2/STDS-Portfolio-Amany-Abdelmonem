# Brazilian E-Commerce Analysis: End-to-End Tableau Project

## 1. Project Overview 🇧🇷
This project utilizes the **Brazilian E-Commerce Public Dataset by Olist**, a comprehensive dataset containing information on 100k orders made at multiple marketplaces in Brazil. The objective is to build a multi-page **Tableau Story** that analyzes the business from three critical perspectives: **Sales Performance**, **Logistics Efficiency**, and **Customer Satisfaction**.

## 2. Dataset Description
The analysis is based on a complex relational schema consisting of multiple connected tables:
- **`olist_orders_dataset`**: The core table linking all other dimensions.
- **`olist_order_items_dataset`**: Details about products within each order.
- **`olist_customers_dataset`**: Customer demographics and location data.
- **`olist_products_dataset`**: Product categories and specifications.
- **`olist_order_payments_dataset`**: Payment methods and transaction values.
- **`olist_order_reviews_dataset`**: Customer ratings and feedback comments.
- **`olist_geolocation_dataset`**: Latitude and longitude data for mapping.

## 3. Project Workflow

### Phase 1: Data Connection & Modeling 🔗
- **Data Blending/Joins:** Connected the multiple CSV files within Tableau to create a unified data source, ensuring correct relationships between `Order_ID`, `Customer_ID`, and `Product_ID`.
- **Geospatial Mapping:** Utilized the geolocation data to map customer and seller distributions across Brazilian states.

### Phase 2: Feature Engineering (Calculated Fields) 🧮
Tableau's calculation engine was used to derive meaningful metrics that did not exist in the raw data:
- **Delivery Status Logic:** Created a calculated field to flag orders as **"On Time"** or **"Late"** by comparing the actual delivery date (`order_delivered_customer_date`) against the estimated date (`order_estimated_delivery_date`).
- **Processing Time:** Calculated the duration between `order_approved_at` and `order_delivered_carrier_date` to measure warehouse efficiency.
- **Delivery Duration:** Computed the total days taken for the package to reach the customer.

### Phase 3: Visualization & Dashboarding 📊
The final output is structured into three distinct dashboards:
1.  **Sales Dashboard:** Focuses on Total Revenue, Average Order Value, and Sales Trends over time.
2.  **Logistics Dashboard:** Analyzes Delivery Performance, Freight Costs, and Shipping Delays.
3.  **Customer Satisfaction Dashboard:** Investigates Review Scores and correlates them with delivery times to understand what drives customer happiness.

## 4. Tools Used
- **Tableau Public/Desktop:** For Data Visualization, Dashboard Creation, and Storytelling.
