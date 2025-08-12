# Finance Analytics Tableau Project

## Table of Contents: 
- Problem Statement 
- Data Analysis using MySQL
- Data Cleaning
- Build Dashboard Or a Report using Tableau 
- Tools, Software and Libraries 
- References

## Problem Statement

## KPI’s REQUIREMENT
We need to analyse key indicators for our financial data to gain insights into our business performance. Specifically, we want to calculate the following metrics:
1. Total Revenue (Gross Sales): SUM([Gross Sales])
2. Profit Margin: SUM([Profit]) / SUM([Sales])
3. Cost-to-Sales Ratio (COGS to Sales): SUM([COGS]) / SUM([Sales])
4. Total Discounts: SUM([Discounts])

## CHARTS REQUIREMENT
We would like to visualize various aspects of our financial data to gain insights and understand key trends. We have identified the following requirements for creating charts:
1. Sales and Profit by Country (Bar Chart): For showing the financial performance of different countries
2. Sales and Profit Trend Over Time (Line Graph): To visualizing the trend in sales and profit over time. 
3. Gross Sales vs Discounts (Scatter Plot): To understand the impact of discount bands on sales.
4. Sales by Product and Discount Band (Heat Map): To see the relationship between gross sales and discounts.

- These visualizations will provide comprehensive insights into financial performance and profitability across different segments, countries, and time periods.
- This is a flexible project structure that can be adjusted according to the specific needs of the dataset and business requirements. You can modify the columns and add more complex calculated fields for deeper financial analysis.

## Data Analysis using MySQL
Utilized MySQL for data extraction and calculation of key metrics such as Total Revenue, Profit Margin, Cost-to-Sales Ratio and Total Discount.

<img width="583" height="411" alt="2025-08-11 (61)" src="https://github.com/user-attachments/assets/774477dd-951e-4d12-82e1-0dbf78b25446" /> <img width="356" height="182" alt="2025-08-11 (62)" src="https://github.com/user-attachments/assets/71783f8b-6b4d-408e-948b-021e71396f15" />
<img width="765" height="182" alt="2025-08-11 (63)" src="https://github.com/user-attachments/assets/ad1ef534-e078-4102-baf4-30cba0be6ea5" />
<img width="782" height="614" alt="2025-08-11 (64)" src="https://github.com/user-attachments/assets/49c3384f-be26-4d93-baa5-13be69af7df1" />
<img width="376" height="166" alt="2025-08-11 (65)" src="https://github.com/user-attachments/assets/4eeaa136-c864-4166-a3af-eff3e6f05899" />

## FINANCIAL DATA SQL QUERIES

## A. KPI’s
1. Total Revenue:
 - select sum(Gross_Sales) as Total_Revenue from financial_data;
 - <img width="238" height="122" alt="2025-08-11 (67)" src="https://github.com/user-attachments/assets/2e5d6ecb-386b-4fa6-8310-2718f030ce19" />

2. Profit Margin:
   - select (sum(Profit)/sum(Sales))*100 as Profit_Margin from financial_data;
   - <img width="288" height="123" alt="2025-08-11 (68)" src="https://github.com/user-attachments/assets/08773327-4929-4284-b19f-8d8a5f41cb5c" />

3. Cost-to-Sales Ratio (COGS to Sales):
   - select sum(COGS)/sum(Sales) as Cost_to_Sales_Ratio from financial_data;
   - <img width="218" height="94" alt="2025-08-11 (69)" src="https://github.com/user-attachments/assets/a902cf37-9fa6-4da0-8ad8-fb92ca3c9a56" />

4. Total Discount:
   - select sum(Discounts) as Total_Discount from financial_data;
   - <img width="202" height="117" alt="2025-08-11 (70)" src="https://github.com/user-attachments/assets/342739a0-2b2c-43c6-85fa-5d5b65e19cff" />

## B. Sales by Country
 - select Country, sum(Sales) as Sales, sum(Profit) as Profit from financial_data group by Country order by Country;
 - <img width="393" height="172" alt="2025-08-11 (72)" src="https://github.com/user-attachments/assets/d668f965-7e3c-45bb-9851-d45fe24f750c" />

## C. Sales and Profit Trend over Time
 - select Month_Number, sum(Sales) as Sales, sum(Profit) as Profit From financial_data group by Month_Number order by Month_Number;
 - <img width="275" height="244" alt="2025-08-11 (73)" src="https://github.com/user-attachments/assets/af4396ab-8226-4dcd-abba-eb96ad3bc192" />
 - select Month_Name, sum(Sales) as Sales, sum(Profit) as Profit From financial_data group by Month_Name order by Month_Name;
 - <img width="285" height="248" alt="2025-08-11 (74)" src="https://github.com/user-attachments/assets/d671ddc5-6149-40aa-a05d-0e1b3b7bd46d" />

## D. Sales by Product and Discount Brand
 - select Product, sum(Sales) as Sales from financial_data group by Product order by Product;
 - <img width="185" height="164" alt="2025-08-12" src="https://github.com/user-attachments/assets/d1a203dd-41b7-48dc-a9a2-d6114b44862c" />
 - select Discount_Band, sum(Sales) as Sales from financial_data group by Discount_Band order by Discount_Band;
 - <img width="180" height="129" alt="2025-08-12 (1)" src="https://github.com/user-attachments/assets/9956ca47-fb40-4891-a2a1-4025bf37a458" />
 
## Data Cleaning
Financial data we have in our database is abbreviated and for dashboard we need it in full expanded form. For example: Removing the ‘$’ symbol from each column and Renaming each column name according to the required format to perform the SQL queries.
<img width="1329" height="460" alt="2025-08-11 (59)" src="https://github.com/user-attachments/assets/e1ddd37a-cabe-4da3-aa86-8cf829912afa" />
<img width="1353" height="517" alt="2025-08-11 (60)" src="https://github.com/user-attachments/assets/d8e3d2f1-744c-4563-b257-6f0b24603117" />

## Build Dashboard or a Report using Tableau
Created a comprehensive dashboard in Tableau featuring key metrics and charts, including Total Revenue, Profit Margin, Cost-to-Sales Ratio and Total Discount.

## KPI’s REQUIREMENT
1. Total Revenue (Gross Sales): SUM([Gross Sales])
2. Profit Margin: SUM([Profit]) / SUM([Sales])
3. Cost-to-Sales Ratio (COGS to Sales): SUM([COGS]) / SUM([Sales])
4. Total Discounts: SUM([Discounts])

<img width="793" height="79" alt="2025-08-11 (66)" src="https://github.com/user-attachments/assets/8c674e62-74ca-481e-b318-20fb96573782" />

## DASHBOARD
<img width="1332" height="544" alt="2025-08-11 (66)" src="https://github.com/user-attachments/assets/7cba5879-38de-4397-ada2-cdc6af61dd2f" />


## Tools, Software, and Libraries
- MySQL Workbench 8.0 CE
  - for data analysis and storage
- Tableau Public 2025.2.0
  - for dashboard creation and visualization
- Excel version 2024
  - for initial data exploration and manipulation
## References 
- No Reference



