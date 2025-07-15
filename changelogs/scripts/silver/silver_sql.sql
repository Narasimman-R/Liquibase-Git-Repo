--liquibase formatted sql

--changeset narasimman:create-silver-employee-table-v2 context:dev
CREATE TABLE silver.employee (
    emp_id INT PRIMARY KEY,
    name STRING,
    department STRING
);
--rollback DROP TABLE silver.employee;

-- Column mapping required to allow DROP/RENAME column operations in Delta Lake.
--changeset narasimman:enable-columnMapping-silver-employee-table context:dev
ALTER TABLE silver.employee SET TBLPROPERTIES ('delta.columnMapping.mode' = 'name');
--rollback -- not supported reversal once column mapping is enabled

--changeset narasimman:rename-department-column context:dev
ALTER TABLE silver.employee RENAME COLUMN department TO department_store;
--rollback ALTER TABLE silver.employee RENAME COLUMN department_store TO department;

