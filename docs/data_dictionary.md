# Data Dictionary - Bookstore Database

## Overview
This document describes all tables, columns, and relationships in the Bookstore database.

---

## Tables

### 1. Customers
Stores customer information.

| Column          | Data Type      | Constraints                  | Description |
|-----------------|----------------|------------------------------|-----------|
| cid             | INT            | PRIMARY KEY                  | Unique customer identifier |
| cname           | VARCHAR(25)    | -                            | Customer full name |
| address         | VARCHAR(50)    | -                            | Customer address |
| age             | INT            | CHECK (age >= 18 AND age <= 100) | Customer age |
| income_level    | INT            | -                            | Income level category (1 = Low, 2 = Medium, 3 = High) |
| username        | VARCHAR(15)    | -                            | Login username |
| password        | VARCHAR(20)    | -                            | Login password |

### 2. Publisher
Stores publisher information.

| Column          | Data Type      | Constraints                  | Description |
|-----------------|----------------|------------------------------|-----------|
| publisherid     | INT            | PRIMARY KEY                  | Unique publisher identifier |
| name            | VARCHAR(20)    | -                            | Publisher name |
| address         | VARCHAR(50)    | -                            | Publisher address |
| discount        | FLOAT          | CHECK (discount > 1.00 AND discount < 10.00) | Discount percentage offered |

### 3. Books
Stores book inventory and details.

| Column           | Data Type      | Constraints                  | Description |
|------------------|----------------|------------------------------|-----------|
| isbn             | INT            | PRIMARY KEY                  | Unique book identifier (ISBN) |
| title            | VARCHAR(30)    | -                            | Book title |
| author           | VARCHAR(20)    | -                            | Book author |
| qty_in_stock     | INT            | -                            | Current quantity in stock |
| price            | FLOAT          | -                            | Selling price |
| cost             | FLOAT          | -                            | Cost to purchase from publisher |
| year_published   | INT            | -                            | Year the book was published |
| publisherid      | INT            | FOREIGN KEY → Publisher      | Publisher of the book |

### 4. Orders
Stores customer orders.

| Column         | Data Type      | Constraints                     | Description |
|----------------|----------------|---------------------------------|-----------|
| ordernum       | INT            | PRIMARY KEY                     | Unique order number |
| cid            | INT            | FOREIGN KEY → Customers         | Customer who placed the order |
| cardnum        | INT            | -                               | Credit card number |
| cardmonth      | VARCHAR(10)    | -                               | Card expiration month |
| cardyear       | INT            | -                               | Card expiration year |
| order_date     | VARCHAR(10)    | -                               | Date order was placed |
| ship_date      | VARCHAR(10)    | CHECK (order_date < ship_date)  | Date order was shipped |

### 5. OrderList
Junction table linking orders to books (many-to-many).

| Column     | Data Type   | Constraints                        | Description |
|------------|-------------|------------------------------------|-----------|
| ordernum   | INT         | PRIMARY KEY + FOREIGN KEY → Orders | Order number |
| isbn       | INT         | PRIMARY KEY + FOREIGN KEY → Books  | Book ISBN |
| quantity   | INT         | -                                  | Quantity of book ordered |

### 6. StockManager
Tracks current stock levels (separate from Books table).

| Column    | Data Type   | Constraints                        | Description |
|-----------|-------------|------------------------------------|-----------|
| isbn      | INT         | PRIMARY KEY + FOREIGN KEY → Books | Book ISBN |
| quantity  | INT         | -                                  | Current stock quantity |

---

## Relationships
- One Customer can place **Many Orders** (1:N)
- One Order can contain **Many Books** (N:M via OrderList)
- One Publisher can publish **Many Books** (1:N)
- One Book can be managed by **StockManager** (1:1)

---

**Last Updated**: June 2026
