{{ config(
    materialized='dynamic_table',
    target_lag='downstream',
    snowflake_warehouse='COMPUTE_WH'
) }}

  with source_data as (
      select 1 as id
      union all
      select null as id
  )

select *
from source_data
