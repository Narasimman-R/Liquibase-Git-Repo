# Liquibase Repo

This repository contains Liquibase changelogs, SQL scripts, and environment-specific configurations for managing database schema changes.

# Liquibase Schema Management for Databricks

This repository manages version-controlled schema changes using **Liquibase** for **Databricks**. It supports multi-environment deployments (Dev, QA, Prod) and is CI/CD enabled via Azure DevOps.

---

## Folder Overview

| Folder | Description |
|--------|-------------|
| `/changelogs` | Contains SQL-based change logs |
| `/env` | Environment-specific Liquibase config files |
| `/drivers` | JDBC driver JARs for Databricks |
| `/scripts` | Utility scripts to run Liquibase |
| `/pipelines` | Azure DevOps CI/CD YAML definitions |
| `/docs` | Project documentation |

---