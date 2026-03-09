# E-Commerce-Analytics
<br>
<img width="1919" height="1199" alt="Tableau Dashboard (1)" src="https://github.com/user-attachments/assets/9dad96e4-d6dd-4e42-9373-c5ca2bbf6548" />
<br><br>
<img width="1919" height="1199" alt="Tableau Dashboard (2)" src="https://github.com/user-attachments/assets/7a798fa6-77e4-480a-ae49-4424c769ad8a" />
<br><br>
<img width="1919" height="1199" alt="Tableau Dashboard (3)" src="https://github.com/user-attachments/assets/e0c435c5-a975-4054-8262-ac072d48c5b3" />
<br><br>

## Project Overview
This project dives into the Olist Brazilian E-Commerce dataset to analyze sales performance, customer behavior, and logistics efficiency. By connecting various data points—from order timestamps to geographic locations—the analysis provides a 360-degree view of how the marketplace operates.

The analysis helps answer questions such as:
- How does sales revenue trend across different months and years?
- Which regions in Brazil show the highest customer density and order volume?
- What is the relationship between delivery times and customer satisfaction scores?

## Dataset
**Source:** [Kaggle – Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

The project utilizes several interconnected tables:
- **Orders & Items:** Order status, timestamps, and pricing.
- **Products:** Category names and physical dimensions.
- **Payments:** Methods (credit card, voucher, etc.) and installment details.
- **Reviews:** Customer feedback and star ratings.
- **Geolocation & Customers:** Zip codes, cities, and state-level data.

## Tools Used
- **Excel:** Used for initial data inspection and basic cleaning of categorical labels.
- **SQL:** Used for complex data joins, aggregating sales metrics, and performing deep-dive queries into customer behavior.
- **Tableau:** Used to create the final interactive dashboard and spatial visualizations.

## Project Workflow

- **Data Preparation:** Initial cleaning in Excel to handle missing values and formatting.
- **Relational Mapping:** Structuring SQL queries to join the 8+ different CSV files into a cohesive dataset.
- **Exploratory Data Analysis (EDA):** Identifying seasonal trends and top-performing product categories.
- **Geospatial Analysis:** Mapping order distribution across Brazilian states.
- **Dashboard Development:** Building a visual interface in Tableau to track KPIs.

## Key Insights
- **Regional Dominance:** The state of São Paulo (SP) represents the largest share of both customers and sellers.
- **Payment Preferences:** Credit cards are the most frequent payment method, often involving multiple installments.
- **Delivery Impact:** There is a strong correlation between fast delivery times and high review scores (4-5 stars).

## Dashboard Features
The Tableau dashboard provides a visual breakdown of:

- Total Revenue and Order Volume trends.
- Geographic Heatmaps of customer locations.
- Top Product Categories by sales value.
- Average shipping costs vs. delivery speed.


## Repository Structure
`olist-ecommerce-analytics`

├── dataset/ # Raw Olist CSV files (Customers, Orders, Payments, etc.)

├── sql_queries/ │   └── SQL E-Commerce.sql       # Main script containing 12+ KPI extraction queries

├── dashboard/ │   └── Tableau Dashboard.twbx   # Final interactive Tableau workbook

└── README.md                    # Project documentation and summary


## My Contribution

- **Database Schema Management:** Connected and joined 8+ relational tables (Orders, Reviews, Payments, etc.) to ensure data integrity for analysis.
- **Advanced SQL Querying:** Authored SQL E-Commerce.sql to extract high-level business metrics, including:
    - **Temporal Analysis:** Comparing order volume and average payment value between Weekdays vs. Weekends.
    - **Geospatial KPIs:** Calculating the average number of days for delivery across different Brazilian cities.
    - **Financial Health:** Identifying the Top 5 and Bottom 5 Product Categories based on profit margins.
- **Tableau Dashboard Design & UX:**
    - **Interactive Filtering:** Implemented "Global Filters" for Date, City, and Category, allowing users to drill down into specific market segments with one click.
    - **Visual Storytelling:** Chose specific chart types (e.g., Heatmaps for geography and Trend lines for growth) to make complex data instantly understandable for non-technical stakeholders.
    - **KPI Scorecards:** Designed high-level summary cards at the top of the dashboard for "at-a-glance" tracking of Total Revenue, Average Review Score, and Total Orders.

## Business Questions

1. Which product categories drive the most revenue for the platform?
2. Is there a specific time of year or month where order cancellations peak?
3. How does the freight value affect the final purchase decision in remote regions?

## Future Improvements

- **Data Quality Management:** Implement more robust scripts for handling null and missing values to ensure 100% data accuracy.
- **Advanced Modeling:** Forming a bridge table between specific sheets to resolve many-to-many relationship complexities.
- **Schema Optimization:** Establishing different types of relationships (One-to-One, One-to-Many) between sheets to improve dashboard loading speed and query performance.
