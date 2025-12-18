# SQL INSERT

## 1. Basic INSERT

```sql
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);
```

## 2. INSERT Multiple Rows

```sql
INSERT INTO table_name (column1, column2, column3)
VALUES
(value1, value2, value3),
(value1, value2, value3),
(value1, value2, value3);
```

---

## 3. INSERT Using SELECT

```sql
INSERT INTO table_name (column1, column2)
SELECT columnA, columnB
FROM another_table
WHERE condition;
```

---

## 4. INSERT With Transaction

```sql
BEGIN;

INSERT INTO table_name (column1, column2)
VALUES (value1, value2);

INSERT INTO table_name (column1, column2)
VALUES (value3, value4);

COMMIT;
```

---