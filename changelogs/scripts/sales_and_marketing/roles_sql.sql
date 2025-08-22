--liquibase formatted sql

--changeset narasimman:sales_and_marketing-role-1
GRANT USE SCHEMA ON SCHEMA sales_and_marketing TO `dev_full_access_data_engineers`;

--changeset narasimman:sales_and_marketing-role-2
GRANT CREATE TABLE ON SCHEMA sales_and_marketing TO `dev_full_access_data_engineers`;

--changeset narasimman:sales_and_marketing-role-3
GRANT MODIFY ON SCHEMA sales_and_marketing TO `dev_full_access_data_engineers`;

--changeset narasimman:sales_and_marketing-role-4
GRANT SELECT ON SCHEMA sales_and_marketing TO `dev_full_access_data_engineers`;

--changeset narasimman:sales_and_marketing-role-5
GRANT MANAGE ON SCHEMA sales_and_marketing TO `dev_full_access_data_engineers`;

--changeset narasimman:sales_and_marketing-role-6
GRANT USE SCHEMA ON SCHEMA sales_and_marketing TO `dev_restricted_access_data_engineers`;

--changeset narasimman:sales_and_marketing-role-7
GRANT CREATE TABLE ON SCHEMA sales_and_marketing TO `dev_restricted_access_data_engineers`;

--changeset narasimman:sales_and_marketing-role-8
GRANT MODIFY ON SCHEMA sales_and_marketing TO `dev_restricted_access_data_engineers`;

--changeset narasimman:sales_and_marketing-role-9
GRANT SELECT ON SCHEMA sales_and_marketing TO `dev_restricted_access_data_engineers`;

