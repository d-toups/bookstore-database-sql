# Bookstore Database - SQL Schema & Analytical Queries

Complete relational database design and analytical SQL queries for a fictional bookstore management system.

## Project Overview
Designed and implemented a normalized relational database for bookstore operations, including customers, orders, inventory, and publishers. Developed multiple analytical queries to support business insights.

## Features
- Fully normalized schema (3NF)
- Proper primary keys, foreign keys, and constraints
- Analytical queries using JOINs, aggregates, and subqueries
- Entity-Relationship Diagram (ERD)

## Repository Structure

```text
bookstore-database-sql/
├── schema/
│   └── 01_create_schema.sql
├── inserts/
│   └── 01_insert_data.sql
├── queries/
│   ├── 01_basic_queries.sql
│   ├── 02_analytics_queries.sql
│   └── 03_advanced_queries.sql
├── ERD/
│   └── bookstore_erd.png
├── docs/
│   └── data_dictionary.md
└── README.md
```
## How to Use
1. Run `schema/01_create_schema.sql` to create the database tables
2. Run `inserts/01_insert_data.sql` to populate sample data
3. Explore the analytical queries in the `queries/` folder
4. Explore the [Data Dictionary](docs/data_dictionary.md)

## ERD
![Bookstore ERD](ERD/bookstore_erd.png)

## Technologies
- SQL (PostgreSQL / MySQL compatible)
- Database Design & Normalization
- Relational Modeling
- Entity-Relationship Diagrams

## License
This project is licensed under the [MIT License](LICENSE).
