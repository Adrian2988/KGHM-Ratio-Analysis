# KGHM-Ratio-Analysis

This project contains a ratio analysis of KGHM Polska Miedź S.A., compared to the 40 largest companies in the mining sector, measured by market capitalization. The project involves the creation of a SQL database in SQL Server Management Studio, exporting the data to Excel, upload files on Onedrive, and then using Excel with Power Query to create an interactive dashboard.

## Project Overview

### 1. SQL Server Database

 - I created a SQL Server database that contains multiple tables related to financial data, such as current assets, liabilities, equity, and more.
 - Each table was exported individually from SQL Server into separate Excel files.
   
### 2. Excel Integration

 - The exported Excel files were then imported into a master Excel workbook.
 - Each table was loaded, cleaned and transformed into a separate sheets to maintain organization and clarity by using Power Query.

### 3. Dashboard Creation

 - The dashboard visualizes the ratio analysis, allowing for comparisons between KGHM and the top 40 global mining companies.
 - The analysis does not require a live connection to the SQL Server database; all data is stored in Excel workbooks hosted on OneDrive. If you wish, you can find the Excel workbooks in the "Exported data" folder.
   
## Data source 

All data used in this project is stored on OneDrive. The Power Query queries within the Excel workbook are connected to these OneDrive files via shared links. These links are publicly accessible, meaning anyone with the link can view the files.

### Accessing the Data
1. **Automatic Connection**: When you open the Excel workbook, Power Query will automatically attempt to connect to the OneDrive data sources using the embedded links. If you have an internet connection, the data should load without any issues.
   
2. **Manual Download (Optional)**: If you encounter any issues with the connection, you can manually download the data files from OneDrive using the provided links and then update the source paths in Power Query.
   
3. **Shared Links**: The data files can be accessed through the following OneDrive links:
   - cash_flow_financing: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714%2135839&authkey=!AIJmerJC9TavwrY
   - cash_flow_invest: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714%2135838&authkey=!AM5pI7gIS75nypE
   - cash_flow_operating: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714%2135837&authkey=!ABOMDsvYhH2ZFEs
   - Current_Assets: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714%2135840&authkey=!APPdHm9In64SMfM
   - Equity: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714%2135841&authkey=!AJJgd1SIU35cDAE
   - Long_term_liabilities: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714%2135842&authkey=!APXgNu54LLe56O8
   - Non_current_assets: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714%2135843&authkey=!ADKzo2lScPX7mFA
   - Short_term_liabilities: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714%2135845&authkey=!AC4JFqGuEhzeADM
   - P&L: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714%2135844&authkey=!AENyGvYYRqOYOKU
   - Top40_Current_Assets: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714!35846&authkey=!AE_I493ZPn0v3f8
   - Top40_Non_Current_Assets: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714!35848&authkey=!AF0GMPh3OgzzS-s
   - Top40_Long_liabilities_and_Equity: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714!35847&authkey=!AGyGHbv-eZkdyKU
   - Top40_Short_Liabilities: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714!35850&authkey=!AGQiyzMZIadZnJQ
   - Top40_P&L_CF: https://onedrive.live.com/download.aspx?resid=8B2A3064FD7C1714!35849&authkey=!AOFj9pVj23_oH2w


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


### Clone the Repository

- [Click here to download the repository as a ZIP file](https://github.com/Adrian2988/KGHM-Ratio-Analysis/archive/refs/heads/main.zip) and extract it to your local machine.
