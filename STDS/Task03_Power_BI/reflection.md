# Reflection on Pizza Sales Power BI Project

## 1. What I Learned 
Working on this project introduced me to the full capabilities of Business Intelligence tools:
- **ETL with Power Query:** I learned how to use the "Power Query Editor" to clean raw data, correct data types, and extract specific time features (like Day Name and Hour) from timestamp columns before loading them into the model.
- **DAX Functions:** I gained practical experience in writing **Data Analysis Expressions (DAX)** to create custom measures. Instead of just summing columns, I created calculated fields for *Average Order Value* and *Total Transactions*.


## 2. What Was Challenging 
- **Visual Design & Dashboard Ergonomics:** The biggest challenge was not just creating charts, but designing a layout that is **visually comfortable** and easy to navigate.
    - *Choosing the right charts:* Deciding between a Bar Chart or a Column Chart for specific metrics.
    - *Formatting:* Spending time on color consistency, alignment, and background design to avoid a "cluttered" look. I had to iterate several times to ensure the dashboard tells a clear story without overwhelming the user.
- **Handling Date & Time Data:** Working with the `order_time` column to extract specific hours for the "Busy Hours" heatmap required specific transformation steps to make it usable in the visualization.

## 3. What I Improved 
- **Interactivity:** Unlike my previous Excel dashboards which were relatively static, I improved the user experience by implementing **Cross-Filtering** and **Slicers**. Now, clicking on a specific "Pizza Category" automatically updates all other numbers and charts on the page.
- **Storytelling:** I improved my ability to structure a report logically. I separated the dashboard into a "High-Level Overview" page for quick insights and a "Detailed Analysis" page for deep dives, making the information flow much smoother for the viewer.
