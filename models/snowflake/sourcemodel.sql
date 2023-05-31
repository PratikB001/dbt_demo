With source_sales as (
    select * from {{source('sourcename', 'TABLE1')}}
)

select * from source_sales 