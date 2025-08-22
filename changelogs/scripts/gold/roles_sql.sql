--liquibase formatted sql

--changeset narasimman:gold-role-1
GRANT USE SCHEMA ON SCHEMA gold TO `dev_full_access_data_engineers`;

--changeset narasimman:gold-role-2
GRANT CREATE TABLE ON SCHEMA gold TO `dev_full_access_data_engineers`;

--changeset narasimman:gold-role-3
GRANT MODIFY ON SCHEMA gold TO `dev_full_access_data_engineers`;

--changeset narasimman:gold-role-4
GRANT SELECT ON SCHEMA gold TO `dev_full_access_data_engineers`;

--changeset narasimman:gold-role-5
GRANT MANAGE ON SCHEMA gold TO `dev_full_access_data_engineers`;

--changeset narasimman:gold-role-6
GRANT USE SCHEMA ON SCHEMA gold TO `dev_restricted_access_data_engineers`;

--changeset narasimman:gold-role-7
GRANT CREATE TABLE ON SCHEMA gold TO `dev_restricted_access_data_engineers`;

--changeset narasimman:gold-role-8
GRANT MODIFY ON SCHEMA gold TO `dev_restricted_access_data_engineers`;

--changeset narasimman:gold-role-9
GRANT SELECT ON SCHEMA gold TO `dev_restricted_access_data_engineers`;

