--liquibase formatted sql

--changeset narasimman:operational.batch_control_table context:dev
CREATE TABLE operational.batch_control_table (
    batch_id STRING NOT NULL,
    pipeline_run_id STRING,
    batch_date date,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    status STRING,
    error_message STRING,
    updated_at TIMESTAMP,
    business_area STRING
)
USING DELTA
COMMENT 'Batch control table to track pipeline execution metadata';

--rollback DROP TABLE IF EXISTS operational.batch_control_table;