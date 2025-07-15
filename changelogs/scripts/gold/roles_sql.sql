--liquibase formatted sql

--changeset narasimman:grant-access-roles-to-bronze
GRANT USE SCHEMA ON SCHEMA gold TO `dev_full_access_data_engineers`;
GRANT CREATE TABLE ON SCHEMA gold TO `dev_full_access_data_engineers`;
GRANT MODIFY ON SCHEMA gold TO `dev_full_access_data_engineers`;
GRANT SELECT ON SCHEMA gold TO `dev_full_access_data_engineers`;
GRANT MANAGE ON SCHEMA gold TO `dev_full_access_data_engineers`;

GRANT USE SCHEMA ON SCHEMA gold TO `dev_restricted_access_data_engineers`;
GRANT CREATE TABLE ON SCHEMA gold TO `dev_restricted_access_data_engineers`;
GRANT MODIFY ON SCHEMA gold TO `dev_restricted_access_data_engineers`;
GRANT SELECT ON SCHEMA gold TO `dev_restricted_access_data_engineers`;

--rollback 
REVOKE MANAGE ON SCHEMA gold FROM `dev_full_access_data_engineers`;
REVOKE SELECT ON SCHEMA gold FROM `dev_full_access_data_engineers`;
REVOKE MODIFY ON SCHEMA gold FROM `dev_full_access_data_engineers`;
REVOKE CREATE TABLE ON SCHEMA gold FROM `dev_full_access_data_engineers`;
REVOKE USE SCHEMA ON SCHEMA gold FROM `dev_full_access_data_engineers`;

REVOKE SELECT ON SCHEMA gold FROM `dev_restricted_access_data_engineers`;
REVOKE MODIFY ON SCHEMA gold FROM `dev_restricted_access_data_engineers`;
REVOKE CREATE TABLE ON SCHEMA gold FROM `dev_restricted_access_data_engineers`;
REVOKE USE SCHEMA ON SCHEMA gold FROM `dev_restricted_access_data_engineers`;
