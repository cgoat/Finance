# Finance Data Analysis

This repository contains SQL queries for analyzing financial data from SEC Edgar filings.

## Dell Technologies Inc. Revenue Analysis

The latest yearly revenue for Dell Technologies Inc. as of January 31, 2024 (fiscal year 2023) is:
- **$88,425 million USD** ($88.425 billion)

The query used to retrieve this data can be found in [dell_yearly_revenue.sql](dell_yearly_revenue.sql).

## Database Structure
The queries in this repository work with a database containing Edgar filing data with the following key tables:
- `num`: Contains numerical financial data
- `tag`: Contains metadata about financial line items
- `sub`: Contains submission data for SEC filings

These tables follow the standard SEC Edgar database structure.