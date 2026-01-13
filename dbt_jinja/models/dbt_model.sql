{{ config(
    materialized='dynamic_table',
    target_lag='downstream',
    snowflake_warehouse='COMPUTE_WH'
) }}

  with source_data as (
      select 1 as id_anything
  )

select *
from source_data
