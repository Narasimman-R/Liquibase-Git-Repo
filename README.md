# Liquibase Schema Management for Databricks

This repository manages database schema changes in **Databricks** using **Liquibase**.  
It is designed for **version-controlled migrations** and supports **multi-environment deployments** with CI/CD integration via Azure DevOps.

---

## Prerequisites

Before using this repository, ensure the following tools are installed on your system:

### 1. Java (required by Liquibase)
- Download from [java.com](https://www.java.com/en/download/)  
- Verify installation:  
  ```bash
  java -version
  ```

### 2. Liquibase CLI
- Install via Homebrew (Mac):  
  ```bash
  brew install liquibase
  ```
- Or download from the [Liquibase Download Page](https://www.liquibase.org/download)

### 3. Databricks JDBC Driver
- Download from [Databricks JDBC Driver](https://www.databricks.com/spark/jdbc-drivers-download)  
- Place the `.jar` file inside the `/driver` directory.

### 4. Liquibase Databricks Extension
- Download from [Maven Repository](https://mvnrepository.com/artifact/org.liquibase.ext/liquibase-databricks)  
- Place the `.jar` file inside the `/driver` directory.
---

## Folder Overview

| Path                   | Description                  |
| ---------------------- | ---------------------------- |
| `/changelogs/scripts`  | SQL-based changelogs         |
| `/driver`              | JDBC driver + Liquibase extension JARs |
| `liquibase.properties` | Liquibase configuration file |
| `requirement.txt`      | Python/CLI dependencies      |
| `README.md`            | Project usage guide          |

---

## Writing Liquibase Changelogs

All changelogs are **SQL-based** and must follow Liquibase formatting rules.

### Example

```sql
--liquibase formatted sql

--changeset narasimman:create-silver-employee-table
CREATE TABLE silver.employee (
    emp_id INT PRIMARY KEY,
    name STRING,
    department STRING
)
TBLPROPERTIES (
    'delta.columnMapping.mode' = 'name'
);

--rollback DROP TABLE silver.employee;

-- Note: 'delta.columnMapping.mode = name' must be enabled 
-- to allow ALTER operations like DROP or RENAME COLUMN on Delta tables.
```

---

## General Rules

- Each file must begin with `--liquibase formatted sql`  
- Each change starts with `--changeset author:id`  
- Use standard SQL comments: `-- comment here`  
- Always use fully qualified names: `catalog.schema.table`  
- Keep **one logical change per changeset** for better rollback and auditing  

---

## Best Practices

| Guideline                | Recommendation                                                             |
| ------------------------ | -------------------------------------------------------------------------- |
| **Author and ID**        | Use meaningful IDs, e.g., `narasimman:create-customer-table`              |
| **Rollback**             | Always include rollback statements if possible                            |
| **Column Mapping**       | Use `delta.columnMapping.mode = name` if renaming/dropping columns         |
| **Naming**               | Avoid duplicate changeset IDs across files                                |
| **Context** *(optional)* | Use contexts (`context:dev`, `context:test`) for environment-specific runs |
| **Permissions**          | Use separate changesets for each `GRANT`/`REVOKE` for auditability         |

---

## Rollback Example

```sql
--changeset narasimman:add-index-to-employee
CREATE INDEX emp_name_idx ON silver.employee (name);

--rollback DROP INDEX emp_name_idx;
-- Note: rollback command enables undo capability.
```

---

## Tagging Example (CLI)

You can tag important versions during deployment:

```bash
liquibase tag v1.0 --url $URL
```

This will mark the current point in the changelog history as `v1.0`.

---

## Running Liquibase

### Step 1 — Set environment variables (Databricks JDBC URL)

```bash
export URL="jdbc:databricks://<Workspace_URL_without_http>:443;TransportMode=http;SSL=1;\
AuthMech=3;UID=token;PWD=<access_token>;\
httpPath=<httpPath>;\
ConnCatalog=<Catalog_name>;ConnSchema=<Schema_name>;\
UserAgentEntry=Liquibase;EnableArrow=0"
```

### Step 2 — Run update command

```bash
liquibase update --url $URL
```

---

That’s it! You are ready to manage schema changes in **Databricks** with **Liquibase**.
