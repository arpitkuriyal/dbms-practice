# SQL Constraints

## What are Constraints in SQL?

**Constraints** are rules applied to table columns to restrict the type of data that can be stored.

They ensure:

* Data accuracy
* Data consistency
* Integrity of relationships

Constraints are enforced **at the database level**, not application level.

---

## Why Constraints Are Important

* Prevent invalid data insertion
* Enforce business rules
* Reduce dependency on application validation
* Maintain long-term data quality

---

## Types of SQL Constraints

1. PRIMARY KEY
2. NOT NULL
3. UNIQUE
4. FOREIGN KEY
5. CHECK
6. DEFAULT

---

## 1. PRIMARY KEY

### Theory

* Uniquely identifies each row in a table
* Cannot contain NULL values
* Cannot contain duplicate values
* Only one PRIMARY KEY per table

### Generic Syntax

```sql
CREATE TABLE table_name (
    column_name data_type PRIMARY KEY
);
```

---

## 2. NOT NULL

### Theory

Ensures that a column must always have a value.

### Generic Syntax

```sql
column_name data_type NOT NULL
```

---

## 3. UNIQUE

### Theory

Ensures all values in a column are unique.

### Generic Syntax

```sql
column_name data_type UNIQUE
```

Multiple UNIQUE constraints can exist in one table.

---

## 4. FOREIGN KEY

### Theory

* Creates a relationship between two tables
* Ensures referential integrity
* Child table depends on parent table

### Generic Syntax

```sql
FOREIGN KEY (column_name)
REFERENCES parent_table(parent_column)
```

### Optional Actions

```sql
ON DELETE CASCADE
ON UPDATE CASCADE
```

---

## 5. CHECK

### Theory

Validates column values using a condition.

### Generic Syntax

```sql
column_name data_type CHECK (condition)
```

---

## 6. DEFAULT

### Theory

Provides a default value when none is specified.

### Generic Syntax

```sql
column_name data_type DEFAULT default_value
```

---

## Column-Level vs Table-Level Constraints

### Column-Level

```sql
column_name data_type constraint
```

### Table-Level

```sql
CONSTRAINT constraint_name constraint_type (column_name)
```

---

## Constraint Naming Convention

| Constraint Type | Naming Pattern  |
| --------------- | --------------- |
| Primary Key     | pk_table_name   |
| Foreign Key     | fk_table_column |
| Unique          | uq_table_column |
| Check           | chk_column      |

Naming constraints improves readability and debugging.

---


