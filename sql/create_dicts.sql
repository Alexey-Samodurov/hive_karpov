set hive.execution.engine=tez;

drop table if exists yellow_taxi.vendor_id;
drop table if exists yellow_taxi.rate_code_id;
drop table if exists yellow_taxi.payment_type;

create external table if not exists yellow_taxi.vendor_id (
    id int,
    name string
)
stored as parquet;

create external table if not exists yellow_taxi.rate_code_id
(
    id int,
    name string
)
stored as parquet;

create external table if not exists yellow_taxi.payment_type
(
    id int,
    name string
)
stored as parquet;
