# Airtel Network Performance & Customer Experience Analytics

### SQL & Power BI Data Analytics Project

---

## Project Title

**Airtel Network Performance & Customer Experience Analytics**

## Project Overview

This project is a Telecom Data Analytics solution that analyzes network performance, customer experience, location-wise performance, customer complaints, satisfaction, NPS, and customer usage patterns.

The project uses **SQL for data analysis** and **Power BI for interactive dashboard development** to identify poor-performing locations, network quality issues, customer complaint patterns, and factors affecting customer satisfaction.

> **Dataset Note:** The dataset is a synthetic/project dataset created for learning and portfolio purposes. It does not represent Airtel's confidential operational data.

## Project Objectives

- Analyze overall network performance.
- Compare 4G and 5G network KPIs.
- Identify locations with poor network quality.
- Analyze customer complaints and complaint categories.
- Measure customer satisfaction and NPS.
- Evaluate complaint resolution performance.
- Understand customer data and voice usage.
- Create interactive Power BI dashboards.
- Provide data-driven business recommendations.

## Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| **MySQL / SQL** | Data querying, aggregation and business analysis |
| **Power BI** | Interactive dashboard development |
| **DAX** | Power BI measures and KPI calculations |
| **Excel / CSV** | Dataset preparation and source-data handling |
| **GitHub** | Project repository and version control |

## Dataset Description

The project contains **five primary data tables with 10,000 rows per table**, giving **50,000 rows across the five source tables**.

| Table | Rows | Purpose |
|---|---:|---|
| `Customer_Data` | 10,000 | Customer master information |
| `Network_Performance` | 10,000 | Network quality and performance KPIs |
| `Customer_Experience` | 10,000 | Complaints, satisfaction and NPS |
| `Location_Analysis` | 10,000 | State/city performance |
| `Usage_Analysis` | 10,000 | Data and voice usage patterns |

### Power BI Support Tables

- `Date_Table` – Date and month fields used by report visuals and slicers.
- `All measures` – Dedicated Power BI measure table containing report DAX measures.

### Key Fields

`Customer_ID`, `Date`, `State`, `City`, `Network_Type`, `Customer_Segment`, `Network_Availability`, `Download_Speed`, `Upload_Speed`, `Latency`, `Call_Drop_Rate`, `Complaints`, `Satisfaction`, `NPS`, `Data_Usage`, and `Voice_Usage`.

## SQL Analysis

SQL is used to calculate telecom KPIs and answer business questions.

### Key SQL Analyses

- Total Customers
- Total Complaints
- Average Network Availability
- Average Download Speed
- 4G vs 5G Performance
- State-wise Network Performance
- Complaint Categories

### Example Queries

#### Total Customers

```sql
SELECT COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM Customer_Data;
```

#### Total Complaints

```sql
SELECT COUNT(*) AS Total_Complaints
FROM Customer_Experience
WHERE Complaint_Flag = 1;
```

#### Average Network Availability

```sql
SELECT ROUND(AVG(Network_Availability_Pct),2)
       AS Avg_Network_Availability
FROM Network_Performance;
```

#### Average Download Speed

```sql
SELECT ROUND(AVG(Download_Speed_Mbps),2)
       AS Avg_Download_Speed
FROM Network_Performance;
```

#### 4G vs 5G Performance

```sql
SELECT
    Network_Type,
    ROUND(AVG(Download_Speed_Mbps),2) AS Avg_Download_Speed,
    ROUND(AVG(Latency_ms),2) AS Avg_Latency,
    ROUND(AVG(Call_Drop_Rate_Pct),2) AS Avg_Call_Drop
FROM Network_Performance
GROUP BY Network_Type;
```

#### State-wise Performance

```sql
SELECT
    State,
    ROUND(AVG(Network_Availability_Pct),2) AS Avg_Availability,
    ROUND(AVG(Download_Speed_Mbps),2) AS Avg_Speed,
    ROUND(AVG(Call_Drop_Rate_Pct),2) AS Avg_Call_Drop
FROM Location_Analysis
GROUP BY State
ORDER BY Avg_Availability DESC;
```

#### Complaint Categories

```sql
SELECT
    Complaint_Category,
    COUNT(*) AS Complaint_Count
FROM Customer_Experience
WHERE Complaint_Flag = 1
GROUP BY Complaint_Category
ORDER BY Complaint_Count DESC;
```

## Power BI Dashboard

The Power BI report contains **4 interactive report pages**, configured as Fit-to-Page at **1280 × 720**.

### 1. Executive Summary

- State Wise Network Availability
- Customer Distribution
- Network Type Performance
- Customer Satisfaction
- Monthly Network Availability
- Total Customers
- Total Complaints
- Average Network Availability
- Average Download Speed
- Average Latency
- Average Call Drop Rate

### 2. Network Performance

- Call Drop Rate by City
- Monthly Network Availability
- Latency by Network Type
- Monthly Call Drop Rate
- 4G vs 5G Download Speed
- Network Availability by State
- Average Download Speed
- Average Upload Speed
- Average Latency
- Average Call Drop Rate

### 3. Customer Experience

- Total Complaints by State
- Customer Satisfaction by Customer Segment
- Monthly Complaints
- Complaints by Category
- Complaint Status
- Resolution Rate
- Resolution Time
- NPS
- Customer Satisfaction
- Resolved Complaints

### 4. Usage Analysis & Location Analysis

- Total Data Usage
- Data Usage by Customer Segment
- 4G vs 5G Data Usage
- Data Usage by State
- Customers Distribution by State
- Average Data Usage
- Average Voice Usage
- Average Tenure
- Total Cities
- Total States

### Interactive Filters

The dashboard uses slicers for:

- State
- City
- Network Type
- Customer Segment
- Date

## Key KPIs

The Power BI report uses **18 distinct measures**:

| KPI |
|---|
| Total Customers |
| Total Complaints |
| Avg Network Availability |
| Avg Download Speed |
| Avg Upload Speed |
| Avg Latency |
| Avg Call Drop Rate |
| Avg Customer Satisfaction |
| Avg NPS |
| Avg Resolution Time |
| Complaint Resolution Rate % |
| Resolved Complaints |
| Total Data Usage |
| Average Data Usage |
| Average Voice Usage |
| Average Tenure |
| Total Cities |
| Total States |

## Key Insights

The dashboard is designed to identify:

- States and cities with low network availability.
- Locations with high call-drop rates and downtime.
- Differences in 4G and 5G speed, latency, and call-drop performance.
- The most common customer complaint categories.
- Complaint volume and resolution performance.
- Customer segments with lower satisfaction.
- Data and voice usage by segment and location.
- Monthly changes in network and customer-experience KPIs.

## Project Workflow

```text
Dataset Collection
        ↓
Data Preparation
        ↓
Data Cleaning & Validation
        ↓
MySQL Database
        ↓
SQL Analysis
        ↓
Power BI Data Model
        ↓
Relationships & Date Table
        ↓
DAX Measures
        ↓
Dashboard Development
        ↓
Slicers & Page Navigation
        ↓
Business Insights
        ↓
Recommendations
```

## Repository Structure

```text
Airtel-Network-Performance-Analytics/
│
├── README.md
│
├── data/
│   ├── Customer_Data.csv
│   ├── Network_Performance.csv
│   ├── Customer_Experience.csv
│   ├── Location_Analysis.csv
│   └── Usage_Analysis.csv
│
├── sql/
│   └── airtel_network_analysis.sql
│
├── powerbi/
│   └── Airtel_Network_Analytics.pbix
│
├── screenshots/
│   ├── executive_summary.png
│   ├── network_performance.png
│   ├── customer_experience.png
│   └── usage_location_analysis.png
│
└── documentation/
    └── project_documentation.pdf
```

## Dashboard Screenshots

### Executive Summary

<img width="885" height="498" alt="1 Executive Summary" src="https://github.com/user-attachments/assets/2da23879-f6db-4d09-9285-5ea677e20abe" />

### Network Performance

<img width="881" height="497" alt="2 Network Performance" src="https://github.com/user-attachments/assets/742676c1-2c24-4f91-93cc-56ff1f1b3150" />

### Customer Experience

<img width="886" height="497" alt="3 Customer Experience" src="https://github.com/user-attachments/assets/744d280f-f6ac-450e-b9dd-215943faa7b3" />


### Usage & Location Analysis

<img width="886" height="491" alt="4 Usage Analysis  Location Analysis" src="https://github.com/user-attachments/assets/0d6c8a72-888b-441d-a03c-cead41642ee1" />


> Place your actual Power BI screenshots inside the `screenshots/` folder using the filenames shown above.

## How to Run the Project

### Step 1 – Clone the Repository

```bash
git clone https://github.com/your-username/Airtel-Network-Performance-Analytics.git
```

### Step 2 – Prepare the Dataset

Place the five source CSV files inside the `data/` folder.

### Step 3 – Load Data into MySQL

Import the five primary tables into MySQL:

- `Customer_Data`
- `Network_Performance`
- `Customer_Experience`
- `Location_Analysis`
- `Usage_Analysis`

### Step 4 – Run SQL Analysis

Open:

```text
sql/airtel_network_analysis.sql
```

Run the queries to perform KPI and business analysis.

### Step 5 – Open Power BI

Open:

```text
powerbi/Airtel_Network_Analytics.pbix
```

### Step 6 – Refresh the Dataset

If required, update the data-source connection and refresh the Power BI dataset.

### Step 7 – Explore the Dashboard

Use the State, City, Network Type, Customer Segment, and Date slicers to interact with the report and navigate between the four dashboard pages.

## Author

**M Pandieswaran**
**Project:** Airtel Network Performance & Customer Experience Analytic
**Industry**:Telecommunication Industry
**Technologies**: MySQL, Power BI, Power Query, DAX
---

## Project Highlights

- 50,000 source records
- 5 primary data tables
- 18 Power BI measures
- 4 interactive dashboard pages
- SQL-based business analysis
- State and city-level analysis
- 4G vs 5G comparison
- Customer experience analysis
- Usage pattern analysis
- Data-driven business recommendations

---

## Conclusion

This project demonstrates an end-to-end **Telecom Data Analytics workflow using SQL and Power BI**. It combines network performance, customer experience, location, and usage data into an interactive analytical solution for identifying performance problems and supporting data-driven telecom decisions.
