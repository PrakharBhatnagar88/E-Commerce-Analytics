# E-Commerce-Analytics
I built this to solve the classic e-commerce headache: having plenty of data but no idea why shipping is slow or why customers are abandoning their carts. By layering SQL for logic, Excel for the initial mess, and both Power BI/Tableau for the finish line, I created a full-circle view of business health.

## The Toolkit
- **Excel:** My "ER room" for data. Used for initial deduplication, handling nulls, and fixing formatting nightmares.
- **SQL:** The engine. This is where I wrote the queries to calculate delivery lead times, payment success rates, and month-over-month growth.
- **Power BI:** Built for the "Executive View"—high-level KPIs and quick-glance health metrics.
- **Tableau:** Used for deep-dive spatial analysis (mapping where shipping lags) and complex trend spotting.

## What this project actually tracks
- **Logistics Friction:** Measuring the gap between "Order Placed" and "Package Arrived." I flagged regions where the logistics chain is breaking.
- **Payment Health:** Is a specific gateway failing? I tracked payment trends to see if technical errors were costing the business money.
- **Winning vs. Losing:** Identifying which product categories are carrying the revenue and which ones are just taking up warehouse space.

## The Workflow (Step-by-Step)
### Phase 1: The Cleanup (Excel)
Raw e-commerce data is rarely "clean." I used Excel to:
- Standardize messy date-time stamps.
- Filter out test orders and outliers that would skew the average shipping time.
- Ensure currency consistency across different regions.

### Phase 2: The Analysis (SQL)
This is where the heavy lifting happened. Instead of doing math in the dashboard, I did it in the database for better performance.
- **CTEs & Joins:** Connected customer tables with shipping and payment logs.
- **Logic:** Calculated "Days to Delivery" as a custom metric to benchmark carrier performance.
- **Aggregations:** Grouped sales by payment type to spot shifting consumer preferences.

### Phase 3: The Visuals (Power BI & Tableau)
I built dashboards in both tools to compare their strengths:
- **Power BI:** Great for showing the "Business Pulse" (Total Revenue, Target vs. Actual).
- **Tableau:** Better for the "Logistics Map," showing a heat map of shipping delays across different zip codes.

## Key Takeaways
- **Data is only as good as its cleaning:** Skipping the Excel phase would have led to a 10% margin of error in the shipping reports.
- **SQL is the MVP:** Moving the logic to the query level made the dashboards run significantly faster.
- **Context Matters:** A "sale" isn't a success if the delivery takes 14 days and the customer never returns. This project tracks the entire journey.


