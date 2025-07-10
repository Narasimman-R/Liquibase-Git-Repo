--liquibase formatted sql

--changeset narasimman:create-employee-table
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name STRING,
    department STRING
);
