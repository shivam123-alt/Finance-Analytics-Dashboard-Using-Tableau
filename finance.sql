-- Create a database for the Financial Performance 
create database financial;

-- For the further use of the created Database
use financial;

-- Show the whole table
select * from financial_data;

-- Total Reevenue
select sum(Gross_Sales) as Total_Revenue from financial_data;

-- Profit Margin
select (sum(Profit)/sum(Sales))*100 as Profit_Margin from financial_data;

-- Cost to Sales Ratio
select  sum(COGS)/sum(Sales) as Cost_to_Sales_Ratio from financial_data;

-- Total Discount
select sum(Discounts) as Total_Discount from financial_data;

-- Sales and Profit by Country
select Country, sum(Sales) as Sales, sum(Profit) as Profit from financial_data group by Country order by Country;

-- Sales and Profit Trend over Time
select Month_Number,sum(Sales) as Sales, sum(Profit) as Profit From financial_data group by Month_Number order by Month_Number;

select Month_Name, sum(Sales) as Sales, sum(Profit) as Profit From financial_data group by Month_Name order by Month_Name;
   
-- Sales by Product and Discount Brands

select Product,sum(Sales) as Sales from financial_data group by Product order by Product;

select Discount_Band,sum(Sales) as Sales from financial_data group by Discount_Band order by Discount_Band;