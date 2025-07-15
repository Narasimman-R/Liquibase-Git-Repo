# Folder Structure Guide

##  changelogs/scripts/schemaName/sqlfiles

Contains all version-controlled change sets using SQL or XML. Subfolders:
--Write the SQL commands in the files
-- we have master_changelogs.xml to combine all the sql files

##  drivers/

JDBC JAR files needed for Liquibase to connect to Databricks.

##  docs/

All internal documentation for onboarding, conventions, architecture, and CI/CD setup.

