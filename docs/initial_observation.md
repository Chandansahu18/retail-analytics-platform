# Initial Dataset Observations

Date reviewed: 22/05/2026

## General Observations

- The project combines three different analytical domains:
  - ecommerce transactional data (Olist)
  - behavioral event data (RetailRocket)
  - synthetic marketing performance data

- The Olist dataset already follows a highly relational structure with clear entity separation across orders, customers, products, payments, reviews, and sellers.

- RetailRocket behavioral data is event-heavy and significantly larger than the transactional dataset, making it suitable for funnel and conversion analysis.

- Marketing data requires synthetic generation because real campaign attribution datasets are not included in the public ecommerce sources.

---

# Olist Dataset Observations

## Structural Observations

- Multiple tables contain strong primary/foreign key relationships suitable for dimensional modeling.

- `customer_id` is not a stable customer identifier. `customer_unique_id` must be used for customer-level analysis and retention calculations.

- Order-related timestamps are initially stored as VARCHAR and require proper timestamp casting during staging.

- Some product columns contain source typos such as:
  - `product_name_lenght`
  - `product_description_lenght`

- ZIP code prefixes are stored as integers in raw tables, causing leading-zero issues that require normalization.

---

## Business Observations

- Most customers appear to place only one order, indicating potentially low repeat purchase behavior.

- Delivery delays appear to correlate with lower review scores.

- Revenue contribution is concentrated within a smaller set of product categories.

- Certain customer states contribute significantly more revenue than others.

- Review comment fields contain a high percentage of null values.

---

# RetailRocket Dataset Observations

## Structural Observations

- Event timestamps are stored in Unix milliseconds and require conversion to TIMESTAMP format.

- The dataset contains three primary event types:
  - `view`
  - `addtocart`
  - `transaction`

- Transaction events represent only a very small portion of total events, which is expected in ecommerce behavioral funnels.

- RetailRocket datasets are not directly joinable to Olist transactional entities and are analyzed independently.

---

## Behavioral Observations

- Funnel drop-off between product views and transactions appears extremely high.

- Add-to-cart activity represents a critical conversion bottleneck worth analyzing further.

- Visitor activity is heavily skewed toward browsing behavior rather than completed purchases.

---

# Marketing Dataset Observations

- Marketing data is synthetically generated to simulate realistic campaign reporting scenarios.

- ROAS, CPA, CTR, and conversion metrics vary substantially across channels.

- Some channels appear efficient in conversion volume but weak in profitability.

---

# Questions Identified During Profiling

- How quickly does customer retention decay after first purchase?

- Which customer segments contribute most to long-term revenue?

- Which stages of the behavioral funnel produce the largest drop-offs?

- Which marketing channels produce sustainable revenue growth rather than only traffic volume?

- How strongly do delivery delays affect customer satisfaction?

---

# Early Analytical Direction

Based on initial profiling, the project focuses on:
- customer retention analysis
- RFM segmentation
- funnel conversion analysis
- marketing efficiency analysis
- revenue trend reporting
- operational delivery performance
- stakeholder-ready KPI reporting

---

# Initial Assessment

- The datasets are sufficiently large for meaningful analytical workflows.

- The warehouse structure supports star-schema modeling and downstream BI reporting.

- The combination of transactional, behavioral, and marketing datasets enables realistic end-to-end retail analytics use cases.
