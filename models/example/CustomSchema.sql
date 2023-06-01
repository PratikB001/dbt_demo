{{ config(materialized='table', schema = 'customschema')}}

select * from {{ ref('newtable') }}