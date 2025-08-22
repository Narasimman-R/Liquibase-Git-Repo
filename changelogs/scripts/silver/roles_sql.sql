--liquibase formatted sql

--changeset narasimman:silver-role-1
GRANT USE SCHEMA ON SCHEMA silver TO `dev_full_access_data_engineers`;

--changeset narasimman:silver-role-2
GRANT CREATE TABLE ON SCHEMA silver TO `dev_full_access_data_engineers`;

--changeset narasimman:silver-role-3
GRANT MODIFY ON SCHEMA silver TO `dev_full_access_data_engineers`;

--changeset narasimman:silver-role-4
GRANT SELECT ON SCHEMA silver TO `dev_full_access_data_engineers`;

--changeset narasimman:silver-role-5
GRANT MANAGE ON SCHEMA silver TO `dev_full_access_data_engineers`;

--changeset narasimman:silver-role-6
GRANT USE SCHEMA ON SCHEMA silver TO `dev_restricted_access_data_engineers`;

--changeset narasimman:silver-role-7
GRANT CREATE TABLE ON SCHEMA silver TO `dev_restricted_access_data_engineers`;

--changeset narasimman:silver-role-8
GRANT MODIFY ON SCHEMA silver TO `dev_restricted_access_data_engineers`;

--changeset narasimman:silver-role-9
GRANT SELECT ON SCHEMA silver TO `dev_restricted_access_data_engineers`;

