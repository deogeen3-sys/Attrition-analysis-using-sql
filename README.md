# Attrition-analysis-using-sql

## 📌 Overview
This project performs **Funnel Analysis** on user journey data to understand how users move through different stages of an e-commerce or product flow.  
The analysis is implemented using **Python (Pandas, Matplotlib, Plotly, Seaborn,plotly)** inside a Jupyter Notebook.


## 🎯 Problem Statement
The goal of this project is to analyze user behavior across different funnel stages:

- Homepage → Product Page → Cart → Checkout → Purchase

## 🧠 Project Structure 
#### Cleaning and Transform data 

1. Data types
2. Data Consistency Stage
3. Null values
4. Outliers
5. Create new columns (Date , Time , Total Sessions Per User, Purchase Counts Per User,Time Segments)


#### Analysis and Visualization
- Purchase vs Non-Purchase Sessions
  
![Purchase vs Non-Purchase](Charts/PurchasevsNon-PurchaseSessions.png)
###### 20% only the Conversion rate

- 'Distribution of Purchase Counts Per User
  
![Purchase vs Non-Purchase](Charts/Distribution-of-Purchase-Counts-Per-User.png)

- Distribution of Total Session Per User
  
![Purchase vs Non-Purchase](Charts/Distribution-of-Total-Session-Per-User.png)

- Journey By Session
  
![Purchase vs Non-Purchase](Charts/Journey-By-Session.png)

- Average Time on Each Page
  
![Purchase vs Non-Purchase](Charts/Average-Time-on-Each-Page.png)   

-  Purchases by Referral Source
 
![Purchase vs Non-Purchase](Charts/Purchases-by-Referral-Source.png)

-  Purchases by Country
  
![Purchase vs Non-Purchase](Charts/Purchases-by-Country.png)

-Funnel Analysis Stages

![Purchase vs Non-Purchase](Charts/Funnel-Analysis-Stages.png)

-E-commerce Funnel Analysis

![Purchase vs Non-Purchase](Charts/E-commerce-Funnel-Analysis.png)
###### we need to check if the problem of cart stage because of any of these reasons
###### 1) the way informations be showed in diffrent type of devices
###### 2) something related to specific country or specific culture
###### 3) something related to time segment like bad night mode or another psychological reason

-Conversion Rate Between Funnel Stages

![Purchase vs Non-Purchase](Charts/Conversion-Rate-Between-Funnel-Stages.png)

-Funnel Analysis by Device Type

![Purchase vs Non-Purchase](Charts/Funnel-Analysis-by-Device-Type.png)

-Funnel Analysis by Countries

![Purchase vs Non-Purchase](Charts/Funnel-Analysis-by-Countries.png)

-Funnel Analysis by Time Segment

![Purchase vs Non-Purchase](Charts/Funnel-Analysis-by-Time-Segment.png)

#### then the problem may relate to the price or the product presentation or missing trust signals

## 🔍 Recommendations

1. Competitor price analysis in the market  
2. A/B testing for the “Add to Cart” button  
3. Reviewing product images and descriptions for optimization  
