# Basic SQL Concepts: Theory + Examples

This guide covers **CREATE TABLE**, **ALTER TABLE**, **SQL data types**, and **database migrations (up & down)** with clear theory and practical examples. 

---

## 1. What is SQL?

**SQL (Structured Query Language)** is used to:

* Define database structure (DDL – Data Definition Language)
* Manipulate data (DML – INSERT, UPDATE, DELETE)
* Query data (SELECT)

Here we focus on **DDL**.

---

## 2. CREATE TABLE

### Theory

`CREATE TABLE` is used to **create a new table** in the database.
A table is made of:

* **Columns** (fields)
* **Data types** (what kind of data each column can store)
* **Constraints** (rules like NOT NULL, PRIMARY KEY)

### Basic Syntax

```sql
CREATE TABLE table_name (
    column_name data_type constraints,
    column_name data_type constraints
);
```
---

## 3. SQL Data Types (Most Common)

### Numeric Types

| Type              | Description              |
| ----------------- | ------------------------ |
| INTEGER           | Whole numbers            |
| SMALLINT          | Small whole numbers      |
| BIGINT            | Large whole numbers      |
| REAL / FLOAT      | Decimal numbers          |
| NUMERIC / DECIMAL | Precise decimals (money) |

### Text Types

| Type       | Description            |
| ---------- | ---------------------- |
| TEXT       | Variable-length string |
| VARCHAR(n) | String with limit      |
| CHAR(n)    | Fixed-length string    |

> SQLite prefers `TEXT`, PostgreSQL supports both `TEXT` and `VARCHAR`.

### Date & Time

| Type      | Description |
| --------- | ----------- |
| DATE      | Date only   |
| TIME      | Time only   |
| TIMESTAMP | Date + time |

### Boolean

| Type    | Description  |
| ------- | ------------ |
| BOOLEAN | true / false |

---

## 4. ALTER TABLE

### Theory

`ALTER TABLE` is used to **modify an existing table** without deleting data.
You can:

* Add columns
* Rename columns
* Change data types (DB dependent)
* Drop columns

### Add Column

```sql
ALTER TABLE table_name
ADD COLUMN column_name data_type;
```

### Rename Column

```sql
ALTER TABLE table_name
RENAME COLUMN column_name TO new_column_name;
```

### Drop Column

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

---

## 5. What is a Database Migration?

### Theory

A **migration** is a version-controlled way to:

* Change database schema
* Track changes over time
* Apply changes consistently across environments

Instead of manually running SQL, we use **migration files**.

---

## 6. Up Migration

### Theory

**Up migration** applies changes to the database.
Examples:

* Create table
* Add column
* Add index

### Example (up.sql)

```sql
-- 001_create_table.up.sql
CREATE TABLE table_name (
    column_name data_type constraints,
    column_name data_type constraints
);
```

---

## 7. Down Migration

### Theory

**Down migration** reverses what the up migration did.
Used when:

* You want to rollback
* A deployment fails

### Example (down.sql)

```sql
-- 001_create_table.down.sql
DROP TABLE table_name;
```
---

## 8. Why Up & Down Migrations Are Important

### 1. Safe Rollback

If production breaks:

```bash
migrate down
```

### 2. Team Collaboration

* Everyone has same schema
* No manual DB changes

### 3. Version Control

Schema changes are tracked like code.

### 4. CI/CD Friendly

Migrations run automatically in pipelines.

---

## 9. Typical Migration Folder Structure

```text
migrations/
├── 001_create_students_table.up.sql
├── 001_create_students_table.down.sql
├── 002_add_email_column.up.sql
├── 002_add_email_column.down.sql
```

---
