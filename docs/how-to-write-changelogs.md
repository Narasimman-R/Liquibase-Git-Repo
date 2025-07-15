# How to Write Liquibase Changelogs
Liquibase changelogs in SQL format allow you to define database schema changes declaratively. When using Databricks with Delta Lake, special attention is needed for features like columnMapping, rollback support, and schema-specific privileges.

## SQL Format Example

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

-- Note: 'delta.columnMapping.mode = name' must be enabled to allow ALTER operations like DROP or RENAME COLUMN on Delta tables.
```

## General Rules
    Each changeset starts with --changeset author:id

    Each file must begin with --liquibase formatted sql

    Comments should use standard SQL comment style: -- your comment here

    Use fully qualified table names: catalog.schema.table

    Keep one logical change per changeset for better rollback and auditability
    
## Best Practices
| Guideline                | Recommendation                                                             |
| ------------------------ | -------------------------------------------------------------------------- |
| **Author and ID**        | Use meaningful `author:id`, e.g., `narasimman:create-customer-table`       |
| **Rollback**             | Always include a rollback command, if possible                             |
| **Column Mapping**       | Use `delta.columnMapping.mode = name` if you plan to rename/drop columns   |
| **Naming**               | Avoid using duplicate changeset IDs across changelog files                 |
| **Context** *(optional)* | Add `context:dev` or `context:test` to control environment-specific runs   |
| **Permissions**          | Use separate changesets for each GRANT/REVOKE for better audit granularity |

## Rollback Example
--changeset narasimman:add-index-to-employee
CREATE INDEX emp_name_idx ON silver.employee (name);
--rollback DROP INDEX emp_name_idx;
-- Note: add rollback command enable rollback feature.


##Tagging Example (CLI)
You can tag important versions during deployment:

command: liquibase tag v1.0 --url $URL

This will mark the current point in the changelog history as v1.0.