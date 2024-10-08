USE [master]
GO
/****** Object:  Database [KGHM]    Script Date: 19.08.2024 14:56:20 ******/
CREATE DATABASE [KGHM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KGHM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS02\MSSQL\DATA\KGHM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KGHM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS02\MSSQL\DATA\KGHM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [KGHM] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KGHM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KGHM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KGHM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KGHM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KGHM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KGHM] SET ARITHABORT OFF 
GO
ALTER DATABASE [KGHM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KGHM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KGHM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KGHM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KGHM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KGHM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KGHM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KGHM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KGHM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KGHM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KGHM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KGHM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KGHM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KGHM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KGHM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KGHM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KGHM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KGHM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KGHM] SET  MULTI_USER 
GO
ALTER DATABASE [KGHM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KGHM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KGHM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KGHM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KGHM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KGHM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KGHM] SET QUERY_STORE = ON
GO
ALTER DATABASE [KGHM] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [KGHM]
GO
/****** Object:  Table [dbo].[Cash_Flows_Financing]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cash_Flows_Financing](
	[Year] [int] NULL,
	[Inflows_From_Borrowings] [decimal](18, 0) NULL,
	[Other_Inflows] [decimal](18, 0) NULL,
	[Total_Inflows] [decimal](18, 0) NULL,
	[Payments_From_Borrowings] [decimal](18, 0) NULL,
	[Dividends_Paid_To_Equity_Holders] [decimal](18, 0) NULL,
	[Interest_And_Other_Borrowing_Costs_Paid] [decimal](18, 0) NULL,
	[Other_Payments] [decimal](18, 0) NULL,
	[Total_Payments] [decimal](18, 0) NULL,
	[Net_Cash_Flows_From_Financing_Activities] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cash_Flows_From_Operating_Activities]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cash_Flows_From_Operating_Activities](
	[Year] [int] NOT NULL,
	[Profit_Before_Tax] [decimal](18, 0) NULL,
	[Depreciation_Included_In_Profit] [decimal](18, 0) NULL,
	[Share_Of_Losses_Of_Joint_Ventures_Accounted_For_Using_The_Equity_Method] [decimal](18, 0) NULL,
	[Gain_On_Reversal_Of_Impairment_Of_Loans_Granted_To_Joint_Venture] [decimal](18, 0) NULL,
	[Interest_On_Loans_Granted_To_Joint_Ventures] [decimal](18, 0) NULL,
	[Other_Interest] [decimal](18, 0) NULL,
	[Impairment_Losses_On_Non_Current_Assets] [decimal](18, 0) NULL,
	[Gains_On_Disposal_Of_Non_Current_Assets] [decimal](18, 0) NULL,
	[Gain_On_Disposal_Of_Subsidiaries] [decimal](18, 0) NULL,
	[Foreign_Exchange_Differences_From] [decimal](18, 0) NULL,
	[From_Investment_Activities_And_Valuation_Of_Cash_Holdings] [decimal](18, 0) NULL,
	[From_Financial_Activities] [decimal](18, 0) NULL,
	[Change_In_Provisions_For_Mine_Closure_Employee_Benefits_And_Other_Provisions] [decimal](18, 0) NULL,
	[Change_In_Other_Receivables_And_Liabilities_Not_Related_To_Working_Capital] [decimal](18, 0) NULL,
	[Change_In_Derivative_Assets_And_Liabilities] [decimal](18, 0) NULL,
	[Reclassification_Of_Other_Comprehensive_Income_To_Profit_Or_Loss_On_Realisation_Of_Hedging_Derivatives] [decimal](18, 0) NULL,
	[Other_Adjustments] [decimal](18, 0) NULL,
	[Total_Exclusions_Of_Revenues_And_Costs] [decimal](18, 0) NULL,
	[Income_Tax_Paid] [decimal](18, 0) NULL,
	[Change_In_Working_Capital_including] [decimal](18, 0) NULL,
	[Change_In_Trade_Liabilities_Transferred_To_Factoring] [decimal](18, 0) NULL,
	[Net_Cash_Flows_From_Operating_Activities] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cash_Flows_Investing]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cash_Flows_Investing](
	[Year] [int] NOT NULL,
	[Expenditures_Related_To_Mining_And_Metallurgical_Assets] [decimal](18, 0) NULL,
	[Expenditures_On_Other_Tangible_And_Intangible_Non_Current_Assets] [decimal](18, 0) NULL,
	[Acquisition_Of_Interests_In_Joint_Ventures] [decimal](18, 0) NULL,
	[Other_Payments] [decimal](18, 0) NULL,
	[Total_Payments] [decimal](18, 0) NULL,
	[Inflows] [decimal](18, 0) NULL,
	[Cash_Flows_From_Investing_Activities] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Current_Assets]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Current_Assets](
	[Year] [int] NOT NULL,
	[Inventories] [decimal](18, 0) NULL,
	[Trade_Receivables_Including] [decimal](18, 0) NULL,
	[Trade_Receivables_Fair_Value_Through_Profit_or_Loss] [decimal](18, 0) NULL,
	[Tax_Receivables] [decimal](18, 0) NULL,
	[Derivative_Financial_Instruments] [decimal](18, 0) NULL,
	[Commitments_to_Joint_Ventures_Loans_Granted] [decimal](18, 0) NULL,
	[Other_Financial_Assets] [decimal](18, 0) NULL,
	[Other_Non_Financial_Assets] [decimal](18, 0) NULL,
	[Cash_and_Cash_Equivalents] [decimal](18, 0) NULL,
	[Assets_Held_for_Sale_Disposal_Group] [decimal](18, 0) NULL,
	[Current_Assets] [decimal](18, 0) NULL,
	[TOTAL_ASSETS] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equity]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equity](
	[Year] [int] NOT NULL,
	[Share_Capital] [decimal](18, 0) NULL,
	[Capital_Reserve_from_Financial_Instruments_Valuation] [decimal](18, 0) NULL,
	[Accumulated_Other_Comprehensive_Income_Excluding_Financial_Instruments_Valuation] [decimal](18, 0) NULL,
	[Retained_Earnings] [decimal](18, 0) NULL,
	[Equity_Attributable_to_Owners_of_the_Parent] [decimal](18, 0) NULL,
	[Non_controlling_Interests_Equity] [decimal](18, 0) NULL,
	[Equity] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Long_Term_Liabilities]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Long_Term_Liabilities](
	[Year] [int] NOT NULL,
	[Liabilities_from_Loans_Leases_and_Debt_Securities] [decimal](18, 0) NULL,
	[Derivative_Financial_Instruments] [decimal](18, 0) NULL,
	[Employee_Benefit_Liabilities] [decimal](18, 0) NULL,
	[Provisions_for_Mine_Closure_and_Other_Technological_Facilities_Costs] [decimal](18, 0) NULL,
	[Deferred_Income_Tax_Liabilities] [decimal](18, 0) NULL,
	[Other_Liabilities] [decimal](18, 0) NULL,
	[Long_Term_Liabilities] [decimal](18, 0) NULL,
	[Long_and_Short_Term_Liabilities] [decimal](18, 0) NULL,
	[Total_Liabilities_and_Equity] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Non_Current_Assets]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Non_Current_Assets](
	[Year] [int] NOT NULL,
	[Mining_and_Metallurgical_Tangible_fixed_Assets] [decimal](18, 0) NULL,
	[Mining_and_Metallurgical_Intangible_Assets] [decimal](18, 0) NULL,
	[Mining_and_Metallurgical_Tangible_and_Intangible_Assets] [decimal](18, 0) NULL,
	[Other_Tangible_Fixed_Assets] [decimal](18, 0) NULL,
	[Other_Intangible_Assets] [decimal](18, 0) NULL,
	[Other_Tangible_and_Intangible_Assets] [decimal](18, 0) NULL,
	[Total_Commitment_to_Joint_Ventures] [decimal](18, 0) NULL,
	[Total_Financial_Instruments] [decimal](18, 0) NULL,
	[Deferred_Income_Tax_Assets] [decimal](18, 0) NULL,
	[Other_Non_Financial_Assets] [decimal](18, 0) NULL,
	[Total_Non_Current_Assets] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profit_and_Loss_Statement]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profit_and_Loss_Statement](
	[Year] [int] NOT NULL,
	[Revenue_From_Contracts_With_Customers] [decimal](18, 0) NULL,
	[Cost_of_Goods_Sold] [decimal](18, 0) NULL,
	[Gross_Profit_From_Sales] [decimal](18, 0) NULL,
	[Selling_And_Administrative_Expenses] [decimal](18, 0) NULL,
	[Net_Profit_From_Sales] [decimal](18, 0) NULL,
	[Results_From_Joint_Ventures] [decimal](18, 0) NULL,
	[Other_Operating_Revenues] [decimal](18, 0) NULL,
	[Other_Operating_Expenses] [decimal](18, 0) NULL,
	[Financial_Revenues] [decimal](18, 0) NULL,
	[Financial_Expenses] [decimal](18, 0) NULL,
	[Profit_Before_Tax] [decimal](18, 0) NULL,
	[Income_Tax] [decimal](18, 0) NULL,
	[Net_Profit] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Short_Term_Liabilities]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Short_Term_Liabilities](
	[Year] [int] NOT NULL,
	[Liabilities_From_Loans_Leases_and_Debt_Securities] [decimal](18, 0) NULL,
	[Derivative_Financial_Instruments] [decimal](18, 0) NULL,
	[Liabilities_To_Suppliers_and_Similar] [decimal](18, 0) NULL,
	[Employee_Benefit_Liabilities] [decimal](18, 0) NULL,
	[Tax_Liabilities] [decimal](18, 0) NULL,
	[Provisions_For_Liabilities_and_Other_Charges] [decimal](18, 0) NULL,
	[Other_Liabilities] [decimal](18, 0) NULL,
	[Liabilities_Associated_With_Assets_Held_For_Sale] [decimal](18, 0) NULL,
	[Liabilities_Related_To_Disposal_Groups] [decimal](18, 0) NULL,
	[Short_Term_Liabilities] [decimal](18, 0) NULL,
	[Long_and_Short_Term_Liabilities] [decimal](18, 0) NULL,
	[Total_Liabilities_and_Equity] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Top40_Mining_Comp_Long_Liabilities]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top40_Mining_Comp_Long_Liabilities](
	[Year] [int] NULL,
	[Borrowings] [decimal](18, 0) NULL,
	[Other] [decimal](18, 0) NULL,
	[Total_non_current_liabilities] [decimal](18, 0) NULL,
	[Total_liabilities] [decimal](18, 0) NULL,
	[Equity] [decimal](18, 0) NULL,
	[Equity_and_Liabilities] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Top40_Mining_Comp_PL_and_CF]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top40_Mining_Comp_PL_and_CF](
	[Year] [int] NULL,
	[Revenue] [decimal](18, 0) NULL,
	[Trading_revenue] [decimal](18, 0) NULL,
	[Operating_expenses] [decimal](18, 0) NULL,
	[Other_operating_expenses] [decimal](18, 0) NULL,
	[EBITDA] [decimal](18, 0) NULL,
	[Impaiment_charges] [decimal](18, 0) NULL,
	[Deprecation_and_amortisation] [decimal](18, 0) NULL,
	[Net_finance_cost] [decimal](18, 0) NULL,
	[PBT] [decimal](18, 0) NULL,
	[Income_tax_expense] [decimal](18, 0) NULL,
	[Net_profit] [decimal](18, 0) NULL,
	[Net_operating_cash_flows] [decimal](18, 0) NULL,
	[EBIT] [decimal](18, 0) NULL,
	[estimated_Selling_And_Administrative_Expenses] [decimal](18, 0) NULL,
	[estimated_cost_of_goods_sold] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Top40_Mining_Comp_Short_Liabilities]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top40_Mining_Comp_Short_Liabilities](
	[Year] [int] NULL,
	[Accounts_payable] [decimal](18, 0) NULL,
	[Borrowings] [decimal](18, 0) NULL,
	[Other] [decimal](18, 0) NULL,
	[Total_current_liabilities] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Top40_Mining_Compan_Current_Assets]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top40_Mining_Compan_Current_Assets](
	[Year] [int] NULL,
	[Cash] [decimal](18, 0) NULL,
	[Inventories] [decimal](18, 0) NULL,
	[Account_receivable] [decimal](18, 0) NULL,
	[Other] [decimal](18, 0) NULL,
	[Total_current_assets] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Top40_Mining_Compan_Non_Current_Assets]    Script Date: 19.08.2024 14:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top40_Mining_Compan_Non_Current_Assets](
	[Year] [int] NULL,
	[Property_plant_and_equipment] [decimal](18, 0) NULL,
	[Goodwill_and_other_intangibles] [decimal](18, 0) NULL,
	[Investment_in_assosiates_and_joint_ventures] [decimal](18, 0) NULL,
	[Other_investments_and_loang_granted] [decimal](18, 0) NULL,
	[Other] [decimal](18, 0) NULL,
	[Total_non_current_assets] [decimal](18, 0) NULL,
	[Total_assets] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Cash_Flows_Financing] ([Year], [Inflows_From_Borrowings], [Other_Inflows], [Total_Inflows], [Payments_From_Borrowings], [Dividends_Paid_To_Equity_Holders], [Interest_And_Other_Borrowing_Costs_Paid], [Other_Payments], [Total_Payments], [Net_Cash_Flows_From_Financing_Activities]) VALUES (2017, CAST(2442 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), CAST(2448 AS Decimal(18, 0)), CAST(-2072 AS Decimal(18, 0)), CAST(-200 AS Decimal(18, 0)), CAST(-157 AS Decimal(18, 0)), CAST(-1 AS Decimal(18, 0)), CAST(-2430 AS Decimal(18, 0)), CAST(18 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_Financing] ([Year], [Inflows_From_Borrowings], [Other_Inflows], [Total_Inflows], [Payments_From_Borrowings], [Dividends_Paid_To_Equity_Holders], [Interest_And_Other_Borrowing_Costs_Paid], [Other_Payments], [Total_Payments], [Net_Cash_Flows_From_Financing_Activities]) VALUES (2018, CAST(2276 AS Decimal(18, 0)), CAST(19 AS Decimal(18, 0)), CAST(2295 AS Decimal(18, 0)), CAST(-2110 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-119 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-2229 AS Decimal(18, 0)), CAST(66 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_Financing] ([Year], [Inflows_From_Borrowings], [Other_Inflows], [Total_Inflows], [Payments_From_Borrowings], [Dividends_Paid_To_Equity_Holders], [Interest_And_Other_Borrowing_Costs_Paid], [Other_Payments], [Total_Payments], [Net_Cash_Flows_From_Financing_Activities]) VALUES (2019, CAST(6730 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(6730 AS Decimal(18, 0)), CAST(-7798 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-239 AS Decimal(18, 0)), CAST(-1 AS Decimal(18, 0)), CAST(-8038 AS Decimal(18, 0)), CAST(-1308 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_Financing] ([Year], [Inflows_From_Borrowings], [Other_Inflows], [Total_Inflows], [Payments_From_Borrowings], [Dividends_Paid_To_Equity_Holders], [Interest_And_Other_Borrowing_Costs_Paid], [Other_Payments], [Total_Payments], [Net_Cash_Flows_From_Financing_Activities]) VALUES (2020, CAST(4247 AS Decimal(18, 0)), CAST(52 AS Decimal(18, 0)), CAST(4299 AS Decimal(18, 0)), CAST(-4610 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-177 AS Decimal(18, 0)), CAST(-60 AS Decimal(18, 0)), CAST(-4847 AS Decimal(18, 0)), CAST(-548 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_Financing] ([Year], [Inflows_From_Borrowings], [Other_Inflows], [Total_Inflows], [Payments_From_Borrowings], [Dividends_Paid_To_Equity_Holders], [Interest_And_Other_Borrowing_Costs_Paid], [Other_Payments], [Total_Payments], [Net_Cash_Flows_From_Financing_Activities]) VALUES (2021, CAST(358 AS Decimal(18, 0)), CAST(36 AS Decimal(18, 0)), CAST(394 AS Decimal(18, 0)), CAST(-2145 AS Decimal(18, 0)), CAST(-300 AS Decimal(18, 0)), CAST(-94 AS Decimal(18, 0)), CAST(-55 AS Decimal(18, 0)), CAST(-2594 AS Decimal(18, 0)), CAST(-2200 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_Financing] ([Year], [Inflows_From_Borrowings], [Other_Inflows], [Total_Inflows], [Payments_From_Borrowings], [Dividends_Paid_To_Equity_Holders], [Interest_And_Other_Borrowing_Costs_Paid], [Other_Payments], [Total_Payments], [Net_Cash_Flows_From_Financing_Activities]) VALUES (2022, CAST(677 AS Decimal(18, 0)), CAST(130 AS Decimal(18, 0)), CAST(807 AS Decimal(18, 0)), CAST(-484 AS Decimal(18, 0)), CAST(-600 AS Decimal(18, 0)), CAST(-92 AS Decimal(18, 0)), CAST(-77 AS Decimal(18, 0)), CAST(-1253 AS Decimal(18, 0)), CAST(-446 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_Financing] ([Year], [Inflows_From_Borrowings], [Other_Inflows], [Total_Inflows], [Payments_From_Borrowings], [Dividends_Paid_To_Equity_Holders], [Interest_And_Other_Borrowing_Costs_Paid], [Other_Payments], [Total_Payments], [Net_Cash_Flows_From_Financing_Activities]) VALUES (2023, CAST(1673 AS Decimal(18, 0)), CAST(70 AS Decimal(18, 0)), CAST(1743 AS Decimal(18, 0)), CAST(-2134 AS Decimal(18, 0)), CAST(-200 AS Decimal(18, 0)), CAST(-81 AS Decimal(18, 0)), CAST(-75 AS Decimal(18, 0)), CAST(-2490 AS Decimal(18, 0)), CAST(-747 AS Decimal(18, 0)))
GO
INSERT [dbo].[Cash_Flows_From_Operating_Activities] ([Year], [Profit_Before_Tax], [Depreciation_Included_In_Profit], [Share_Of_Losses_Of_Joint_Ventures_Accounted_For_Using_The_Equity_Method], [Gain_On_Reversal_Of_Impairment_Of_Loans_Granted_To_Joint_Venture], [Interest_On_Loans_Granted_To_Joint_Ventures], [Other_Interest], [Impairment_Losses_On_Non_Current_Assets], [Gains_On_Disposal_Of_Non_Current_Assets], [Gain_On_Disposal_Of_Subsidiaries], [Foreign_Exchange_Differences_From], [From_Investment_Activities_And_Valuation_Of_Cash_Holdings], [From_Financial_Activities], [Change_In_Provisions_For_Mine_Closure_Employee_Benefits_And_Other_Provisions], [Change_In_Other_Receivables_And_Liabilities_Not_Related_To_Working_Capital], [Change_In_Derivative_Assets_And_Liabilities], [Reclassification_Of_Other_Comprehensive_Income_To_Profit_Or_Loss_On_Realisation_Of_Hedging_Derivatives], [Other_Adjustments], [Total_Exclusions_Of_Revenues_And_Costs], [Income_Tax_Paid], [Change_In_Working_Capital_including], [Change_In_Trade_Liabilities_Transferred_To_Factoring], [Net_Cash_Flows_From_Operating_Activities]) VALUES (2017, CAST(2299 AS Decimal(18, 0)), CAST(1609 AS Decimal(18, 0)), CAST(474 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-319 AS Decimal(18, 0)), CAST(148 AS Decimal(18, 0)), CAST(503 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(210 AS Decimal(18, 0)), CAST(1461 AS Decimal(18, 0)), CAST(-1251 AS Decimal(18, 0)), CAST(-25 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(202 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-68 AS Decimal(18, 0)), CAST(2734 AS Decimal(18, 0)), CAST(-983 AS Decimal(18, 0)), CAST(-996 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(3054 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_From_Operating_Activities] ([Year], [Profit_Before_Tax], [Depreciation_Included_In_Profit], [Share_Of_Losses_Of_Joint_Ventures_Accounted_For_Using_The_Equity_Method], [Gain_On_Reversal_Of_Impairment_Of_Loans_Granted_To_Joint_Venture], [Interest_On_Loans_Granted_To_Joint_Ventures], [Other_Interest], [Impairment_Losses_On_Non_Current_Assets], [Gains_On_Disposal_Of_Non_Current_Assets], [Gain_On_Disposal_Of_Subsidiaries], [Foreign_Exchange_Differences_From], [From_Investment_Activities_And_Valuation_Of_Cash_Holdings], [From_Financial_Activities], [Change_In_Provisions_For_Mine_Closure_Employee_Benefits_And_Other_Provisions], [Change_In_Other_Receivables_And_Liabilities_Not_Related_To_Working_Capital], [Change_In_Derivative_Assets_And_Liabilities], [Reclassification_Of_Other_Comprehensive_Income_To_Profit_Or_Loss_On_Realisation_Of_Hedging_Derivatives], [Other_Adjustments], [Total_Exclusions_Of_Revenues_And_Costs], [Income_Tax_Paid], [Change_In_Working_Capital_including], [Change_In_Trade_Liabilities_Transferred_To_Factoring], [Net_Cash_Flows_From_Operating_Activities]) VALUES (2018, CAST(2466 AS Decimal(18, 0)), CAST(1796 AS Decimal(18, 0)), CAST(662 AS Decimal(18, 0)), CAST(-733 AS Decimal(18, 0)), CAST(-257 AS Decimal(18, 0)), CAST(109 AS Decimal(18, 0)), CAST(69 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-36 AS Decimal(18, 0)), CAST(593 AS Decimal(18, 0)), CAST(-629 AS Decimal(18, 0)), CAST(244 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-121 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(62 AS Decimal(18, 0)), CAST(1795 AS Decimal(18, 0)), CAST(-802 AS Decimal(18, 0)), CAST(367 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(3826 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_From_Operating_Activities] ([Year], [Profit_Before_Tax], [Depreciation_Included_In_Profit], [Share_Of_Losses_Of_Joint_Ventures_Accounted_For_Using_The_Equity_Method], [Gain_On_Reversal_Of_Impairment_Of_Loans_Granted_To_Joint_Venture], [Interest_On_Loans_Granted_To_Joint_Ventures], [Other_Interest], [Impairment_Losses_On_Non_Current_Assets], [Gains_On_Disposal_Of_Non_Current_Assets], [Gain_On_Disposal_Of_Subsidiaries], [Foreign_Exchange_Differences_From], [From_Investment_Activities_And_Valuation_Of_Cash_Holdings], [From_Financial_Activities], [Change_In_Provisions_For_Mine_Closure_Employee_Benefits_And_Other_Provisions], [Change_In_Other_Receivables_And_Liabilities_Not_Related_To_Working_Capital], [Change_In_Derivative_Assets_And_Liabilities], [Reclassification_Of_Other_Comprehensive_Income_To_Profit_Or_Loss_On_Realisation_Of_Hedging_Derivatives], [Other_Adjustments], [Total_Exclusions_Of_Revenues_And_Costs], [Income_Tax_Paid], [Change_In_Working_Capital_including], [Change_In_Trade_Liabilities_Transferred_To_Factoring], [Net_Cash_Flows_From_Operating_Activities]) VALUES (2019, CAST(2122 AS Decimal(18, 0)), CAST(1920 AS Decimal(18, 0)), CAST(438 AS Decimal(18, 0)), CAST(-106 AS Decimal(18, 0)), CAST(-341 AS Decimal(18, 0)), CAST(244 AS Decimal(18, 0)), CAST(51 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(184 AS Decimal(18, 0)), CAST(-29 AS Decimal(18, 0)), CAST(213 AS Decimal(18, 0)), CAST(114 AS Decimal(18, 0)), CAST(-176 AS Decimal(18, 0)), CAST(-31 AS Decimal(18, 0)), CAST(-86 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(2213 AS Decimal(18, 0)), CAST(-410 AS Decimal(18, 0)), CAST(1123 AS Decimal(18, 0)), CAST(595 AS Decimal(18, 0)), CAST(5048 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_From_Operating_Activities] ([Year], [Profit_Before_Tax], [Depreciation_Included_In_Profit], [Share_Of_Losses_Of_Joint_Ventures_Accounted_For_Using_The_Equity_Method], [Gain_On_Reversal_Of_Impairment_Of_Loans_Granted_To_Joint_Venture], [Interest_On_Loans_Granted_To_Joint_Ventures], [Other_Interest], [Impairment_Losses_On_Non_Current_Assets], [Gains_On_Disposal_Of_Non_Current_Assets], [Gain_On_Disposal_Of_Subsidiaries], [Foreign_Exchange_Differences_From], [From_Investment_Activities_And_Valuation_Of_Cash_Holdings], [From_Financial_Activities], [Change_In_Provisions_For_Mine_Closure_Employee_Benefits_And_Other_Provisions], [Change_In_Other_Receivables_And_Liabilities_Not_Related_To_Working_Capital], [Change_In_Derivative_Assets_And_Liabilities], [Reclassification_Of_Other_Comprehensive_Income_To_Profit_Or_Loss_On_Realisation_Of_Hedging_Derivatives], [Other_Adjustments], [Total_Exclusions_Of_Revenues_And_Costs], [Income_Tax_Paid], [Change_In_Working_Capital_including], [Change_In_Trade_Liabilities_Transferred_To_Factoring], [Net_Cash_Flows_From_Operating_Activities]) VALUES (2020, CAST(2756 AS Decimal(18, 0)), CAST(1963 AS Decimal(18, 0)), CAST(204 AS Decimal(18, 0)), CAST(-74 AS Decimal(18, 0)), CAST(-377 AS Decimal(18, 0)), CAST(159 AS Decimal(18, 0)), CAST(239 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-101 AS Decimal(18, 0)), CAST(87 AS Decimal(18, 0)), CAST(-188 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(584 AS Decimal(18, 0)), CAST(-171 AS Decimal(18, 0)), CAST(-42 AS Decimal(18, 0)), CAST(11 AS Decimal(18, 0)), CAST(2395 AS Decimal(18, 0)), CAST(-667 AS Decimal(18, 0)), CAST(1172 AS Decimal(18, 0)), CAST(652 AS Decimal(18, 0)), CAST(5656 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_From_Operating_Activities] ([Year], [Profit_Before_Tax], [Depreciation_Included_In_Profit], [Share_Of_Losses_Of_Joint_Ventures_Accounted_For_Using_The_Equity_Method], [Gain_On_Reversal_Of_Impairment_Of_Loans_Granted_To_Joint_Venture], [Interest_On_Loans_Granted_To_Joint_Ventures], [Other_Interest], [Impairment_Losses_On_Non_Current_Assets], [Gains_On_Disposal_Of_Non_Current_Assets], [Gain_On_Disposal_Of_Subsidiaries], [Foreign_Exchange_Differences_From], [From_Investment_Activities_And_Valuation_Of_Cash_Holdings], [From_Financial_Activities], [Change_In_Provisions_For_Mine_Closure_Employee_Benefits_And_Other_Provisions], [Change_In_Other_Receivables_And_Liabilities_Not_Related_To_Working_Capital], [Change_In_Derivative_Assets_And_Liabilities], [Reclassification_Of_Other_Comprehensive_Income_To_Profit_Or_Loss_On_Realisation_Of_Hedging_Derivatives], [Other_Adjustments], [Total_Exclusions_Of_Revenues_And_Costs], [Income_Tax_Paid], [Change_In_Working_Capital_including], [Change_In_Trade_Liabilities_Transferred_To_Factoring], [Net_Cash_Flows_From_Operating_Activities]) VALUES (2021, CAST(7824 AS Decimal(18, 0)), CAST(2123 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-2380 AS Decimal(18, 0)), CAST(-494 AS Decimal(18, 0)), CAST(120 AS Decimal(18, 0)), CAST(334 AS Decimal(18, 0)), CAST(-58 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-446 AS Decimal(18, 0)), CAST(-744 AS Decimal(18, 0)), CAST(298 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), CAST(610 AS Decimal(18, 0)), CAST(-1921 AS Decimal(18, 0)), CAST(2030 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), CAST(-51 AS Decimal(18, 0)), CAST(-740 AS Decimal(18, 0)), CAST(-2767 AS Decimal(18, 0)), CAST(-1114 AS Decimal(18, 0)), CAST(4266 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_From_Operating_Activities] ([Year], [Profit_Before_Tax], [Depreciation_Included_In_Profit], [Share_Of_Losses_Of_Joint_Ventures_Accounted_For_Using_The_Equity_Method], [Gain_On_Reversal_Of_Impairment_Of_Loans_Granted_To_Joint_Venture], [Interest_On_Loans_Granted_To_Joint_Ventures], [Other_Interest], [Impairment_Losses_On_Non_Current_Assets], [Gains_On_Disposal_Of_Non_Current_Assets], [Gain_On_Disposal_Of_Subsidiaries], [Foreign_Exchange_Differences_From], [From_Investment_Activities_And_Valuation_Of_Cash_Holdings], [From_Financial_Activities], [Change_In_Provisions_For_Mine_Closure_Employee_Benefits_And_Other_Provisions], [Change_In_Other_Receivables_And_Liabilities_Not_Related_To_Working_Capital], [Change_In_Derivative_Assets_And_Liabilities], [Reclassification_Of_Other_Comprehensive_Income_To_Profit_Or_Loss_On_Realisation_Of_Hedging_Derivatives], [Other_Adjustments], [Total_Exclusions_Of_Revenues_And_Costs], [Income_Tax_Paid], [Change_In_Working_Capital_including], [Change_In_Trade_Liabilities_Transferred_To_Factoring], [Net_Cash_Flows_From_Operating_Activities]) VALUES (2022, CAST(6489 AS Decimal(18, 0)), CAST(2239 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-873 AS Decimal(18, 0)), CAST(-582 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), CAST(144 AS Decimal(18, 0)), CAST(-108 AS Decimal(18, 0)), CAST(-180 AS Decimal(18, 0)), CAST(-661 AS Decimal(18, 0)), CAST(-838 AS Decimal(18, 0)), CAST(177 AS Decimal(18, 0)), CAST(-56 AS Decimal(18, 0)), CAST(-133 AS Decimal(18, 0)), CAST(-353 AS Decimal(18, 0)), CAST(492 AS Decimal(18, 0)), CAST(29 AS Decimal(18, 0)), CAST(-12 AS Decimal(18, 0)), CAST(-1696 AS Decimal(18, 0)), CAST(-2317 AS Decimal(18, 0)), CAST(-77 AS Decimal(18, 0)), CAST(2464 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_From_Operating_Activities] ([Year], [Profit_Before_Tax], [Depreciation_Included_In_Profit], [Share_Of_Losses_Of_Joint_Ventures_Accounted_For_Using_The_Equity_Method], [Gain_On_Reversal_Of_Impairment_Of_Loans_Granted_To_Joint_Venture], [Interest_On_Loans_Granted_To_Joint_Ventures], [Other_Interest], [Impairment_Losses_On_Non_Current_Assets], [Gains_On_Disposal_Of_Non_Current_Assets], [Gain_On_Disposal_Of_Subsidiaries], [Foreign_Exchange_Differences_From], [From_Investment_Activities_And_Valuation_Of_Cash_Holdings], [From_Financial_Activities], [Change_In_Provisions_For_Mine_Closure_Employee_Benefits_And_Other_Provisions], [Change_In_Other_Receivables_And_Liabilities_Not_Related_To_Working_Capital], [Change_In_Derivative_Assets_And_Liabilities], [Reclassification_Of_Other_Comprehensive_Income_To_Profit_Or_Loss_On_Realisation_Of_Hedging_Derivatives], [Other_Adjustments], [Total_Exclusions_Of_Revenues_And_Costs], [Income_Tax_Paid], [Change_In_Working_Capital_including], [Change_In_Trade_Liabilities_Transferred_To_Factoring], [Net_Cash_Flows_From_Operating_Activities]) VALUES (2023, CAST(-3600 AS Decimal(18, 0)), CAST(2311 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-101 AS Decimal(18, 0)), CAST(-597 AS Decimal(18, 0)), CAST(97 AS Decimal(18, 0)), CAST(3980 AS Decimal(18, 0)), CAST(21 AS Decimal(18, 0)), CAST(-1 AS Decimal(18, 0)), CAST(958 AS Decimal(18, 0)), CAST(1314 AS Decimal(18, 0)), CAST(-356 AS Decimal(18, 0)), CAST(464 AS Decimal(18, 0)), CAST(-222 AS Decimal(18, 0)), CAST(906 AS Decimal(18, 0)), CAST(-285 AS Decimal(18, 0)), CAST(31 AS Decimal(18, 0)), CAST(7562 AS Decimal(18, 0)), CAST(-1646 AS Decimal(18, 0)), CAST(3735 AS Decimal(18, 0)), CAST(2868 AS Decimal(18, 0)), CAST(6051 AS Decimal(18, 0)))
GO
INSERT [dbo].[Cash_Flows_Investing] ([Year], [Expenditures_Related_To_Mining_And_Metallurgical_Assets], [Expenditures_On_Other_Tangible_And_Intangible_Non_Current_Assets], [Acquisition_Of_Interests_In_Joint_Ventures], [Other_Payments], [Total_Payments], [Inflows], [Cash_Flows_From_Investing_Activities]) VALUES (2017, CAST(-2527 AS Decimal(18, 0)), CAST(-269 AS Decimal(18, 0)), CAST(-461 AS Decimal(18, 0)), CAST(-123 AS Decimal(18, 0)), CAST(-3380 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)), CAST(-3340 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_Investing] ([Year], [Expenditures_Related_To_Mining_And_Metallurgical_Assets], [Expenditures_On_Other_Tangible_And_Intangible_Non_Current_Assets], [Acquisition_Of_Interests_In_Joint_Ventures], [Other_Payments], [Total_Payments], [Inflows], [Cash_Flows_From_Investing_Activities]) VALUES (2018, CAST(-2609 AS Decimal(18, 0)), CAST(-266 AS Decimal(18, 0)), CAST(-666 AS Decimal(18, 0)), CAST(-83 AS Decimal(18, 0)), CAST(-3624 AS Decimal(18, 0)), CAST(85 AS Decimal(18, 0)), CAST(-3539 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_Investing] ([Year], [Expenditures_Related_To_Mining_And_Metallurgical_Assets], [Expenditures_On_Other_Tangible_And_Intangible_Non_Current_Assets], [Acquisition_Of_Interests_In_Joint_Ventures], [Other_Payments], [Total_Payments], [Inflows], [Cash_Flows_From_Investing_Activities]) VALUES (2019, CAST(-2872 AS Decimal(18, 0)), CAST(-360 AS Decimal(18, 0)), CAST(-439 AS Decimal(18, 0)), CAST(-307 AS Decimal(18, 0)), CAST(-3978 AS Decimal(18, 0)), CAST(335 AS Decimal(18, 0)), CAST(-3643 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_Investing] ([Year], [Expenditures_Related_To_Mining_And_Metallurgical_Assets], [Expenditures_On_Other_Tangible_And_Intangible_Non_Current_Assets], [Acquisition_Of_Interests_In_Joint_Ventures], [Other_Payments], [Total_Payments], [Inflows], [Cash_Flows_From_Investing_Activities]) VALUES (2020, CAST(-3060 AS Decimal(18, 0)), CAST(-397 AS Decimal(18, 0)), CAST(-207 AS Decimal(18, 0)), CAST(-8 AS Decimal(18, 0)), CAST(-3672 AS Decimal(18, 0)), CAST(11 AS Decimal(18, 0)), CAST(-3661 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_Investing] ([Year], [Expenditures_Related_To_Mining_And_Metallurgical_Assets], [Expenditures_On_Other_Tangible_And_Intangible_Non_Current_Assets], [Acquisition_Of_Interests_In_Joint_Ventures], [Other_Payments], [Total_Payments], [Inflows], [Cash_Flows_From_Investing_Activities]) VALUES (2021, CAST(-3383 AS Decimal(18, 0)), CAST(-507 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-46 AS Decimal(18, 0)), CAST(-3936 AS Decimal(18, 0)), CAST(1410 AS Decimal(18, 0)), CAST(-2526 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_Investing] ([Year], [Expenditures_Related_To_Mining_And_Metallurgical_Assets], [Expenditures_On_Other_Tangible_And_Intangible_Non_Current_Assets], [Acquisition_Of_Interests_In_Joint_Ventures], [Other_Payments], [Total_Payments], [Inflows], [Cash_Flows_From_Investing_Activities]) VALUES (2022, CAST(-3678 AS Decimal(18, 0)), CAST(-440 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-29 AS Decimal(18, 0)), CAST(-4147 AS Decimal(18, 0)), CAST(1452 AS Decimal(18, 0)), CAST(-2695 AS Decimal(18, 0)))
INSERT [dbo].[Cash_Flows_Investing] ([Year], [Expenditures_Related_To_Mining_And_Metallurgical_Assets], [Expenditures_On_Other_Tangible_And_Intangible_Non_Current_Assets], [Acquisition_Of_Interests_In_Joint_Ventures], [Other_Payments], [Total_Payments], [Inflows], [Cash_Flows_From_Investing_Activities]) VALUES (2023, CAST(-4112 AS Decimal(18, 0)), CAST(-664 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(-229 AS Decimal(18, 0)), CAST(-5005 AS Decimal(18, 0)), CAST(207 AS Decimal(18, 0)), CAST(-4798 AS Decimal(18, 0)))
GO
INSERT [dbo].[Current_Assets] ([Year], [Inventories], [Trade_Receivables_Including], [Trade_Receivables_Fair_Value_Through_Profit_or_Loss], [Tax_Receivables], [Derivative_Financial_Instruments], [Commitments_to_Joint_Ventures_Loans_Granted], [Other_Financial_Assets], [Other_Non_Financial_Assets], [Cash_and_Cash_Equivalents], [Assets_Held_for_Sale_Disposal_Group], [Current_Assets], [TOTAL_ASSETS]) VALUES (2017, CAST(4562 AS Decimal(18, 0)), CAST(1522 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(277 AS Decimal(18, 0)), CAST(196 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(265 AS Decimal(18, 0)), CAST(199 AS Decimal(18, 0)), CAST(586 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(7607 AS Decimal(18, 0)), CAST(34122 AS Decimal(18, 0)))
INSERT [dbo].[Current_Assets] ([Year], [Inventories], [Trade_Receivables_Including], [Trade_Receivables_Fair_Value_Through_Profit_or_Loss], [Tax_Receivables], [Derivative_Financial_Instruments], [Commitments_to_Joint_Ventures_Loans_Granted], [Other_Financial_Assets], [Other_Non_Financial_Assets], [Cash_and_Cash_Equivalents], [Assets_Held_for_Sale_Disposal_Group], [Current_Assets], [TOTAL_ASSETS]) VALUES (2018, CAST(4983 AS Decimal(18, 0)), CAST(799 AS Decimal(18, 0)), CAST(304 AS Decimal(18, 0)), CAST(417 AS Decimal(18, 0)), CAST(301 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(273 AS Decimal(18, 0)), CAST(132 AS Decimal(18, 0)), CAST(957 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(7862 AS Decimal(18, 0)), CAST(37237 AS Decimal(18, 0)))
INSERT [dbo].[Current_Assets] ([Year], [Inventories], [Trade_Receivables_Including], [Trade_Receivables_Fair_Value_Through_Profit_or_Loss], [Tax_Receivables], [Derivative_Financial_Instruments], [Commitments_to_Joint_Ventures_Loans_Granted], [Other_Financial_Assets], [Other_Non_Financial_Assets], [Cash_and_Cash_Equivalents], [Assets_Held_for_Sale_Disposal_Group], [Current_Assets], [TOTAL_ASSETS]) VALUES (2019, CAST(4741 AS Decimal(18, 0)), CAST(688 AS Decimal(18, 0)), CAST(300 AS Decimal(18, 0)), CAST(571 AS Decimal(18, 0)), CAST(293 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(280 AS Decimal(18, 0)), CAST(151 AS Decimal(18, 0)), CAST(1016 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(7740 AS Decimal(18, 0)), CAST(39409 AS Decimal(18, 0)))
INSERT [dbo].[Current_Assets] ([Year], [Inventories], [Trade_Receivables_Including], [Trade_Receivables_Fair_Value_Through_Profit_or_Loss], [Tax_Receivables], [Derivative_Financial_Instruments], [Commitments_to_Joint_Ventures_Loans_Granted], [Other_Financial_Assets], [Other_Non_Financial_Assets], [Cash_and_Cash_Equivalents], [Assets_Held_for_Sale_Disposal_Group], [Current_Assets], [TOTAL_ASSETS]) VALUES (2020, CAST(4459 AS Decimal(18, 0)), CAST(834 AS Decimal(18, 0)), CAST(478 AS Decimal(18, 0)), CAST(295 AS Decimal(18, 0)), CAST(210 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(210 AS Decimal(18, 0)), CAST(142 AS Decimal(18, 0)), CAST(2552 AS Decimal(18, 0)), CAST(61 AS Decimal(18, 0)), CAST(8733 AS Decimal(18, 0)), CAST(42780 AS Decimal(18, 0)))
INSERT [dbo].[Current_Assets] ([Year], [Inventories], [Trade_Receivables_Including], [Trade_Receivables_Fair_Value_Through_Profit_or_Loss], [Tax_Receivables], [Derivative_Financial_Instruments], [Commitments_to_Joint_Ventures_Loans_Granted], [Other_Financial_Assets], [Other_Non_Financial_Assets], [Cash_and_Cash_Equivalents], [Assets_Held_for_Sale_Disposal_Group], [Current_Assets], [TOTAL_ASSETS]) VALUES (2021, CAST(6337 AS Decimal(18, 0)), CAST(1009 AS Decimal(18, 0)), CAST(614 AS Decimal(18, 0)), CAST(364 AS Decimal(18, 0)), CAST(252 AS Decimal(18, 0)), CAST(447 AS Decimal(18, 0)), CAST(172 AS Decimal(18, 0)), CAST(162 AS Decimal(18, 0)), CAST(1884 AS Decimal(18, 0)), CAST(734 AS Decimal(18, 0)), CAST(11363 AS Decimal(18, 0)), CAST(48027 AS Decimal(18, 0)))
INSERT [dbo].[Current_Assets] ([Year], [Inventories], [Trade_Receivables_Including], [Trade_Receivables_Fair_Value_Through_Profit_or_Loss], [Tax_Receivables], [Derivative_Financial_Instruments], [Commitments_to_Joint_Ventures_Loans_Granted], [Other_Financial_Assets], [Other_Non_Financial_Assets], [Cash_and_Cash_Equivalents], [Assets_Held_for_Sale_Disposal_Group], [Current_Assets], [TOTAL_ASSETS]) VALUES (2022, CAST(8902 AS Decimal(18, 0)), CAST(1177 AS Decimal(18, 0)), CAST(751 AS Decimal(18, 0)), CAST(367 AS Decimal(18, 0)), CAST(796 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(337 AS Decimal(18, 0)), CAST(286 AS Decimal(18, 0)), CAST(1200 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(13065 AS Decimal(18, 0)), CAST(53444 AS Decimal(18, 0)))
INSERT [dbo].[Current_Assets] ([Year], [Inventories], [Trade_Receivables_Including], [Trade_Receivables_Fair_Value_Through_Profit_or_Loss], [Tax_Receivables], [Derivative_Financial_Instruments], [Commitments_to_Joint_Ventures_Loans_Granted], [Other_Financial_Assets], [Other_Non_Financial_Assets], [Cash_and_Cash_Equivalents], [Assets_Held_for_Sale_Disposal_Group], [Current_Assets], [TOTAL_ASSETS]) VALUES (2023, CAST(8425 AS Decimal(18, 0)), CAST(932 AS Decimal(18, 0)), CAST(414 AS Decimal(18, 0)), CAST(985 AS Decimal(18, 0)), CAST(760 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(296 AS Decimal(18, 0)), CAST(275 AS Decimal(18, 0)), CAST(1729 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(13402 AS Decimal(18, 0)), CAST(51383 AS Decimal(18, 0)))
GO
INSERT [dbo].[Equity] ([Year], [Share_Capital], [Capital_Reserve_from_Financial_Instruments_Valuation], [Accumulated_Other_Comprehensive_Income_Excluding_Financial_Instruments_Valuation], [Retained_Earnings], [Equity_Attributable_to_Owners_of_the_Parent], [Non_controlling_Interests_Equity], [Equity]) VALUES (2017, CAST(2000 AS Decimal(18, 0)), CAST(158 AS Decimal(18, 0)), CAST(2427 AS Decimal(18, 0)), CAST(13109 AS Decimal(18, 0)), CAST(17694 AS Decimal(18, 0)), CAST(91 AS Decimal(18, 0)), CAST(17785 AS Decimal(18, 0)))
INSERT [dbo].[Equity] ([Year], [Share_Capital], [Capital_Reserve_from_Financial_Instruments_Valuation], [Accumulated_Other_Comprehensive_Income_Excluding_Financial_Instruments_Valuation], [Retained_Earnings], [Equity_Attributable_to_Owners_of_the_Parent], [Non_controlling_Interests_Equity], [Equity]) VALUES (2018, CAST(2000 AS Decimal(18, 0)), CAST(-444 AS Decimal(18, 0)), CAST(2005 AS Decimal(18, 0)), CAST(15572 AS Decimal(18, 0)), CAST(19133 AS Decimal(18, 0)), CAST(92 AS Decimal(18, 0)), CAST(19225 AS Decimal(18, 0)))
INSERT [dbo].[Equity] ([Year], [Share_Capital], [Capital_Reserve_from_Financial_Instruments_Valuation], [Accumulated_Other_Comprehensive_Income_Excluding_Financial_Instruments_Valuation], [Retained_Earnings], [Equity_Attributable_to_Owners_of_the_Parent], [Non_controlling_Interests_Equity], [Equity]) VALUES (2019, CAST(2000 AS Decimal(18, 0)), CAST(-738 AS Decimal(18, 0)), CAST(1954 AS Decimal(18, 0)), CAST(16894 AS Decimal(18, 0)), CAST(20110 AS Decimal(18, 0)), CAST(92 AS Decimal(18, 0)), CAST(20202 AS Decimal(18, 0)))
INSERT [dbo].[Equity] ([Year], [Share_Capital], [Capital_Reserve_from_Financial_Instruments_Valuation], [Accumulated_Other_Comprehensive_Income_Excluding_Financial_Instruments_Valuation], [Retained_Earnings], [Equity_Attributable_to_Owners_of_the_Parent], [Non_controlling_Interests_Equity], [Equity]) VALUES (2020, CAST(2000 AS Decimal(18, 0)), CAST(-1430 AS Decimal(18, 0)), CAST(1728 AS Decimal(18, 0)), CAST(18694 AS Decimal(18, 0)), CAST(20992 AS Decimal(18, 0)), CAST(89 AS Decimal(18, 0)), CAST(21081 AS Decimal(18, 0)))
INSERT [dbo].[Equity] ([Year], [Share_Capital], [Capital_Reserve_from_Financial_Instruments_Valuation], [Accumulated_Other_Comprehensive_Income_Excluding_Financial_Instruments_Valuation], [Retained_Earnings], [Equity_Attributable_to_Owners_of_the_Parent], [Non_controlling_Interests_Equity], [Equity]) VALUES (2021, CAST(2000 AS Decimal(18, 0)), CAST(-1705 AS Decimal(18, 0)), CAST(2219 AS Decimal(18, 0)), CAST(24532 AS Decimal(18, 0)), CAST(27046 AS Decimal(18, 0)), CAST(92 AS Decimal(18, 0)), CAST(27138 AS Decimal(18, 0)))
INSERT [dbo].[Equity] ([Year], [Share_Capital], [Capital_Reserve_from_Financial_Instruments_Valuation], [Accumulated_Other_Comprehensive_Income_Excluding_Financial_Instruments_Valuation], [Retained_Earnings], [Equity_Attributable_to_Owners_of_the_Parent], [Non_controlling_Interests_Equity], [Equity]) VALUES (2022, CAST(2000 AS Decimal(18, 0)), CAST(-427 AS Decimal(18, 0)), CAST(1812 AS Decimal(18, 0)), CAST(28704 AS Decimal(18, 0)), CAST(32089 AS Decimal(18, 0)), CAST(57 AS Decimal(18, 0)), CAST(32146 AS Decimal(18, 0)))
INSERT [dbo].[Equity] ([Year], [Share_Capital], [Capital_Reserve_from_Financial_Instruments_Valuation], [Accumulated_Other_Comprehensive_Income_Excluding_Financial_Instruments_Valuation], [Retained_Earnings], [Equity_Attributable_to_Owners_of_the_Parent], [Non_controlling_Interests_Equity], [Equity]) VALUES (2023, CAST(2000 AS Decimal(18, 0)), CAST(277 AS Decimal(18, 0)), CAST(1482 AS Decimal(18, 0)), CAST(24806 AS Decimal(18, 0)), CAST(28565 AS Decimal(18, 0)), CAST(65 AS Decimal(18, 0)), CAST(28630 AS Decimal(18, 0)))
GO
INSERT [dbo].[Long_Term_Liabilities] ([Year], [Liabilities_from_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Employee_Benefit_Liabilities], [Provisions_for_Mine_Closure_and_Other_Technological_Facilities_Costs], [Deferred_Income_Tax_Liabilities], [Other_Liabilities], [Long_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2017, CAST(6191 AS Decimal(18, 0)), CAST(208 AS Decimal(18, 0)), CAST(2063 AS Decimal(18, 0)), CAST(1351 AS Decimal(18, 0)), CAST(347 AS Decimal(18, 0)), CAST(718 AS Decimal(18, 0)), CAST(10878 AS Decimal(18, 0)), CAST(16337 AS Decimal(18, 0)), CAST(34122 AS Decimal(18, 0)))
INSERT [dbo].[Long_Term_Liabilities] ([Year], [Liabilities_from_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Employee_Benefit_Liabilities], [Provisions_for_Mine_Closure_and_Other_Technological_Facilities_Costs], [Deferred_Income_Tax_Liabilities], [Other_Liabilities], [Long_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2018, CAST(6878 AS Decimal(18, 0)), CAST(162 AS Decimal(18, 0)), CAST(2447 AS Decimal(18, 0)), CAST(1564 AS Decimal(18, 0)), CAST(498 AS Decimal(18, 0)), CAST(598 AS Decimal(18, 0)), CAST(12147 AS Decimal(18, 0)), CAST(18012 AS Decimal(18, 0)), CAST(37237 AS Decimal(18, 0)))
INSERT [dbo].[Long_Term_Liabilities] ([Year], [Liabilities_from_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Employee_Benefit_Liabilities], [Provisions_for_Mine_Closure_and_Other_Technological_Facilities_Costs], [Deferred_Income_Tax_Liabilities], [Other_Liabilities], [Long_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2019, CAST(7525 AS Decimal(18, 0)), CAST(183 AS Decimal(18, 0)), CAST(2613 AS Decimal(18, 0)), CAST(1774 AS Decimal(18, 0)), CAST(445 AS Decimal(18, 0)), CAST(631 AS Decimal(18, 0)), CAST(13171 AS Decimal(18, 0)), CAST(19207 AS Decimal(18, 0)), CAST(39409 AS Decimal(18, 0)))
INSERT [dbo].[Long_Term_Liabilities] ([Year], [Liabilities_from_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Employee_Benefit_Liabilities], [Provisions_for_Mine_Closure_and_Other_Technological_Facilities_Costs], [Deferred_Income_Tax_Liabilities], [Other_Liabilities], [Long_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2020, CAST(6928 AS Decimal(18, 0)), CAST(1006 AS Decimal(18, 0)), CAST(3016 AS Decimal(18, 0)), CAST(1849 AS Decimal(18, 0)), CAST(442 AS Decimal(18, 0)), CAST(551 AS Decimal(18, 0)), CAST(13792 AS Decimal(18, 0)), CAST(21699 AS Decimal(18, 0)), CAST(42780 AS Decimal(18, 0)))
INSERT [dbo].[Long_Term_Liabilities] ([Year], [Liabilities_from_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Employee_Benefit_Liabilities], [Provisions_for_Mine_Closure_and_Other_Technological_Facilities_Costs], [Deferred_Income_Tax_Liabilities], [Other_Liabilities], [Long_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2021, CAST(5409 AS Decimal(18, 0)), CAST(1134 AS Decimal(18, 0)), CAST(2306 AS Decimal(18, 0)), CAST(1242 AS Decimal(18, 0)), CAST(643 AS Decimal(18, 0)), CAST(617 AS Decimal(18, 0)), CAST(11351 AS Decimal(18, 0)), CAST(20889 AS Decimal(18, 0)), CAST(48027 AS Decimal(18, 0)))
INSERT [dbo].[Long_Term_Liabilities] ([Year], [Liabilities_from_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Employee_Benefit_Liabilities], [Provisions_for_Mine_Closure_and_Other_Technological_Facilities_Costs], [Deferred_Income_Tax_Liabilities], [Other_Liabilities], [Long_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2022, CAST(5220 AS Decimal(18, 0)), CAST(719 AS Decimal(18, 0)), CAST(2621 AS Decimal(18, 0)), CAST(1859 AS Decimal(18, 0)), CAST(1151 AS Decimal(18, 0)), CAST(543 AS Decimal(18, 0)), CAST(12113 AS Decimal(18, 0)), CAST(21298 AS Decimal(18, 0)), CAST(53444 AS Decimal(18, 0)))
INSERT [dbo].[Long_Term_Liabilities] ([Year], [Liabilities_from_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Employee_Benefit_Liabilities], [Provisions_for_Mine_Closure_and_Other_Technological_Facilities_Costs], [Deferred_Income_Tax_Liabilities], [Other_Liabilities], [Long_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2023, CAST(4761 AS Decimal(18, 0)), CAST(202 AS Decimal(18, 0)), CAST(3117 AS Decimal(18, 0)), CAST(1923 AS Decimal(18, 0)), CAST(646 AS Decimal(18, 0)), CAST(487 AS Decimal(18, 0)), CAST(11136 AS Decimal(18, 0)), CAST(22753 AS Decimal(18, 0)), CAST(51383 AS Decimal(18, 0)))
GO
INSERT [dbo].[Non_Current_Assets] ([Year], [Mining_and_Metallurgical_Tangible_fixed_Assets], [Mining_and_Metallurgical_Intangible_Assets], [Mining_and_Metallurgical_Tangible_and_Intangible_Assets], [Other_Tangible_Fixed_Assets], [Other_Intangible_Assets], [Other_Tangible_and_Intangible_Assets], [Total_Commitment_to_Joint_Ventures], [Total_Financial_Instruments], [Deferred_Income_Tax_Assets], [Other_Non_Financial_Assets], [Total_Non_Current_Assets]) VALUES (2017, CAST(16296 AS Decimal(18, 0)), CAST(1447 AS Decimal(18, 0)), CAST(17743 AS Decimal(18, 0)), CAST(2679 AS Decimal(18, 0)), CAST(209 AS Decimal(18, 0)), CAST(2888 AS Decimal(18, 0)), CAST(3897 AS Decimal(18, 0)), CAST(1486 AS Decimal(18, 0)), CAST(389 AS Decimal(18, 0)), CAST(112 AS Decimal(18, 0)), CAST(26515 AS Decimal(18, 0)))
INSERT [dbo].[Non_Current_Assets] ([Year], [Mining_and_Metallurgical_Tangible_fixed_Assets], [Mining_and_Metallurgical_Intangible_Assets], [Mining_and_Metallurgical_Tangible_and_Intangible_Assets], [Other_Tangible_Fixed_Assets], [Other_Intangible_Assets], [Other_Tangible_and_Intangible_Assets], [Total_Commitment_to_Joint_Ventures], [Total_Financial_Instruments], [Deferred_Income_Tax_Assets], [Other_Non_Financial_Assets], [Total_Non_Current_Assets]) VALUES (2018, CAST(17507 AS Decimal(18, 0)), CAST(1657 AS Decimal(18, 0)), CAST(19164 AS Decimal(18, 0)), CAST(2789 AS Decimal(18, 0)), CAST(224 AS Decimal(18, 0)), CAST(3013 AS Decimal(18, 0)), CAST(5203 AS Decimal(18, 0)), CAST(1577 AS Decimal(18, 0)), CAST(309 AS Decimal(18, 0)), CAST(109 AS Decimal(18, 0)), CAST(29375 AS Decimal(18, 0)))
INSERT [dbo].[Non_Current_Assets] ([Year], [Mining_and_Metallurgical_Tangible_fixed_Assets], [Mining_and_Metallurgical_Intangible_Assets], [Mining_and_Metallurgical_Tangible_and_Intangible_Assets], [Other_Tangible_Fixed_Assets], [Other_Intangible_Assets], [Other_Tangible_and_Intangible_Assets], [Total_Commitment_to_Joint_Ventures], [Total_Financial_Instruments], [Deferred_Income_Tax_Assets], [Other_Non_Financial_Assets], [Total_Non_Current_Assets]) VALUES (2019, CAST(19498 AS Decimal(18, 0)), CAST(1966 AS Decimal(18, 0)), CAST(21464 AS Decimal(18, 0)), CAST(2829 AS Decimal(18, 0)), CAST(155 AS Decimal(18, 0)), CAST(2984 AS Decimal(18, 0)), CAST(5694 AS Decimal(18, 0)), CAST(1228 AS Decimal(18, 0)), CAST(157 AS Decimal(18, 0)), CAST(142 AS Decimal(18, 0)), CAST(31669 AS Decimal(18, 0)))
INSERT [dbo].[Non_Current_Assets] ([Year], [Mining_and_Metallurgical_Tangible_fixed_Assets], [Mining_and_Metallurgical_Intangible_Assets], [Mining_and_Metallurgical_Tangible_and_Intangible_Assets], [Other_Tangible_Fixed_Assets], [Other_Intangible_Assets], [Other_Tangible_and_Intangible_Assets], [Total_Commitment_to_Joint_Ventures], [Total_Financial_Instruments], [Deferred_Income_Tax_Assets], [Other_Non_Financial_Assets], [Total_Non_Current_Assets]) VALUES (2020, CAST(20576 AS Decimal(18, 0)), CAST(2024 AS Decimal(18, 0)), CAST(22600 AS Decimal(18, 0)), CAST(2857 AS Decimal(18, 0)), CAST(141 AS Decimal(18, 0)), CAST(2998 AS Decimal(18, 0)), CAST(6069 AS Decimal(18, 0)), CAST(2026 AS Decimal(18, 0)), CAST(193 AS Decimal(18, 0)), CAST(161 AS Decimal(18, 0)), CAST(34047 AS Decimal(18, 0)))
INSERT [dbo].[Non_Current_Assets] ([Year], [Mining_and_Metallurgical_Tangible_fixed_Assets], [Mining_and_Metallurgical_Intangible_Assets], [Mining_and_Metallurgical_Tangible_and_Intangible_Assets], [Other_Tangible_Fixed_Assets], [Other_Intangible_Assets], [Other_Tangible_and_Intangible_Assets], [Total_Commitment_to_Joint_Ventures], [Total_Financial_Instruments], [Deferred_Income_Tax_Assets], [Other_Non_Financial_Assets], [Total_Non_Current_Assets]) VALUES (2021, CAST(21564 AS Decimal(18, 0)), CAST(2316 AS Decimal(18, 0)), CAST(23880 AS Decimal(18, 0)), CAST(2593 AS Decimal(18, 0)), CAST(250 AS Decimal(18, 0)), CAST(2843 AS Decimal(18, 0)), CAST(7867 AS Decimal(18, 0)), CAST(1728 AS Decimal(18, 0)), CAST(185 AS Decimal(18, 0)), CAST(161 AS Decimal(18, 0)), CAST(36664 AS Decimal(18, 0)))
INSERT [dbo].[Non_Current_Assets] ([Year], [Mining_and_Metallurgical_Tangible_fixed_Assets], [Mining_and_Metallurgical_Intangible_Assets], [Mining_and_Metallurgical_Tangible_and_Intangible_Assets], [Other_Tangible_Fixed_Assets], [Other_Intangible_Assets], [Other_Tangible_and_Intangible_Assets], [Total_Commitment_to_Joint_Ventures], [Total_Financial_Instruments], [Deferred_Income_Tax_Assets], [Other_Non_Financial_Assets], [Total_Non_Current_Assets]) VALUES (2022, CAST(22894 AS Decimal(18, 0)), CAST(2772 AS Decimal(18, 0)), CAST(25666 AS Decimal(18, 0)), CAST(2746 AS Decimal(18, 0)), CAST(218 AS Decimal(18, 0)), CAST(2964 AS Decimal(18, 0)), CAST(9603 AS Decimal(18, 0)), CAST(1789 AS Decimal(18, 0)), CAST(137 AS Decimal(18, 0)), CAST(220 AS Decimal(18, 0)), CAST(40379 AS Decimal(18, 0)))
INSERT [dbo].[Non_Current_Assets] ([Year], [Mining_and_Metallurgical_Tangible_fixed_Assets], [Mining_and_Metallurgical_Intangible_Assets], [Mining_and_Metallurgical_Tangible_and_Intangible_Assets], [Other_Tangible_Fixed_Assets], [Other_Intangible_Assets], [Other_Tangible_and_Intangible_Assets], [Total_Commitment_to_Joint_Ventures], [Total_Financial_Instruments], [Deferred_Income_Tax_Assets], [Other_Non_Financial_Assets], [Total_Non_Current_Assets]) VALUES (2023, CAST(20798 AS Decimal(18, 0)), CAST(2697 AS Decimal(18, 0)), CAST(23495 AS Decimal(18, 0)), CAST(2941 AS Decimal(18, 0)), CAST(313 AS Decimal(18, 0)), CAST(3254 AS Decimal(18, 0)), CAST(9096 AS Decimal(18, 0)), CAST(1613 AS Decimal(18, 0)), CAST(137 AS Decimal(18, 0)), CAST(386 AS Decimal(18, 0)), CAST(37981 AS Decimal(18, 0)))
GO
INSERT [dbo].[Profit_and_Loss_Statement] ([Year], [Revenue_From_Contracts_With_Customers], [Cost_of_Goods_Sold], [Gross_Profit_From_Sales], [Selling_And_Administrative_Expenses], [Net_Profit_From_Sales], [Results_From_Joint_Ventures], [Other_Operating_Revenues], [Other_Operating_Expenses], [Financial_Revenues], [Financial_Expenses], [Profit_Before_Tax], [Income_Tax], [Net_Profit]) VALUES (2017, CAST(20358 AS Decimal(18, 0)), CAST(-15204 AS Decimal(18, 0)), CAST(5154 AS Decimal(18, 0)), CAST(-1343 AS Decimal(18, 0)), CAST(3811 AS Decimal(18, 0)), CAST(-155 AS Decimal(18, 0)), CAST(562 AS Decimal(18, 0)), CAST(-2939 AS Decimal(18, 0)), CAST(1251 AS Decimal(18, 0)), CAST(-231 AS Decimal(18, 0)), CAST(2299 AS Decimal(18, 0)), CAST(-774 AS Decimal(18, 0)), CAST(1525 AS Decimal(18, 0)))
INSERT [dbo].[Profit_and_Loss_Statement] ([Year], [Revenue_From_Contracts_With_Customers], [Cost_of_Goods_Sold], [Gross_Profit_From_Sales], [Selling_And_Administrative_Expenses], [Net_Profit_From_Sales], [Results_From_Joint_Ventures], [Other_Operating_Revenues], [Other_Operating_Expenses], [Financial_Revenues], [Financial_Expenses], [Profit_Before_Tax], [Income_Tax], [Net_Profit]) VALUES (2018, CAST(20526 AS Decimal(18, 0)), CAST(-16555 AS Decimal(18, 0)), CAST(3971 AS Decimal(18, 0)), CAST(-1380 AS Decimal(18, 0)), CAST(2591 AS Decimal(18, 0)), CAST(328 AS Decimal(18, 0)), CAST(1034 AS Decimal(18, 0)), CAST(-726 AS Decimal(18, 0)), CAST(11 AS Decimal(18, 0)), CAST(-772 AS Decimal(18, 0)), CAST(2466 AS Decimal(18, 0)), CAST(-808 AS Decimal(18, 0)), CAST(1658 AS Decimal(18, 0)))
INSERT [dbo].[Profit_and_Loss_Statement] ([Year], [Revenue_From_Contracts_With_Customers], [Cost_of_Goods_Sold], [Gross_Profit_From_Sales], [Selling_And_Administrative_Expenses], [Net_Profit_From_Sales], [Results_From_Joint_Ventures], [Other_Operating_Revenues], [Other_Operating_Expenses], [Financial_Revenues], [Financial_Expenses], [Profit_Before_Tax], [Income_Tax], [Net_Profit]) VALUES (2019, CAST(22723 AS Decimal(18, 0)), CAST(-18767 AS Decimal(18, 0)), CAST(3956 AS Decimal(18, 0)), CAST(-1501 AS Decimal(18, 0)), CAST(2455 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), CAST(809 AS Decimal(18, 0)), CAST(-623 AS Decimal(18, 0)), CAST(38 AS Decimal(18, 0)), CAST(-566 AS Decimal(18, 0)), CAST(2122 AS Decimal(18, 0)), CAST(-701 AS Decimal(18, 0)), CAST(1421 AS Decimal(18, 0)))
INSERT [dbo].[Profit_and_Loss_Statement] ([Year], [Revenue_From_Contracts_With_Customers], [Cost_of_Goods_Sold], [Gross_Profit_From_Sales], [Selling_And_Administrative_Expenses], [Net_Profit_From_Sales], [Results_From_Joint_Ventures], [Other_Operating_Revenues], [Other_Operating_Expenses], [Financial_Revenues], [Financial_Expenses], [Profit_Before_Tax], [Income_Tax], [Net_Profit]) VALUES (2020, CAST(23632 AS Decimal(18, 0)), CAST(-18981 AS Decimal(18, 0)), CAST(4651 AS Decimal(18, 0)), CAST(-1490 AS Decimal(18, 0)), CAST(3161 AS Decimal(18, 0)), CAST(247 AS Decimal(18, 0)), CAST(702 AS Decimal(18, 0)), CAST(-1326 AS Decimal(18, 0)), CAST(259 AS Decimal(18, 0)), CAST(-287 AS Decimal(18, 0)), CAST(2756 AS Decimal(18, 0)), CAST(-959 AS Decimal(18, 0)), CAST(1797 AS Decimal(18, 0)))
INSERT [dbo].[Profit_and_Loss_Statement] ([Year], [Revenue_From_Contracts_With_Customers], [Cost_of_Goods_Sold], [Gross_Profit_From_Sales], [Selling_And_Administrative_Expenses], [Net_Profit_From_Sales], [Results_From_Joint_Ventures], [Other_Operating_Revenues], [Other_Operating_Expenses], [Financial_Revenues], [Financial_Expenses], [Profit_Before_Tax], [Income_Tax], [Net_Profit]) VALUES (2021, CAST(29803 AS Decimal(18, 0)), CAST(-23529 AS Decimal(18, 0)), CAST(6274 AS Decimal(18, 0)), CAST(-1564 AS Decimal(18, 0)), CAST(4710 AS Decimal(18, 0)), CAST(2874 AS Decimal(18, 0)), CAST(1757 AS Decimal(18, 0)), CAST(-1046 AS Decimal(18, 0)), CAST(70 AS Decimal(18, 0)), CAST(-541 AS Decimal(18, 0)), CAST(7824 AS Decimal(18, 0)), CAST(-1669 AS Decimal(18, 0)), CAST(6155 AS Decimal(18, 0)))
INSERT [dbo].[Profit_and_Loss_Statement] ([Year], [Revenue_From_Contracts_With_Customers], [Cost_of_Goods_Sold], [Gross_Profit_From_Sales], [Selling_And_Administrative_Expenses], [Net_Profit_From_Sales], [Results_From_Joint_Ventures], [Other_Operating_Revenues], [Other_Operating_Expenses], [Financial_Revenues], [Financial_Expenses], [Profit_Before_Tax], [Income_Tax], [Net_Profit]) VALUES (2022, CAST(33847 AS Decimal(18, 0)), CAST(-27541 AS Decimal(18, 0)), CAST(6306 AS Decimal(18, 0)), CAST(-1962 AS Decimal(18, 0)), CAST(4344 AS Decimal(18, 0)), CAST(1455 AS Decimal(18, 0)), CAST(1881 AS Decimal(18, 0)), CAST(-919 AS Decimal(18, 0)), CAST(148 AS Decimal(18, 0)), CAST(-420 AS Decimal(18, 0)), CAST(6489 AS Decimal(18, 0)), CAST(-1715 AS Decimal(18, 0)), CAST(4774 AS Decimal(18, 0)))
INSERT [dbo].[Profit_and_Loss_Statement] ([Year], [Revenue_From_Contracts_With_Customers], [Cost_of_Goods_Sold], [Gross_Profit_From_Sales], [Selling_And_Administrative_Expenses], [Net_Profit_From_Sales], [Results_From_Joint_Ventures], [Other_Operating_Revenues], [Other_Operating_Expenses], [Financial_Revenues], [Financial_Expenses], [Profit_Before_Tax], [Income_Tax], [Net_Profit]) VALUES (2023, CAST(33467 AS Decimal(18, 0)), CAST(-32907 AS Decimal(18, 0)), CAST(560 AS Decimal(18, 0)), CAST(-2200 AS Decimal(18, 0)), CAST(-1640 AS Decimal(18, 0)), CAST(698 AS Decimal(18, 0)), CAST(906 AS Decimal(18, 0)), CAST(-3723 AS Decimal(18, 0)), CAST(529 AS Decimal(18, 0)), CAST(-370 AS Decimal(18, 0)), CAST(-3600 AS Decimal(18, 0)), CAST(-91 AS Decimal(18, 0)), CAST(-3691 AS Decimal(18, 0)))
GO
INSERT [dbo].[Short_Term_Liabilities] ([Year], [Liabilities_From_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Liabilities_To_Suppliers_and_Similar], [Employee_Benefit_Liabilities], [Tax_Liabilities], [Provisions_For_Liabilities_and_Other_Charges], [Other_Liabilities], [Liabilities_Associated_With_Assets_Held_For_Sale], [Liabilities_Related_To_Disposal_Groups], [Short_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2017, CAST(965 AS Decimal(18, 0)), CAST(110 AS Decimal(18, 0)), CAST(1823 AS Decimal(18, 0)), CAST(842 AS Decimal(18, 0)), CAST(630 AS Decimal(18, 0)), CAST(114 AS Decimal(18, 0)), CAST(975 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(5459 AS Decimal(18, 0)), CAST(16337 AS Decimal(18, 0)), CAST(34122 AS Decimal(18, 0)))
INSERT [dbo].[Short_Term_Liabilities] ([Year], [Liabilities_From_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Liabilities_To_Suppliers_and_Similar], [Employee_Benefit_Liabilities], [Tax_Liabilities], [Provisions_For_Liabilities_and_Other_Charges], [Other_Liabilities], [Liabilities_Associated_With_Assets_Held_For_Sale], [Liabilities_Related_To_Disposal_Groups], [Short_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2018, CAST(1071 AS Decimal(18, 0)), CAST(43 AS Decimal(18, 0)), CAST(2053 AS Decimal(18, 0)), CAST(808 AS Decimal(18, 0)), CAST(585 AS Decimal(18, 0)), CAST(271 AS Decimal(18, 0)), CAST(1034 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(5865 AS Decimal(18, 0)), CAST(18012 AS Decimal(18, 0)), CAST(37237 AS Decimal(18, 0)))
INSERT [dbo].[Short_Term_Liabilities] ([Year], [Liabilities_From_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Liabilities_To_Suppliers_and_Similar], [Employee_Benefit_Liabilities], [Tax_Liabilities], [Provisions_For_Liabilities_and_Other_Charges], [Other_Liabilities], [Liabilities_Associated_With_Assets_Held_For_Sale], [Liabilities_Related_To_Disposal_Groups], [Short_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2019, CAST(348 AS Decimal(18, 0)), CAST(91 AS Decimal(18, 0)), CAST(2766 AS Decimal(18, 0)), CAST(1150 AS Decimal(18, 0)), CAST(433 AS Decimal(18, 0)), CAST(222 AS Decimal(18, 0)), CAST(1026 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(6036 AS Decimal(18, 0)), CAST(19207 AS Decimal(18, 0)), CAST(39409 AS Decimal(18, 0)))
INSERT [dbo].[Short_Term_Liabilities] ([Year], [Liabilities_From_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Liabilities_To_Suppliers_and_Similar], [Employee_Benefit_Liabilities], [Tax_Liabilities], [Provisions_For_Liabilities_and_Other_Charges], [Other_Liabilities], [Liabilities_Associated_With_Assets_Held_For_Sale], [Liabilities_Related_To_Disposal_Groups], [Short_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2020, CAST(407 AS Decimal(18, 0)), CAST(688 AS Decimal(18, 0)), CAST(3593 AS Decimal(18, 0)), CAST(1313 AS Decimal(18, 0)), CAST(537 AS Decimal(18, 0)), CAST(162 AS Decimal(18, 0)), CAST(1202 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(7907 AS Decimal(18, 0)), CAST(21699 AS Decimal(18, 0)), CAST(42780 AS Decimal(18, 0)))
INSERT [dbo].[Short_Term_Liabilities] ([Year], [Liabilities_From_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Liabilities_To_Suppliers_and_Similar], [Employee_Benefit_Liabilities], [Tax_Liabilities], [Provisions_For_Liabilities_and_Other_Charges], [Other_Liabilities], [Liabilities_Associated_With_Assets_Held_For_Sale], [Liabilities_Related_To_Disposal_Groups], [Short_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2021, CAST(455 AS Decimal(18, 0)), CAST(889 AS Decimal(18, 0)), CAST(2974 AS Decimal(18, 0)), CAST(1437 AS Decimal(18, 0)), CAST(1453 AS Decimal(18, 0)), CAST(207 AS Decimal(18, 0)), CAST(1661 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(462 AS Decimal(18, 0)), CAST(9538 AS Decimal(18, 0)), CAST(20889 AS Decimal(18, 0)), CAST(48027 AS Decimal(18, 0)))
INSERT [dbo].[Short_Term_Liabilities] ([Year], [Liabilities_From_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Liabilities_To_Suppliers_and_Similar], [Employee_Benefit_Liabilities], [Tax_Liabilities], [Provisions_For_Liabilities_and_Other_Charges], [Other_Liabilities], [Liabilities_Associated_With_Assets_Held_For_Sale], [Liabilities_Related_To_Disposal_Groups], [Short_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2022, CAST(1223 AS Decimal(18, 0)), CAST(434 AS Decimal(18, 0)), CAST(3094 AS Decimal(18, 0)), CAST(1699 AS Decimal(18, 0)), CAST(1233 AS Decimal(18, 0)), CAST(173 AS Decimal(18, 0)), CAST(1329 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(9185 AS Decimal(18, 0)), CAST(21298 AS Decimal(18, 0)), CAST(53444 AS Decimal(18, 0)))
INSERT [dbo].[Short_Term_Liabilities] ([Year], [Liabilities_From_Loans_Leases_and_Debt_Securities], [Derivative_Financial_Instruments], [Liabilities_To_Suppliers_and_Similar], [Employee_Benefit_Liabilities], [Tax_Liabilities], [Provisions_For_Liabilities_and_Other_Charges], [Other_Liabilities], [Liabilities_Associated_With_Assets_Held_For_Sale], [Liabilities_Related_To_Disposal_Groups], [Short_Term_Liabilities], [Long_and_Short_Term_Liabilities], [Total_Liabilities_and_Equity]) VALUES (2023, CAST(964 AS Decimal(18, 0)), CAST(499 AS Decimal(18, 0)), CAST(6188 AS Decimal(18, 0)), CAST(1709 AS Decimal(18, 0)), CAST(611 AS Decimal(18, 0)), CAST(194 AS Decimal(18, 0)), CAST(1452 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(11617 AS Decimal(18, 0)), CAST(22753 AS Decimal(18, 0)), CAST(51383 AS Decimal(18, 0)))
GO
INSERT [dbo].[Top40_Mining_Comp_Long_Liabilities] ([Year], [Borrowings], [Other], [Total_non_current_liabilities], [Total_liabilities], [Equity], [Equity_and_Liabilities]) VALUES (2017, CAST(229 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)), CAST(379 AS Decimal(18, 0)), CAST(566 AS Decimal(18, 0)), CAST(544 AS Decimal(18, 0)), CAST(1110 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_Long_Liabilities] ([Year], [Borrowings], [Other], [Total_non_current_liabilities], [Total_liabilities], [Equity], [Equity_and_Liabilities]) VALUES (2018, CAST(217 AS Decimal(18, 0)), CAST(147 AS Decimal(18, 0)), CAST(364 AS Decimal(18, 0)), CAST(540 AS Decimal(18, 0)), CAST(540 AS Decimal(18, 0)), CAST(1080 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_Long_Liabilities] ([Year], [Borrowings], [Other], [Total_non_current_liabilities], [Total_liabilities], [Equity], [Equity_and_Liabilities]) VALUES (2019, CAST(202 AS Decimal(18, 0)), CAST(175 AS Decimal(18, 0)), CAST(377 AS Decimal(18, 0)), CAST(576 AS Decimal(18, 0)), CAST(563 AS Decimal(18, 0)), CAST(1139 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_Long_Liabilities] ([Year], [Borrowings], [Other], [Total_non_current_liabilities], [Total_liabilities], [Equity], [Equity_and_Liabilities]) VALUES (2020, CAST(209 AS Decimal(18, 0)), CAST(187 AS Decimal(18, 0)), CAST(396 AS Decimal(18, 0)), CAST(588 AS Decimal(18, 0)), CAST(575 AS Decimal(18, 0)), CAST(1163 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_Long_Liabilities] ([Year], [Borrowings], [Other], [Total_non_current_liabilities], [Total_liabilities], [Equity], [Equity_and_Liabilities]) VALUES (2021, CAST(211 AS Decimal(18, 0)), CAST(175 AS Decimal(18, 0)), CAST(386 AS Decimal(18, 0)), CAST(620 AS Decimal(18, 0)), CAST(615 AS Decimal(18, 0)), CAST(1235 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_Long_Liabilities] ([Year], [Borrowings], [Other], [Total_non_current_liabilities], [Total_liabilities], [Equity], [Equity_and_Liabilities]) VALUES (2022, CAST(189 AS Decimal(18, 0)), CAST(190 AS Decimal(18, 0)), CAST(378 AS Decimal(18, 0)), CAST(616 AS Decimal(18, 0)), CAST(670 AS Decimal(18, 0)), CAST(1286 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_Long_Liabilities] ([Year], [Borrowings], [Other], [Total_non_current_liabilities], [Total_liabilities], [Equity], [Equity_and_Liabilities]) VALUES (2023, CAST(199 AS Decimal(18, 0)), CAST(195 AS Decimal(18, 0)), CAST(394 AS Decimal(18, 0)), CAST(626 AS Decimal(18, 0)), CAST(662 AS Decimal(18, 0)), CAST(1288 AS Decimal(18, 0)))
GO
INSERT [dbo].[Top40_Mining_Comp_PL_and_CF] ([Year], [Revenue], [Trading_revenue], [Operating_expenses], [Other_operating_expenses], [EBITDA], [Impaiment_charges], [Deprecation_and_amortisation], [Net_finance_cost], [PBT], [Income_tax_expense], [Net_profit], [Net_operating_cash_flows], [EBIT], [estimated_Selling_And_Administrative_Expenses], [estimated_cost_of_goods_sold]) VALUES (2017, CAST(453 AS Decimal(18, 0)), CAST(179 AS Decimal(18, 0)), CAST(-465 AS Decimal(18, 0)), CAST(-9 AS Decimal(18, 0)), CAST(158 AS Decimal(18, 0)), CAST(-3 AS Decimal(18, 0)), CAST(-47 AS Decimal(18, 0)), CAST(-13 AS Decimal(18, 0)), CAST(95 AS Decimal(18, 0)), CAST(-30 AS Decimal(18, 0)), CAST(65 AS Decimal(18, 0)), CAST(120 AS Decimal(18, 0)), CAST(111 AS Decimal(18, 0)), CAST(-29 AS Decimal(18, 0)), CAST(-436 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_PL_and_CF] ([Year], [Revenue], [Trading_revenue], [Operating_expenses], [Other_operating_expenses], [EBITDA], [Impaiment_charges], [Deprecation_and_amortisation], [Net_finance_cost], [PBT], [Income_tax_expense], [Net_profit], [Net_operating_cash_flows], [EBIT], [estimated_Selling_And_Administrative_Expenses], [estimated_cost_of_goods_sold]) VALUES (2018, CAST(489 AS Decimal(18, 0)), CAST(194 AS Decimal(18, 0)), CAST(-505 AS Decimal(18, 0)), CAST(-13 AS Decimal(18, 0)), CAST(165 AS Decimal(18, 0)), CAST(-12 AS Decimal(18, 0)), CAST(-47 AS Decimal(18, 0)), CAST(-13 AS Decimal(18, 0)), CAST(93 AS Decimal(18, 0)), CAST(-27 AS Decimal(18, 0)), CAST(66 AS Decimal(18, 0)), CAST(134 AS Decimal(18, 0)), CAST(118 AS Decimal(18, 0)), CAST(-32 AS Decimal(18, 0)), CAST(-473 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_PL_and_CF] ([Year], [Revenue], [Trading_revenue], [Operating_expenses], [Other_operating_expenses], [EBITDA], [Impaiment_charges], [Deprecation_and_amortisation], [Net_finance_cost], [PBT], [Income_tax_expense], [Net_profit], [Net_operating_cash_flows], [EBIT], [estimated_Selling_And_Administrative_Expenses], [estimated_cost_of_goods_sold]) VALUES (2019, CAST(525 AS Decimal(18, 0)), CAST(167 AS Decimal(18, 0)), CAST(-512 AS Decimal(18, 0)), CAST(-12 AS Decimal(18, 0)), CAST(168 AS Decimal(18, 0)), CAST(-14 AS Decimal(18, 0)), CAST(-50 AS Decimal(18, 0)), CAST(-14 AS Decimal(18, 0)), CAST(90 AS Decimal(18, 0)), CAST(-29 AS Decimal(18, 0)), CAST(61 AS Decimal(18, 0)), CAST(130 AS Decimal(18, 0)), CAST(118 AS Decimal(18, 0)), CAST(-32 AS Decimal(18, 0)), CAST(-480 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_PL_and_CF] ([Year], [Revenue], [Trading_revenue], [Operating_expenses], [Other_operating_expenses], [EBITDA], [Impaiment_charges], [Deprecation_and_amortisation], [Net_finance_cost], [PBT], [Income_tax_expense], [Net_profit], [Net_operating_cash_flows], [EBIT], [estimated_Selling_And_Administrative_Expenses], [estimated_cost_of_goods_sold]) VALUES (2020, CAST(545 AS Decimal(18, 0)), CAST(112 AS Decimal(18, 0)), CAST(-471 AS Decimal(18, 0)), CAST(-11 AS Decimal(18, 0)), CAST(174 AS Decimal(18, 0)), CAST(-11 AS Decimal(18, 0)), CAST(-50 AS Decimal(18, 0)), CAST(-10 AS Decimal(18, 0)), CAST(103 AS Decimal(18, 0)), CAST(-32 AS Decimal(18, 0)), CAST(71 AS Decimal(18, 0)), CAST(142 AS Decimal(18, 0)), CAST(124 AS Decimal(18, 0)), CAST(-30 AS Decimal(18, 0)), CAST(-441 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_PL_and_CF] ([Year], [Revenue], [Trading_revenue], [Operating_expenses], [Other_operating_expenses], [EBITDA], [Impaiment_charges], [Deprecation_and_amortisation], [Net_finance_cost], [PBT], [Income_tax_expense], [Net_profit], [Net_operating_cash_flows], [EBIT], [estimated_Selling_And_Administrative_Expenses], [estimated_cost_of_goods_sold]) VALUES (2021, CAST(719 AS Decimal(18, 0)), CAST(206 AS Decimal(18, 0)), CAST(-619 AS Decimal(18, 0)), CAST(-14 AS Decimal(18, 0)), CAST(292 AS Decimal(18, 0)), CAST(-6 AS Decimal(18, 0)), CAST(-52 AS Decimal(18, 0)), CAST(-7 AS Decimal(18, 0)), CAST(226 AS Decimal(18, 0)), CAST(-67 AS Decimal(18, 0)), CAST(159 AS Decimal(18, 0)), CAST(225 AS Decimal(18, 0)), CAST(240 AS Decimal(18, 0)), CAST(-39 AS Decimal(18, 0)), CAST(-580 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_PL_and_CF] ([Year], [Revenue], [Trading_revenue], [Operating_expenses], [Other_operating_expenses], [EBITDA], [Impaiment_charges], [Deprecation_and_amortisation], [Net_finance_cost], [PBT], [Income_tax_expense], [Net_profit], [Net_operating_cash_flows], [EBIT], [estimated_Selling_And_Administrative_Expenses], [estimated_cost_of_goods_sold]) VALUES (2022, CAST(711 AS Decimal(18, 0)), CAST(232 AS Decimal(18, 0)), CAST(-655 AS Decimal(18, 0)), CAST(-15 AS Decimal(18, 0)), CAST(274 AS Decimal(18, 0)), CAST(-9 AS Decimal(18, 0)), CAST(-49 AS Decimal(18, 0)), CAST(-5 AS Decimal(18, 0)), CAST(211 AS Decimal(18, 0)), CAST(-57 AS Decimal(18, 0)), CAST(153 AS Decimal(18, 0)), CAST(180 AS Decimal(18, 0)), CAST(225 AS Decimal(18, 0)), CAST(-41 AS Decimal(18, 0)), CAST(-614 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_PL_and_CF] ([Year], [Revenue], [Trading_revenue], [Operating_expenses], [Other_operating_expenses], [EBITDA], [Impaiment_charges], [Deprecation_and_amortisation], [Net_finance_cost], [PBT], [Income_tax_expense], [Net_profit], [Net_operating_cash_flows], [EBIT], [estimated_Selling_And_Administrative_Expenses], [estimated_cost_of_goods_sold]) VALUES (2023, CAST(667 AS Decimal(18, 0)), CAST(178 AS Decimal(18, 0)), CAST(-628 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(217 AS Decimal(18, 0)), CAST(-18 AS Decimal(18, 0)), CAST(-59 AS Decimal(18, 0)), CAST(-10 AS Decimal(18, 0)), CAST(130 AS Decimal(18, 0)), CAST(-40 AS Decimal(18, 0)), CAST(90 AS Decimal(18, 0)), CAST(132 AS Decimal(18, 0)), CAST(158 AS Decimal(18, 0)), CAST(-39 AS Decimal(18, 0)), CAST(-589 AS Decimal(18, 0)))
GO
INSERT [dbo].[Top40_Mining_Comp_Short_Liabilities] ([Year], [Accounts_payable], [Borrowings], [Other], [Total_current_liabilities]) VALUES (2017, CAST(89 AS Decimal(18, 0)), CAST(44 AS Decimal(18, 0)), CAST(54 AS Decimal(18, 0)), CAST(187 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_Short_Liabilities] ([Year], [Accounts_payable], [Borrowings], [Other], [Total_current_liabilities]) VALUES (2018, CAST(87 AS Decimal(18, 0)), CAST(34 AS Decimal(18, 0)), CAST(55 AS Decimal(18, 0)), CAST(176 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_Short_Liabilities] ([Year], [Accounts_payable], [Borrowings], [Other], [Total_current_liabilities]) VALUES (2019, CAST(98 AS Decimal(18, 0)), CAST(45 AS Decimal(18, 0)), CAST(57 AS Decimal(18, 0)), CAST(199 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_Short_Liabilities] ([Year], [Accounts_payable], [Borrowings], [Other], [Total_current_liabilities]) VALUES (2020, CAST(86 AS Decimal(18, 0)), CAST(44 AS Decimal(18, 0)), CAST(62 AS Decimal(18, 0)), CAST(192 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_Short_Liabilities] ([Year], [Accounts_payable], [Borrowings], [Other], [Total_current_liabilities]) VALUES (2021, CAST(82 AS Decimal(18, 0)), CAST(49 AS Decimal(18, 0)), CAST(103 AS Decimal(18, 0)), CAST(234 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_Short_Liabilities] ([Year], [Accounts_payable], [Borrowings], [Other], [Total_current_liabilities]) VALUES (2022, CAST(95 AS Decimal(18, 0)), CAST(45 AS Decimal(18, 0)), CAST(97 AS Decimal(18, 0)), CAST(238 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Comp_Short_Liabilities] ([Year], [Accounts_payable], [Borrowings], [Other], [Total_current_liabilities]) VALUES (2023, CAST(127 AS Decimal(18, 0)), CAST(48 AS Decimal(18, 0)), CAST(57 AS Decimal(18, 0)), CAST(232 AS Decimal(18, 0)))
GO
INSERT [dbo].[Top40_Mining_Compan_Current_Assets] ([Year], [Cash], [Inventories], [Account_receivable], [Other], [Total_current_assets]) VALUES (2017, CAST(99 AS Decimal(18, 0)), CAST(79 AS Decimal(18, 0)), CAST(60 AS Decimal(18, 0)), CAST(38 AS Decimal(18, 0)), CAST(276 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Compan_Current_Assets] ([Year], [Cash], [Inventories], [Account_receivable], [Other], [Total_current_assets]) VALUES (2018, CAST(101 AS Decimal(18, 0)), CAST(77 AS Decimal(18, 0)), CAST(55 AS Decimal(18, 0)), CAST(52 AS Decimal(18, 0)), CAST(285 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Compan_Current_Assets] ([Year], [Cash], [Inventories], [Account_receivable], [Other], [Total_current_assets]) VALUES (2019, CAST(88 AS Decimal(18, 0)), CAST(83 AS Decimal(18, 0)), CAST(48 AS Decimal(18, 0)), CAST(62 AS Decimal(18, 0)), CAST(282 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Compan_Current_Assets] ([Year], [Cash], [Inventories], [Account_receivable], [Other], [Total_current_assets]) VALUES (2020, CAST(123 AS Decimal(18, 0)), CAST(87 AS Decimal(18, 0)), CAST(41 AS Decimal(18, 0)), CAST(55 AS Decimal(18, 0)), CAST(307 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Compan_Current_Assets] ([Year], [Cash], [Inventories], [Account_receivable], [Other], [Total_current_assets]) VALUES (2021, CAST(156 AS Decimal(18, 0)), CAST(98 AS Decimal(18, 0)), CAST(45 AS Decimal(18, 0)), CAST(71 AS Decimal(18, 0)), CAST(370 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Compan_Current_Assets] ([Year], [Cash], [Inventories], [Account_receivable], [Other], [Total_current_assets]) VALUES (2022, CAST(141 AS Decimal(18, 0)), CAST(98 AS Decimal(18, 0)), CAST(53 AS Decimal(18, 0)), CAST(94 AS Decimal(18, 0)), CAST(386 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Compan_Current_Assets] ([Year], [Cash], [Inventories], [Account_receivable], [Other], [Total_current_assets]) VALUES (2023, CAST(142 AS Decimal(18, 0)), CAST(104 AS Decimal(18, 0)), CAST(72 AS Decimal(18, 0)), CAST(46 AS Decimal(18, 0)), CAST(364 AS Decimal(18, 0)))
GO
INSERT [dbo].[Top40_Mining_Compan_Non_Current_Assets] ([Year], [Property_plant_and_equipment], [Goodwill_and_other_intangibles], [Investment_in_assosiates_and_joint_ventures], [Other_investments_and_loang_granted], [Other], [Total_non_current_assets], [Total_assets]) VALUES (2017, CAST(644 AS Decimal(18, 0)), CAST(56 AS Decimal(18, 0)), CAST(44 AS Decimal(18, 0)), CAST(24 AS Decimal(18, 0)), CAST(66 AS Decimal(18, 0)), CAST(834 AS Decimal(18, 0)), CAST(1110 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Compan_Non_Current_Assets] ([Year], [Property_plant_and_equipment], [Goodwill_and_other_intangibles], [Investment_in_assosiates_and_joint_ventures], [Other_investments_and_loang_granted], [Other], [Total_non_current_assets], [Total_assets]) VALUES (2018, CAST(610 AS Decimal(18, 0)), CAST(52 AS Decimal(18, 0)), CAST(43 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), CAST(60 AS Decimal(18, 0)), CAST(795 AS Decimal(18, 0)), CAST(1080 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Compan_Non_Current_Assets] ([Year], [Property_plant_and_equipment], [Goodwill_and_other_intangibles], [Investment_in_assosiates_and_joint_ventures], [Other_investments_and_loang_granted], [Other], [Total_non_current_assets], [Total_assets]) VALUES (2019, CAST(649 AS Decimal(18, 0)), CAST(57 AS Decimal(18, 0)), CAST(80 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(71 AS Decimal(18, 0)), CAST(857 AS Decimal(18, 0)), CAST(1139 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Compan_Non_Current_Assets] ([Year], [Property_plant_and_equipment], [Goodwill_and_other_intangibles], [Investment_in_assosiates_and_joint_ventures], [Other_investments_and_loang_granted], [Other], [Total_non_current_assets], [Total_assets]) VALUES (2020, CAST(653 AS Decimal(18, 0)), CAST(62 AS Decimal(18, 0)), CAST(74 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(67 AS Decimal(18, 0)), CAST(856 AS Decimal(18, 0)), CAST(1163 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Compan_Non_Current_Assets] ([Year], [Property_plant_and_equipment], [Goodwill_and_other_intangibles], [Investment_in_assosiates_and_joint_ventures], [Other_investments_and_loang_granted], [Other], [Total_non_current_assets], [Total_assets]) VALUES (2021, CAST(647 AS Decimal(18, 0)), CAST(73 AS Decimal(18, 0)), CAST(76 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(69 AS Decimal(18, 0)), CAST(865 AS Decimal(18, 0)), CAST(1235 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Compan_Non_Current_Assets] ([Year], [Property_plant_and_equipment], [Goodwill_and_other_intangibles], [Investment_in_assosiates_and_joint_ventures], [Other_investments_and_loang_granted], [Other], [Total_non_current_assets], [Total_assets]) VALUES (2022, CAST(676 AS Decimal(18, 0)), CAST(78 AS Decimal(18, 0)), CAST(78 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(68 AS Decimal(18, 0)), CAST(900 AS Decimal(18, 0)), CAST(1286 AS Decimal(18, 0)))
INSERT [dbo].[Top40_Mining_Compan_Non_Current_Assets] ([Year], [Property_plant_and_equipment], [Goodwill_and_other_intangibles], [Investment_in_assosiates_and_joint_ventures], [Other_investments_and_loang_granted], [Other], [Total_non_current_assets], [Total_assets]) VALUES (2023, CAST(702 AS Decimal(18, 0)), CAST(70 AS Decimal(18, 0)), CAST(77 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(75 AS Decimal(18, 0)), CAST(924 AS Decimal(18, 0)), CAST(1288 AS Decimal(18, 0)))
GO
USE [master]
GO
ALTER DATABASE [KGHM] SET  READ_WRITE 
GO
