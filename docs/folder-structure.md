# Folder Structure Guide

##  changelogs/

Contains all version-controlled change sets using SQL or XML. Subfolders:
- `common/`: shared changes across all environments
- `dev/`, `prod/`: environment-specific changes

##  env/

Holds `.properties` files used by Liquibase CLI to configure each environment (dev, qa, prod). Each file specifies JDBC URL, credentials, changelog location, and more.

##  drivers/

JDBC JAR files needed for Liquibase to connect to Databricks.

##  scripts/

Utility shell scripts (e.g., `run-liquibase.sh`) to run Liquibase operations with correct environment settings.

##  pipelines/

YAML definitions for Azure DevOps pipelines to automate Liquibase deployments on Git actions.

##  docs/

All internal documentation for onboarding, conventions, architecture, and CI/CD setup.

