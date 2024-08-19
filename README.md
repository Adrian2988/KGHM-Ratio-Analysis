# KGHM-Ratio-Analysis

This project contains a ratio analysis of KGHM Polska Miedź S.A., compared to the 40 largest companies in the mining sector, measured by market capitalization. The project involves the creation of a SQL database in SQL Server Management Studio, exporting the data to Excel, and then using Excel with Power Query to create an interactive dashboard.

## Project Overview

### 1. SQL Server Database

 - I created a SQL Server database that contains multiple tables related to financial data, such as current assets, liabilities, equity, and more.
 - Each table was exported individually from SQL Server into separate Excel files.
   
### 2. Excel Integration

 - The exported Excel files were then imported into a master Excel workbook.
 - Each table was loaded, cleaned and transformed into a separate sheets to maintain organization and clarity by using Power Query.

### 3. Dashboard Creation

 - The dashboard visualizes the ratio analysis, allowing for comparisons between KGHM and the top 40 global mining companies.
 - The analysis does not require a live connection to the SQL Server database; all data is contained within the Excel workbook.

## Installation

### Prerequisites
- Excel with Power Query: Ensure you have Excel installed with Power Query enabled. This functionality is built-in for Excel 2016 and later versions.

### Setup 
1. Download the Repository:
   - Clone or download this repository to your local machine. 

2. Open the Excel File:
   - Open the Ratio Analysis KGHM.xlsx file in Excel.
     
3. Explore Dashboard:
   - Use the dashboard and the data sheets to explore the ratio analysis.
  
### Optional: Viewing the SQL Script
 - SQL Server Management Studio (SSMS):
   - If you wish to review the SQL database structure I created, you can open the provided KGHM Database SQL.sql script in SSMS.
   - This script contains the structure of the database but does not require any further setup unless you want to replicate the process.

### Download the Repository

```bash
https://github.com/Adrian2988/KGHM-Ratio-Analysis/archive/refs/heads/main.zip
