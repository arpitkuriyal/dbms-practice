# Basic SQL Part 1
`CREATE TABLE` is used to create a new table in the database. A table is made of:
- Columns (fields)
- Data types (what kind of data each column can store)
- Constraints (rules like NOT NULL, PRIMARY KEY)  
## Basic Syntax
``` sql
CREATE TABLE table_name (
  column_name data_type constraints,
  column_name data_type constraints
);
```
## SQL Data Types (Most Common)

## Numeric Types

| Type              | Description              |
| ----------------- | ------------------------ |
| INTEGER           | Whole numbers            |
| SMALLINT          | Small whole numbers      |
| BIGINT            | Large whole numbers      |
| REAL / FLOAT      | Decimal numbers          |
| NUMERIC / DECIMAL | Precise decimals (money) |

---

## Text Types

| Type       | Description            |
| ---------- | ---------------------- |
| TEXT       | Variable-length string |
| VARCHAR(n) | String with limit      |
| CHAR(n)    | Fixed-length string    |

> SQLite prefers `TEXT`, PostgreSQL supports both `TEXT` and `VARCHAR`.

---

## Date & Time

| Type      | Description |
| --------- | ----------- |
| DATE      | Date only   |
| TIME      | Time only   |
| TIMESTAMP | Date + time |

---

## Boolean

| Type    | Description  |
| ------- | ------------ |
| BOOLEAN | true / false |

---
