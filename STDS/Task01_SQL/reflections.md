# Reflection on AdventureWorks Analysis Task

## 1. What I Learned 
Working on this project expanded my technical skillset significantly:
- **Dynamic SQL & Automation:** This was a major breakthrough for me. Instead of writing the same cleaning queries for every single table, I learned how to write **Dynamic SQL** scripts. I created a single logic block that iterates through all tables to check for nulls and duplicates automatically, which saved time and reduced errors.
- **SQL & Excel Integration:** I learned how to effectively use SQL as a "preprocessing layer" to handle heavy cleaning before importing data into Excel.
- **Data Modeling:** I gained a solid understanding of building a **Relational Data Model** in Excel by connecting the Fact Table with Dimension Tables.

---

## 2. What Was Challenging 
- **Code Redundancy:** Initially, I found myself repeating the same SQL block (checking for nulls and duplicates) for each table (`Product`, `Reseller`, `Region`, etc.). It felt impractical .
- **Data Integrity:** Ensuring that all Foreign Keys in the `Sales` table actually matched records in the related tables was tricky but essential to avoid errors during the modeling phase.
- **Choosing the Right Visuals:** With so many dimensions, it was challenging to decide which charts would provide the most value without cluttering the dashboard.

---

## 3. What I Improved 
- **Code Efficiency :** I moved from writing static, repetitive scripts to building **scalable Dynamic SQL**. This improvement means that if I add 10 more tables to the database in the future, my cleaning script will handle them without me writing a single extra line of code.
- **Workflow Optimization:** Compared to the first task, I optimized my workflow by delegating the heavy lifting to SQL automation rather than manual Excel cleaning.
