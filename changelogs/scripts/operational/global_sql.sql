--liquibase formatted sql
--changeset narasimman:operational.batch_control_table 
CREATE TABLE operational.batch_control_table (
    batch_id STRING NOT NULL,
    pipeline_run_id STRING,
    batch_date DATE,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    status STRING,
    error_message STRING,
    updated_at TIMESTAMP,
    business_area STRING
)
USING DELTA
TBLPROPERTIES (
    'delta.columnMapping.mode' = 'name',
    'delta.enableChangeDataFeed' = 'true',
    'delta.logRetentionDuration' = 'interval 60 days'
);

--rollback DROP TABLE operational.batch_control_table;
