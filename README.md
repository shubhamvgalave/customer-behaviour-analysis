🛍️ Customer Shopping Behavior Analytics: Python + MySQL + Power BI

An end-to-end analytics project that turns raw retail customer data into business insights on customer segments, loyalty, and purchase drivers.

📌 Project Overview

This project simulates a corporate-grade analytics workflow, from raw CSV to stakeholder-ready recommendations:

Stage	Tool	Goal
1. Data Preparation, Modeling & EDA	Python (pandas)	Clean and transform the raw dataset, engineer features
2. Data Analysis	MySQL	Load the cleaned data into a database and run queries on customer segments, loyalty, and purchase drivers
3. Visualization & Insights	Power BI	Build an interactive dashboard highlighting key patterns and trends
4. Report & Presentation	Report + Slides	Summarize findings and give actionable business recommendations
🎯 Business Questions
Which customer segments (age group, gender, location) generate the most revenue?
Do subscribers spend more and buy more often than non-subscribers?
How do discounts and promo codes relate to spending and purchase behavior?
Which categories, products, seasons, shipping types, and payment methods drive purchases?
Who are our loyal customers (by previous purchases and purchase frequency), and how do they differ from new ones?
📂 Dataset

File: customer_shopping_behavior.csv: 3,900 rows × 18 columns, one row per customer.

Column	Description
Customer ID	Unique customer identifier (1–3900)
Age, Gender	Customer demographics (age range 18–70)
Item Purchased, Category	Product bought (25 items across 4 categories)
Purchase Amount (USD)	Amount spent (range $20–$100, mean ≈ $59.76)
Location	US state (50 states)
Size, Color	Product attributes
Season	Season of purchase
Review Rating	Customer rating (2.5–5.0, mean ≈ 3.75)
Subscription Status	Whether the customer is subscribed (Yes / No)
Shipping Type	6 shipping options
Discount Applied, Promo Code Used	Discount / promo usage (Yes / No)
Previous Purchases	Number of prior purchases (1–50)
Payment Method	6 payment methods
Frequency of Purchases	How often the customer buys (7 categories)
⚠️ Dataset notes
The dataset has no order date column and one record per customer, so month-over-month trends aren't possible. Seasonality is analyzed through the season column instead.
Loyalty is measured with proxies: subscription_status, previous_purchases, and frequency_of_purchases.
🛠️ Tech Stack
Python 3.11+: pandas, sqlalchemy, pymysql
MySQL 8.0+: CTEs and window functions require 8.0 or later
MySQL Workbench: query development
Power BI Desktop: dashboarding (via MySQL Connector/NET)
Jupyter Notebook: cleaning and documentation
