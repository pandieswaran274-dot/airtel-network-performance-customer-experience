CREATE DATABASE Airtel_Network_Analytics;
USE Airtel_Network_Analytics;

CREATE TABLE Customer_Data (
    Customer_ID VARCHAR(20) PRIMARY KEY,
    Join_Date DATE,
    State VARCHAR(50),
    City VARCHAR(50),
    Network_Type VARCHAR(10),
    Customer_Segment VARCHAR(30),
    Tenure_Years DECIMAL(4,1)
);

CREATE TABLE Network_Performance (
    Customer_ID VARCHAR(20),
    Report_Date DATE,
    State VARCHAR(50),
    City VARCHAR(50),
    Network_Type VARCHAR(10),
    Network_Availability_Pct DECIMAL(5,2),
    Download_Speed_Mbps DECIMAL(10,2),
    Upload_Speed_Mbps DECIMAL(10,2),
    Latency_ms DECIMAL(10,2),
    Call_Drop_Rate_Pct DECIMAL(5,2),
    Network_Downtime_Min INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer_Data(Customer_ID)
);

CREATE TABLE Customer_Experience (
    Customer_ID VARCHAR(20),
    Complaint_Date DATE,
    State VARCHAR(50),
    City VARCHAR(50),
    Customer_Segment VARCHAR(30),
    Complaint_Flag INT,
    Complaint_Category VARCHAR(50),
    Complaint_Status VARCHAR(30),
    Resolution_Time_Hours DECIMAL(10,2),
    Customer_Satisfaction DECIMAL(3,2),
    NPS_Score INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer_Data(Customer_ID)
);

CREATE TABLE Location_Analysis (
    Customer_ID VARCHAR(20),
    Report_Date DATE,
    State VARCHAR(50),
    City VARCHAR(50),
    Network_Type VARCHAR(10),
    Network_Availability_Pct DECIMAL(5,2),
    Download_Speed_Mbps DECIMAL(10,2),
    Call_Drop_Rate_Pct DECIMAL(5,2),
    Latency_ms DECIMAL(10,2),
    Network_Downtime_Min INT,
    Complaint_Flag INT,
    Customer_Satisfaction DECIMAL(3,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customer_Data(Customer_ID)
);

CREATE TABLE Usage_Analysics(
    Customer_ID VARCHAR(20),
    Usage_Date DATE,
    State VARCHAR(50),
    City VARCHAR(50),
    Network_Type VARCHAR(10),
    Customer_Segment VARCHAR(30),
    Tenure_Years DECIMAL(4,1),
    Data_Usage_GB DECIMAL(10,2),
    Voice_Usage_Min INT,
    Customer_Satisfaction DECIMAL(3,2),
    NPS_Score INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer_Data(Customer_ID)
);