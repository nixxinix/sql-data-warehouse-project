# Naming Conventions

This document defines the naming conventions used in the data warehouse to keep database objects consistent, readable, and organized.

## General Rules

- Use `snake_case` with lowercase letters and underscores.
- Use English and meaningful names.
- Avoid SQL reserved words.

## Table Naming

### Bronze Layer
- Use `<source>_<entity>`.
- Keep the original source table names.

Examples: `crm_cust_info`, `erp_loc_a101`

### Silver Layer
- Use `<source>_<entity>`.
- Keep source-based names while cleaning and standardizing the data.

Examples: `crm_sales_details`, `erp_cust_az12`

### Gold Layer
- Use `<category>_<entity>`.
- Use business-friendly names.

Examples:
- `dim_customers` — Customer dimension
- `dim_products` — Product dimension
- `fact_sales` — Sales transactions

## Column Naming

### Surrogate Keys
- Use the `_key` suffix for dimension surrogate keys.

Examples: `customer_key`, `product_key`

### Technical Columns
- Use the `dwh_` prefix for warehouse-generated metadata.

Examples: `dwh_create_date`, `dwh_update_date`

## Stored Procedure Naming

- Use `load_<layer>` for data-loading procedures.

Examples:
- `load_bronze`
- `load_silver`
- `load_gold`
