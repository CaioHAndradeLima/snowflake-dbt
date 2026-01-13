{{ config(
    materialized='dynamic_table',
    target_lag='downstream',
    snowflake_warehouse='COMPUTE_WH'
) }}

select *
from {{ ref('my_third_dbt_model') }}
where id = 1