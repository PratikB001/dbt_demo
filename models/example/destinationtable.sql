-- {{ config(materialized='table',full_refresh=true) }}

-- select * from sourcettable where entrydate > (select max(entrydate) from {{ this }})

-- {{ config( materialized='incremental', incremental_strategy='append') }}

-- select * from sourcettable where entrydate >= (select max(entrydate) from {{ this }})

-- {{ config( materialized="incremental", incremental_strategy = 'merge') }}

-- select * from sourcettable where age > (select min(age) from {{ this }})

{{config(
    materialized ='incremental',
    incremental_strategy= 'append'
) }}

select * from sourcettable where entrydate >= (select max(entrydate)  from {{ this }})


