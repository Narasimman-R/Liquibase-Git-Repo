# How to Write Liquibase Changelogs

## SQL Format Example

```sql
--liquibase formatted sql
--changeset narasimman:001-create-employee-table context:dev
CREATE TABLE employee (
  emp_id INT PRIMARY KEY,
  name STRING,
  department STRING
);


