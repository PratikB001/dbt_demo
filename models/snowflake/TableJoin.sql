-- With source_sales as (
--     select a.id, a.name, a.age from {{source('sourcename', 'TABLE1')}} as a
--     join
--     {{source('sourcename', 'TABLE2')}} as b
--     on a.name = b.name
-- )

-- select * from source_sales 

with source_sales as (
SELECT a.ID, a.NAME, a.AGE
FROM {{ source("sourcename", "TABLE1") }} as a
INNER JOIN 
{{source("sourcename", "TABLE2")}} as b 
on a.NAME = b.NAME
)

select * from source_sales
