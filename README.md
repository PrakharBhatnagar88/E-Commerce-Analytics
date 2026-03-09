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
`brazilian-ecommerce-analytics`

-  `dataset/` (Contains the Olist CSV files)
-  `sql_queries/` (Scripts for data aggregation and KPI calculation)
-  `dashboard/` (The `Tableau Dashboard.twbx` file) 
-  `README.md`


## My Contribution

- **Data Engineering:** Joined multiple relational tables using SQL to create a master dataset.
- **Analytical Querying:** Wrote SQL scripts to calculate Monthly Recurring Revenue (MRR) and customer lifetime value.
- **Visualization:** Designed a Tableau dashboard focused on executive-level KPIs.
- **Logistics Analysis:** Analyzed the gap between estimated vs. actual delivery dates.


## Business Questions

1. Which product categories drive the most revenue for the platform?
2. Is there a specific time of year or month where order cancellations peak?
3. How does the freight value affect the final purchase decision in remote regions?

## Future Improvements

* **Predictive Modeling:** Use Python to predict delivery delays before they happen.
* **Customer Segmentation:** Apply RFM (Recency, Frequency, Monetary) analysis to identify "Power Users."
* **Market Basket Analysis:** Identify which products are frequently bought together to improve recommendation logic.
