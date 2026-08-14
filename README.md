
# 📊 AtliQ Hardwares — Consumer Goods Performance Analysis

> **SQL  Consumer Goods Analytics Project | Consumer Goods & Computer Hardware**

A SQL-driven business analytics project focused on transforming raw sales, product, customer, pricing, and cost data into **actionable insights for business decision-making**.

The analysis explores product portfolio growth, sales trends, channel contribution, customer discounting, market presence, and product-level performance.

---

## 🚀 Project Overview

**AtliQ Hardwares** is a growing computer hardware manufacturer with operations across India and international markets.

As the business expanded, leadership needed a structured way to answer critical questions such as:

* Which product segments are driving portfolio growth?
* How are sales changing across months and quarters?
* Which channels contribute the most revenue?
* Which products and divisions perform best?
* How heavily are customers being discounted?
* Where is the business exposed to concentration or pricing risks?

This project uses **SQL-based exploratory and diagnostic analysis** to convert relational business data into decision-ready insights.

---

## 🎯 Business Objectives

The analysis focuses on four major areas:

**📦 Product Portfolio**
Analyze product expansion, segment contribution, and division-level performance.

**📈 Sales Performance**
Identify sales trends, seasonality, quarterly patterns, and high-performing products.

**🌍 Market & Channel Analysis**
Understand geographical presence and revenue contribution across sales channels.

**💰 Pricing & Cost Analysis**
Evaluate customer discounting and manufacturing-cost variation.

---

## 🗂️ Dataset

The analysis uses multiple relational tables:

| Table                         | Description                              |
| ----------------------------- | ---------------------------------------- |
| `fact_sales_monthly`          | Monthly sales quantity                   |
| `fact_gross_price`            | Product pricing information              |
| `fact_manufacturing_cost`     | Product manufacturing costs              |
| `fact_pre_invoice_deductions` | Customer/channel discount information    |
| `dim_product`                 | Product, segment, and division hierarchy |
| `dim_customer`                | Customer and market information          |

---

## 🛠️ SQL Skills & Techniques

This project demonstrates practical SQL skills including:

* `JOIN` operations
* `GROUP BY` & aggregations
* `CASE WHEN` statements
* Common Table Expressions (CTEs)
* Window functions
* Ranking functions
* Conditional aggregation
* Date & fiscal-year transformations
* Year-over-year comparisons
* Top-N analysis
* Multi-table business analysis

The emphasis is not only on writing SQL queries, but on **connecting query results with business meaning**.

---

# 🔍 Key Business Insights

## 1. 📦 Product Portfolio Expanded by 36.33%

Unique products increased from:

**245 products → 334 products**

That represents approximately **36.33% growth** between 2020 and 2021.

Major additions included:

* Accessories: **+34**
* Notebook: **+16**
* Peripherals: **+16**
* Desktop: **+15**

### 💡 Business Takeaway

Portfolio expansion is strongly concentrated in **Accessories**, suggesting that the company is prioritizing high-volume accessory categories.

---

## 2. 🧩 Product Portfolio Is Concentrated in Major Segments

The largest product segments include:

| Segment     | Products |
| ----------- | -------: |
| Notebook    |      129 |
| Accessories |      116 |
| Peripherals |       84 |

### 💡 Business Takeaway

A significant portion of the portfolio is concentrated within a few major categories, creating both **scale opportunities and category-dependency risks**.

---

## 3. 🏪 Retailers Generate the Majority of Revenue

Channel contribution:

| Channel     | Revenue Share |
| ----------- | ------------: |
| Retailer    |    **73.23%** |
| Direct      |    **15.47%** |
| Distributor |    **11.30%** |

Retailers contribute approximately **₹1.22B** in revenue.

### 💡 Business Takeaway

The strong dependence on the retailer channel indicates an opportunity to strengthen **direct and distributor channels** while reducing channel concentration risk.

---

## 4. 📈 Sales Show Strong Seasonality

Sales activity was highly volatile during the analyzed period.

* Sales were near zero during **March–May 2020**
* Monthly sales peaked around **September–November**
* Peak monthly sales reached approximately **₹20M**

### 💡 Business Takeaway

Demand is not evenly distributed throughout the year. Inventory, procurement, and supply-chain planning should account for **seasonal demand patterns and external disruptions**.

---

## 5. 📊 Quarterly Demand Is Uneven

Total sales quantity by quarter:

| Quarter | Sales Quantity |
| ------- | -------------: |
| Q1      |       **7.0M** |
| Q2      |       **6.6M** |
| Q3      |       **2.0M** |
| Q4      |       **5.0M** |

### 💡 Business Takeaway

Q1 records the strongest demand, while Q3 significantly underperforms.

This pattern can help optimize **inventory allocation, procurement planning, and sales targets**.

---

## 6. 🏆 Sales Are Concentrated Among High-Performing Products

Top-performing products in certain divisions reach approximately **700K units**, while lower-performing products may sell only around **17K units**.

### 💡 Business Takeaway

A relatively small number of SKUs contribute disproportionately to sales volume.

These products should receive greater attention in **inventory planning, availability management, and product strategy**.

---

## 7. 💸 Customer Discounting Remains High

Average discounts among major customers include:

| Customer | Approx. Discount |
| -------- | ---------------: |
| Flipkart |       **30.83%** |
| Croma    |         **~30%** |
| Viveks   |         **~30%** |
| Ezone    |         **~30%** |
| Amazon   |         **~29%** |

### 💡 Business Takeaway

Consistently high discount levels may indicate **pricing pressure and reduced margin potential**.

A deeper margin analysis would help determine whether these discounts are generating sufficient incremental sales.

---

## 8. 🏭 Manufacturing Costs Vary Significantly

Manufacturing costs range approximately from:

**₹0.89 → ₹240.54**

### 💡 Business Takeaway

The wide cost variation indicates substantial differences in product economics.

This creates an opportunity for **product-level profitability and margin analysis**.

---

## 9. 🌏 Growing APAC Market Presence

The dataset includes multiple international markets, including:

* 🇮🇳 India
* 🇯🇵 Japan
* 🇮🇩 Indonesia
* 🇰🇷 South Korea
* 🇦🇺 Australia

### 💡 Business Takeaway

The company's multi-market presence creates opportunities for **region-specific pricing, product, and go-to-market strategies**.

---

# 🧠 Analytical Approach

The project follows a business-first analytical workflow:

**Raw Data**
↓
**Data Relationships & SQL Joins**
↓
**Aggregation & Transformation**
↓
**Trend & Ranking Analysis**
↓
**Business Insights**
↓
**Strategic Recommendations**

The objective is to move beyond simply producing query results and answer:

> **“What does the data mean for the business?”**

---

# 📌 What This Project Demonstrates

Through this project, I demonstrated the ability to:

* Translate business questions into SQL problems
* Work with multiple related datasets
* Perform exploratory and diagnostic analysis
* Use CTEs and window functions for advanced analysis
* Identify trends and performance drivers
* Analyze product, customer, market, and channel behavior
* Convert SQL outputs into meaningful business insights
* Communicate technical findings in a business-friendly manner

---

# ⚠️ Scope & Limitations

This project focuses primarily on **descriptive and diagnostic analytics**.

It does not currently include:

* Predictive modeling
* Customer segmentation
* Detailed profitability analysis
* Advanced statistical forecasting

---

# 🚀 Future Enhancements

The analysis can be extended with:

* 💰 Product-level profitability analysis
* 📊 Gross margin & contribution margin analysis
* 👥 Customer segmentation
* 🏪 Channel profitability comparison
* 📈 Sales forecasting
* 🌍 Regional performance analysis
* 📊 Interactive Power BI dashboard

---

# 📦 Project Deliverables

* **10 SQL business-analysis queries**
* Clean and structured SQL scripts
* Business-focused analytical outputs
* Key insight summary
* Actionable interpretation of findings

---

# 🏁 Conclusion

This project demonstrates how **SQL can transform raw relational data into actionable business intelligence**.

By analyzing product growth, sales trends, channel dependency, customer discounting, manufacturing costs, and market presence, the project highlights key opportunities and potential business risks.

**The key takeaway:**

> Data analysis becomes valuable when SQL results are translated into clear business decisions.

---

## 👤 Connect With Me

**Md Raish Alam — Data Analyst**

🔗 **LinkedIn:** https://www.linkedin.com/in/raishalam/
📧 **Email:** [raishalam11@gmail.com](mailto:raishalam11@gmail.com)

---

⭐ **If you find this project useful, feel free to explore the SQL queries and insights.**
