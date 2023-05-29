{{ config(
  materialized='table',
  file_format='delta'
) }}

select id, name
from table1