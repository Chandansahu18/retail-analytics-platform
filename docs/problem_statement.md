
# Business Context

Modern ecommerce companies generate massive volumes of transactional, behavioral, and marketing data every day. However, raw data alone does not improve business performance unless it is transformed into actionable insights.

Retail businesses continuously struggle with questions related to customer retention, conversion optimization, marketing efficiency, product performance, and revenue growth. These problems become harder when data exists across disconnected systems such as ecommerce transactions, website behavioral events, and marketing campaign platforms.

This project builds an end-to-end retail analytics platform that consolidates multiple retail data sources into a centralized analytics warehouse and uses SQL, dbt, Python, and Power BI to solve core business problems through analytical workflows and reporting.

---

# The Core Business Problem

An ecommerce company experiences inconsistent customer retention, low funnel conversion rates, fluctuating marketing ROI, and uneven product/category performance across regions and customer segments.

The business lacks a centralized analytics layer capable of answering critical operational and strategic questions such as:

* Which customer segments generate the highest long-term value?
* Where do customers drop off in the purchase funnel?
* Which marketing channels truly drive profitable conversions?
* Which product categories contribute most to revenue growth?
* How effectively does the business retain customers over time?
* Are observed conversion differences statistically meaningful or just random variation?

The company currently operates with fragmented datasets and reactive reporting, making it difficult for stakeholders to make fast, data-driven decisions.

---

# Project Objective

The objective of this project is to design and build a modern retail analytics platform that:

* Centralizes ecommerce, behavioral, and marketing datasets into a unified warehouse
* Transforms raw datasets into analytics-ready star schema models
* Enables business KPI tracking through SQL analytics workflows
* Measures customer retention, funnel performance, marketing efficiency, and revenue growth
* Provides executive-ready reporting and dashboarding
* Simulates real-world analytics engineering and business intelligence workflows

---

# Data Sources Used

## 1. Olist Ecommerce Dataset

Used for:

* transactional analytics
* customer analysis
* order lifecycle analysis
* product/category performance
* delivery performance
* revenue and retention analysis

Contains:

* orders
* order items
* customers
* products
* payments
* reviews
* sellers
* geolocation data

---

## 2. RetailRocket Behavioral Events Dataset

Used primarily for behavioral event analysis from `events.csv`, focusing on user browsing, cart, and transaction activity while excluding the original recommendation system components.

Used for:

* funnel analysis
* visitor behavior tracking
* conversion analysis
* event trend analysis

Contains:

* page views
* add-to-cart events
* transactions
* visitor activity patterns

---

## 3. Synthetic Marketing Dataset

Custom-generated marketing performance data used to simulate real-world campaign analytics.

Used for:

* ROAS analysis
* CPA analysis
* CTR trend analysis
* marketing efficiency reporting
* campaign performance evaluation

---

# Stakeholders

### Executive Leadership

Need high-level visibility into revenue growth, customer health, and business performance trends.

### Marketing Team

Need to identify which acquisition channels generate profitable customers and maximize ROAS.

### Product & Ecommerce Team

Need to understand user behavior, funnel drop-offs, and product/category conversion performance.

### Customer Retention Team

Need to identify high-value customers, churn risks, and retention opportunities.

### Operations Team

Need visibility into delivery delays, review scores, and regional performance variations.

### Business Analysts

Need analytics-ready datasets and reusable SQL workflows for ad hoc analysis and dashboarding.

---

# Business Questions This Project Answers

1. How do revenue, orders, AOV, and customer activity trend over time?

2. What percentage of customers return after their first purchase, and how does retention decay month-over-month?

3. Which customer segments generate the highest revenue and long-term value?

4. Where do users drop off in the ecommerce conversion funnel?

5. Which product categories and regions contribute most to overall revenue?

6. Which marketing channels deliver the best ROAS and lowest acquisition cost?

7. How do conversion rates and marketing performance change over time?

8. Are observed conversion differences statistically significant or likely due to random variation?

---
# KPIs Tracked

## Business KPIs

- Total Revenue
- Total Orders
- Average Order Value (AOV)
- Revenue Growth %
- Revenue per Customer
- Average Order Frequency

## Customer Analytics KPIs

- Cohort Retention %
- RFM Segment Distribution
- Customer Purchase Frequency
- Repeat Purchase Behavior

## Funnel & Behavioral KPIs

- View-to-Cart Conversion Rate
- Cart-to-Purchase Conversion Rate
- Overall Funnel Conversion %
- Funnel Drop-Off %

## Marketing KPIs

- ROAS (Return on Ad Spend)
- CPA (Cost per Acquisition)
- CTR (Click Through Rate)
- Conversion Rate
- Campaign Efficiency

## Operational KPIs

- Late Delivery %
- Review Score Trends
- State-Level Revenue Performance

---

# Analytical Techniques Used

## SQL Analytics

* CTE-based analytical workflows
* Window functions
* Cohort analysis
* Funnel analysis
* RFM segmentation
* Ranking and trend analysis
* Month-over-month growth analysis

## Data Modeling

* Star schema design
* Fact and dimension modeling
* dbt transformation workflows
* Staging and marts architecture

## Statistical Analysis

* A/B test simulation
* Z-score significance testing
* Conversion rate comparison

## Python EDA

* Exploratory analysis
* Statistical summaries
* Business storytelling through visualization

## BI & Dashboarding

* Interactive Power BI dashboards
* KPI reporting
* Executive summaries
* Customer and marketing performance visualization

---

# Definition of Success

This project is considered successful if it can:

* Build a centralized analytics-ready retail warehouse
* Produce reliable KPI and business performance reporting
* Identify actionable retention, funnel, and marketing insights
* Segment customers based on purchasing behavior
* Detect meaningful conversion and revenue trends
* Demonstrate end-to-end analytics engineering and BI workflows
* Deliver stakeholder-ready dashboards and business reports
* Simulate production-style retail analytics use cases using modern data tooling
