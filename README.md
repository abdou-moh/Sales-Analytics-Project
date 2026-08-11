# Global Superstore Sales Analytics

## Project Overview

This project is an end-to-end data analytics solution built to analyze historical transactional data from a global retail company.

The analysis covers **51,291 transaction records** and examines sales, profitability, customer segments, products, shipping, discounts, and geographic performance to identify business trends, performance gaps, and opportunities for improvement.

The project follows a complete analytics workflow, from business understanding and data validation to SQL analysis, Python-based EDA, Power BI visualization, and business recommendations.

---

## Business Problem

Retail organizations can experience hidden profit erosion when high sales volumes are accompanied by excessive discounting, unprofitable product lines, and uneven regional performance.

The objective of this project is to provide a structured view of sales and profitability performance and identify areas where management can improve revenue quality, margins, product performance, and regional efficiency.

---

## Business Objectives

* Evaluate overall sales and profitability performance.
* Identify loss-making products and sub-categories.
* Analyze the relationship between discount levels and profitability.
* Identify top-performing products, categories, customers, and regions.
* Evaluate sales and profit trends over time.
* Identify geographic markets with strong or weak financial performance.
* Develop an interactive Power BI dashboard for business performance monitoring.
* Translate analytical findings into actionable business recommendations.

---

## Dataset

* **Source:** Global Superstore Sales Dataset
* **File:** `Global_Superstore2.csv`
* **Records:** 51,291
* **Original Columns:** 24

### Key Attributes

* Order and shipping dates
* Customer information
* Product information
* Product categories and sub-categories
* Sales
* Quantity
* Discount
* Profit
* Shipping Cost
* Region
* Country
* Customer Segment
* Order Priority

---

## Tools & Technologies

* **Excel:** Initial data inspection and profiling.
* **Python:** Data validation, cleaning, exploratory data analysis, and statistical analysis.
* **Pandas:** Data manipulation and aggregation.
* **Matplotlib:** Data visualization.
* **SQL Server:** Business-oriented querying, aggregation, filtering, and analytical analysis.
* **Power BI:** Interactive dashboard development and KPI reporting.
* **DAX:** KPI calculations and time-based performance measures.
* **Git & GitHub:** Version control, project documentation, and portfolio presentation.

---

## Project Workflow

The project follows a structured end-to-end analytics workflow:

1. **Business Understanding**
2. **Data Understanding**
3. **Data Validation**
4. **Data Cleaning**
5. **SQL Business Analysis**
6. **Python Exploratory Data Analysis**
7. **Power BI Data Modeling & Dashboard Development**
8. **Business Insights & Recommendations**
9. **Documentation & Portfolio Development**

---

## Data Understanding

The dataset was initially inspected to understand:

* Dataset dimensions and structure
* Column meanings and data types
* Missing values
* Duplicate records
* Numeric distributions
* Categorical values
* Potential data quality issues

A data dictionary was created to document the purpose and characteristics of the available fields.

---

## Data Validation

Several validation checks were performed before modifying the dataset, including:

* Missing-value analysis
* Complete duplicate-row checks
* Numeric range validation
* Date consistency checks
* Categorical-value inspection
* Identifier validation
* Business-rule validation

Particular attention was given to distinguishing genuine business outcomes from actual data-quality problems.

For example, negative `Profit` values were treated as legitimate loss-making transactions rather than invalid records.

---

## Data Cleaning

The following cleaning operations were performed:

* Removed `Row ID` because it was a technical row identifier with no direct analytical value.
* Removed `Postal Code` from the analytical dataset because approximately **80.5%** of its values were missing and other geographic attributes were available.
* Converted identifier fields such as `Order ID`, `Customer ID`, and `Product ID` to appropriate text-based types.
* Converted `Order Date` and `Ship Date` to proper datetime formats.
* Standardized leading and trailing whitespace in relevant text fields.
* Preserved negative `Profit` values because they represent legitimate loss-making transactions.
* Revalidated the dataset after the cleaning process.

The original raw dataset was preserved separately from the cleaned analytical dataset.

---

## SQL Business Analysis

SQL Server was used to perform structured business analysis across multiple dimensions.

The analysis included:

* Overall sales, profit, quantity, and order metrics
* Sales and profit by category and sub-category
* Product performance analysis
* Customer performance analysis
* Regional and country-level analysis
* Time-based sales and profit analysis
* Loss-making product and market identification
* Discount and profitability analysis
* Ranking and advanced analytical queries using SQL techniques such as CTEs and window functions

The SQL analysis was organized into separate scripts according to the business analysis area.

---

## Python Exploratory Data Analysis

Python was used to perform exploratory analysis and identify patterns that support the SQL findings.

The EDA included:

* Descriptive statistics
* Sales and profit distributions
* Category and sub-category performance
* Time-series analysis
* Customer analysis
* Geographic analysis
* Discount and profitability relationships
* Correlation analysis
* Identification of high-performing and loss-making business areas

Pandas was primarily used for data manipulation and aggregation, while Matplotlib was used to visualize analytical patterns.

---

## Power BI Dashboard

An interactive Power BI dashboard was developed to provide an executive-level view of business performance.

### Key KPIs

* Total Sales
* Total Profit
* Profit Margin
* Total Orders
* Total Customers
* Average Order Value
* Average Discount

### Dashboard Analysis

The dashboard provides analysis of:

* Sales and profit trends over time
* Category and sub-category performance
* Regional profitability
* Top-performing products
* Customer performance
* Geographic performance
* Discount and profitability relationships

Interactive slicers and filtering allow users to explore performance by dimensions such as year, region, category, and customer segment.

---

## Key Insights

### 1. Technology is a major contributor to overall business performance

The Technology category demonstrates strong sales and profitability performance compared with other major product categories, making it an important contributor to the company's financial results.

### 2. Tables is a significant loss-making sub-category

The Tables sub-category generates substantial sales volume but produces negative overall profit, indicating that revenue generation alone does not necessarily translate into healthy profitability.

### 3. Higher discount levels are associated with weaker profitability

The analysis indicates a negative relationship between higher discount levels and transaction profitability. This suggests that aggressive discounting can significantly reduce margins, particularly in certain product segments.

> **Note:** The analysis identifies an association between discount levels and profitability; it does not establish a direct causal relationship.

### 4. Regional performance varies significantly

Sales and profitability are not distributed evenly across regions. Some regions generate strong revenue while delivering comparatively weaker profit performance, highlighting the importance of analyzing both revenue and margin.

### 5. Product-level performance varies considerably

A relatively small number of products contribute significantly to overall sales and profit, while some products generate high sales with comparatively weak or negative profitability.

---

## Business Recommendations

### 1. Review high-discount transactions

Establish discount guidelines based on product profitability rather than applying broad discount policies.

High-discount products should be reviewed based on their profit margins before additional promotional activity is approved.

### 2. Investigate the Tables sub-category

Conduct a deeper review of pricing, discount levels, product costs, and shipping expenses within the Tables sub-category.

Potentially unprofitable products should be evaluated individually before continuing or expanding their sales.

### 3. Prioritize profitable product lines

Marketing and inventory strategies should consider both sales volume and profitability.

High-performing Technology and Office Supplies products with healthy margins can be prioritized for inventory availability and targeted promotions.

### 4. Monitor regional profitability

Regions with strong sales but relatively weak profit margins should receive additional analysis to determine whether discounting, product mix, shipping costs, or pricing are contributing to margin erosion.

### 5. Move from revenue-focused to profitability-focused decision-making

Management should evaluate sales performance alongside profit and profit margin rather than relying on revenue alone when assessing products, categories, customers, and markets.

---

## Project Structure

```text
Global-Superstore-Sales-Analytics/
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── notebooks/
│   ├── 01_data_validation.ipynb
│   ├── 02_data_cleaning.ipynb
│   └── 03_eda.ipynb
│
├── sql/
│   ├── 01_basic_analysis.sql
│   ├── 02_sales_profit_analysis.sql
│   ├── 03_customer_analysis.sql
│   ├── 04_geographical_analysis.sql
│   ├── 05_time_analysis.sql
│   └── 06_advanced_analysis.sql
│
├── powerbi/
│   ├── Superstore_Sales_Analytics.pbix
│   ├── Superstore_Sales_Analytics.pdf
│   └── screenshots/
│
├── docs/
│   ├── data_dictionary.xlsx
│   ├── data_quality_report.md
│   ├── cleaning_log.md
│   ├── business_insights.md
│   └── recommendations.md
│
└── README.md
```

---

## Dashboard Preview

### Executive Overview

![Executive Overview](powerbi/screenshots/executive_overview.png)

### Sales & Product Performance

![Sales and Product Performance](powerbi/screenshots/product_performance.png)

### Customer & Geographic Analysis

![Customer and Geographic Analysis](powerbi/screenshots/customer_geography.png)

---

## How to Explore the Project

### SQL Analysis

Open the SQL scripts in the `sql/` directory to review the business analysis queries.

### Python Analysis

Open the notebooks in the `notebooks/` directory to review the validation, cleaning, and exploratory analysis workflow.

### Power BI Dashboard

The Power BI report is available in the `powerbi/` directory.

The `.pbix` file can be opened using Power BI Desktop, while the PDF version provides a static view of the completed dashboard.

---

## Key Deliverables

* Cleaned analytical dataset
* Data Dictionary
* Data Quality Report
* Python Data Validation and EDA notebooks
* SQL Business Analysis scripts
* Interactive Power BI Dashboard
* Power BI PDF export
* Business Insights
* Business Recommendations
* Complete project documentation

---

## Project Outcome

This project demonstrates an end-to-end data analytics workflow that combines data preparation, SQL analysis, Python EDA, business intelligence, and data-driven decision-making.

Rather than focusing only on visualization, the project connects analytical findings to business questions and actionable recommendations.

---

## Author

**Abdalrahman Mohamed Mahmoud**

Data Analyst | Decision Support Graduate

[LinkedIn](https://www.linkedin.com/in/abdelrahman-mohamed-osman/) • [GitHub](https://github.com/abdou-moh)
