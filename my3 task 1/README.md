# Task 1: Data Immersion & Wrangling

## Project Overview

This project is completed as part of the ApexPlanet Data Analytics Internship Task 1.

The objective of this task is to understand the given dataset, identify data quality issues, clean the data, perform transformations, and prepare a final analysis-ready dataset.

## Dataset Used

The dataset used in this project is a dirty financial transactions dataset.

It contains transaction-related details such as:

- Transaction ID
- Transaction Date
- Customer ID
- Product Name
- Quantity
- Price
- Payment Method
- Transaction Status

## Objective

The main objective of this project is to clean and prepare the dataset for analysis using Python.

This task includes:

- Understanding the dataset
- Creating a data dictionary
- Identifying missing values
- Handling duplicate records
- Cleaning invalid and inconsistent values
- Fixing incorrect data types
- Standardizing text fields
- Handling negative numeric values
- Creating new calculated columns
- Exporting a cleaned dataset

## Data Quality Issues Found

The raw dataset contained several data quality issues, including:

- Missing values in transaction date, customer ID, product name, price, payment method, and transaction status
- Invalid date formats such as incorrect month or day values
- Negative values in quantity and price columns
- Price values stored with currency symbols
- Inconsistent payment method names such as PayPal, pay pal, creditcard, and Credit Card
- Inconsistent transaction status values such as complete, completed, Pending, and Failed
- Numeric columns stored as text
- Duplicate records

## Data Cleaning Steps Performed

The following data cleaning steps were performed using Python, Pandas, and NumPy:

1. Loaded the raw dataset
2. Standardized column names
3. Replaced blank and invalid values with missing values
4. Removed duplicate records
5. Removed currency symbols from the price column
6. Converted price and quantity columns into numeric format
7. Converted negative quantity and price values into positive values
8. Converted transaction date into proper datetime format
9. Filled missing categorical values with "Unknown"
10. Filled missing numeric values using median values
11. Standardized product names
12. Standardized payment method names
13. Standardized transaction status values
14. Created new calculated columns
15. Exported the final cleaned dataset

## Feature Engineering

New columns were created from the existing dataset:

- `total_amount`: Calculated using quantity × price
- `transaction_month`: Extracted from transaction date
- `transaction_year`: Extracted from transaction date
- `high_value_transaction`: Identifies whether a transaction value is greater than 1000

## Files Included

| File Name | Description |
|---|---|
| dirty_financial_transactions.csv | Raw dataset before cleaning |
| cleaned_financial_transactions.csv | Final cleaned dataset after cleaning |
| data_cleaning.py | Python script used for cleaning and transformation |
| data_dictionary.csv | Data dictionary explaining each column |
| README.md | Project documentation |

## Tools Used

- Python
- Pandas
- NumPy
- VS Code
- GitHub

## Final Output

The final output is a cleaned and analysis-ready financial transactions dataset.

This cleaned dataset can be used for:

- Transaction analysis
- Customer purchase analysis
- Product performance analysis
- Payment method analysis
- Transaction status analysis
- High-value transaction identification

## Conclusion

This project helped in understanding the importance of data cleaning and preparation before performing analysis.

By handling missing values, invalid dates, negative values, inconsistent formatting, and creating new calculated columns, the raw dataset was transformed into a clean and useful dataset for future analysis.