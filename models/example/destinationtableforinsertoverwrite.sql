{{config(
    materialized ='incremental'
) }}

select * from sourcettable 
where order_ingestion_datetime > (select max(order_ingestion_datetime)  from {{ this }})