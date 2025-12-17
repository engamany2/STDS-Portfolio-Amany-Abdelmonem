# Reflection on Olist E-Commerce Tableau Project

## 1. What I Learned 
This project was my first deep dive into **Tableau**, and I learned several key concepts that differentiate it from other BI tools:
- **The "Sheet Architecture":** I learned that Tableau requires a modular approach—building each visualization on a separate "Worksheet" before assembling them into a "Dashboard". This taught me to focus on one insight at a time.
- **Calculated Fields:** I mastered creating custom logic (like `DATEDIFF` for shipping time and `IF` statements for delivery status) to generate new metrics from raw data.
- **Data Blending & Joins:** I learned how to handle a complex relational schema (Star Schema) by connecting multiple CSV files (Orders, Customers, Payments) to create a unified data source.

## 2. What Was Challenging 
-  Since this was my first time using Tableau, the workflow felt restrictive compared to Excel or Power BI.
    - *Sheet vs. Canvas:* In Excel/Power BI, I could create multiple charts or pivot tables on a single view instantly. In Tableau, the requirement to create a dedicated **"Sheet" for every single chart** was tedious and took time to get used to.
- **Formatting & Design:** Customizing the "Look and Feel" was difficult. Adjusting colors, fonts, and removing gridlines to make the charts look clean required navigating through complex formatting menus, unlike the drag-and-drop simplicity I was used to in Power BI.
- **Map Visualization:** Handling the geographical data for Brazil required specific role assignments (Latitude/Longitude) to ensure the map rendered correctly without errors.

## 3. What I Improved 
- **Data Storytelling:** I moved beyond just making dashboards to creating a **"Tableau Story"**. I improved my ability to weave different insights (Sales, Logistics, Satisfaction) into a cohesive narrative that guides the viewer through the business problems.
- **Analytical Depth:** Compared to previous tasks, I performed more advanced analysis here, such as correlating two different metrics (Delivery Time vs. Review Score) to find causality, rather than just showing totals.
