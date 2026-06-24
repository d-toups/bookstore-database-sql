# Bookstore Database – SQL Schema & Analytical Queries

**A fully normalized relational database with business-oriented analytical SQL queries** for bookstore inventory, sales, and customer management.

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Compatible-336791)](https://www.postgresql.org/)
[![MySQL](https://img.shields.io/badge/MySQL-Compatible-4479A1)](https://www.mysql.com/)
![SQL](https://img.shields.io/badge/SQL-Advanced-blue)

## Project Objective

Design and implement a scalable relational database for a bookstore operation, enabling effective management of inventory, orders, customers, and publishers while supporting data-driven decision making through advanced analytical queries.

## Key Features

- Fully normalized schema (3NF) with referential integrity
- Realistic sample dataset across 8+ tables
- Categorized query library (Basic, Analytics, Advanced)
- Complete Entity-Relationship Diagram and Data Dictionary

## Key Business Insights Available

- Top-selling books and authors
- Customer purchasing behavior and lifetime value
- Monthly sales trends and revenue analysis
- Inventory performance and low-stock alerts
- Publisher contribution to total sales

## Repository Structure

```bash
bookstore-database-sql/
├── schema/
│   └── 01_create_schema.sql          # Table creation (normalized)
├── inserts/
│   └── 01_insert_data.sql            # Sample data population
├── queries/
│   ├── 01_basic_queries.sql
│   ├── 02_analytics_queries.sql      # Business metrics
│   └── 03_advanced_queries.sql       # Window functions, CTEs, etc.
├── ERD/
│   └── bookstore_erd.png
├── docs/
│   └── data_dictionary.md
├── README.md
└── LICENSE
```

## How to Use
1. Run `schema/01_create_schema.sql` to create the database tables
2. Run `inserts/01_insert_data.sql` to populate sample data
3. Explore the analytical queries in the `queries/` folder
4. Explore the [Data Dictionary](docs/data_dictionary.md)

## ERD
![Bookstore ERD](ERD/bookstore_erd.png)

## Conclusions

This project demonstrates the design and implementation of a production-ready relational database capable of supporting core bookstore operations and delivering actionable business intelligence. 

The analytical queries provide clear value by surfacing insights into sales performance, customer behavior, inventory efficiency, and publisher contribution — insights that can directly inform purchasing decisions, marketing strategy, and operational improvements.

**Key Learnings**:
- Strong normalization and constraint design significantly improve data integrity and query efficiency.
- Well-structured analytical SQL can transform transactional data into high-value business metrics.
- Balancing normalization with practical query performance is critical in real-world database design.

## Future Enhancements

- Development of database views and stored procedures for common reporting needs
- Implementation of indexing strategy and query optimization
- Addition of triggers for automated inventory and customer notifications
- Integration with a front-end application (e.g., Streamlit or Flask) for user-facing dashboards
- Expansion into advanced analytics such as customer segmentation (RFM) and sales forecasting

## License
This project is licensed under the [MIT License](LICENSE).
