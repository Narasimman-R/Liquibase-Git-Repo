--liquibase formatted sql

--changeset narasimman:operational-role-1
GRANT USE SCHEMA ON SCHEMA operational TO `dev_full_access_data_engineers`;

--changeset narasimman:operational-role-2
GRANT CREATE TABLE ON SCHEMA operational TO `dev_full_access_data_engineers`;

--changeset narasimman:operational-role-3
GRANT MODIFY ON SCHEMA operational TO `dev_full_access_data_engineers`;

--changeset narasimman:operational-role-4
GRANT SELECT ON SCHEMA operational TO `dev_full_access_data_engineers`;

--changeset narasimman:operational-role-5
GRANT MANAGE ON SCHEMA operational TO `dev_full_access_data_engineers`;

--changeset narasimman:operational-role-6
GRANT USE SCHEMA ON SCHEMA operational TO `dev_restricted_access_data_engineers`;

--changeset narasimman:operational-role-7
GRANT CREATE TABLE ON SCHEMA operational TO `dev_restricted_access_data_engineers`;

--changeset narasimman:operational-role-8
GRANT MODIFY ON SCHEMA operational TO `dev_restricted_access_data_engineers`;

--changeset narasimman:operational-role-9
GRANT SELECT ON SCHEMA operational TO `dev_restricted_access_data_engineers`;