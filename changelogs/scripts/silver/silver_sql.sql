--liquibase formatted sql

--changeset narasimman:create-silver-employee-table
CREATE TABLE silver.employee_02 (
    emp_id INT PRIMARY KEY,
    name STRING,
    department STRING
)
TBLPROPERTIES (
    'delta.columnMapping.mode' = 'name'
);
--rollback DROP TABLE silver.employee;
