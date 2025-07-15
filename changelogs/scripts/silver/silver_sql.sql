--liquibase formatted sql

--changeset narasimman:create-silver-employee-table context:dev
CREATE TABLE silver.employee_01 (
    emp_id INT PRIMARY KEY,
    name STRING,
    department STRING
);
--rollback DROP TABLE silver.employee;