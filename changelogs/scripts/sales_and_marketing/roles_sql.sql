--liquibase formatted sql

--changeset narasimman:grant-access-roles-to-bronze
GRANT USE SCHEMA ON SCHEMA sales_and_marketing TO `dev_full_access_data_engineers`;
GRANT CREATE TABLE ON SCHEMA sales_and_marketing TO `dev_full_access_data_engineers`;
GRANT MODIFY ON SCHEMA sales_and_marketing TO `dev_full_access_data_engineers`;
GRANT SELECT ON SCHEMA sales_and_marketing TO `dev_full_access_data_engineers`;
GRANT MANAGE ON SCHEMA sales_and_marketing TO `dev_full_access_data_engineers`;

GRANT USE SCHEMA ON SCHEMA sales_and_marketing TO `dev_restricted_access_data_engineers`;
GRANT CREATE TABLE ON SCHEMA sales_and_marketing TO `dev_restricted_access_data_engineers`;
GRANT MODIFY ON SCHEMA sales_and_marketing TO `dev_restricted_access_data_engineers`;
GRANT SELECT ON SCHEMA sales_and_marketing TO `dev_restricted_access_data_engineers`;

-- --rollback 
-- REVOKE MANAGE ON SCHEMA sales_and_marketing FROM `dev_full_access_data_engineers`;
-- REVOKE SELECT ON SCHEMA sales_and_marketing FROM `dev_full_access_data_engineers`;
-- REVOKE MODIFY ON SCHEMA sales_and_marketing FROM `dev_full_access_data_engineers`;
-- REVOKE CREATE TABLE ON SCHEMA sales_and_marketing FROM `dev_full_access_data_engineers`;
-- REVOKE USE SCHEMA ON SCHEMA sales_and_marketing FROM `dev_full_access_data_engineers`;

-- REVOKE SELECT ON SCHEMA sales_and_marketing FROM `dev_restricted_access_data_engineers`;
-- REVOKE MODIFY ON SCHEMA sales_and_marketing FROM `dev_restricted_access_data_engineers`;
-- REVOKE CREATE TABLE ON SCHEMA sales_and_marketing FROM `dev_restricted_access_data_engineers`;
-- REVOKE USE SCHEMA ON SCHEMA sales_and_marketing FROM `dev_restricted_access_data_engineers`;
