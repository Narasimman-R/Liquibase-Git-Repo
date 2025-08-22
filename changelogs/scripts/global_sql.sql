--liquibase formatted sql

--changeset narasimman:employee context:operational
CREATE TABLE silver.employee (
    emp_id INT PRIMARY KEY,
    name STRING,
    department STRING
)
USING DELTA
TBLPROPERTIES (
    'delta.columnMapping.mode' = 'name'
);
--rollback DROP TABLE silver.employee;
