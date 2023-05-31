{% test is_nepal(model, column_name) %}
with validation as (
    select
        {{ column_name }} as country
    from {{ model }}
),
validation_errors as (
    select
        country
    from validation
    -- if this is true, then even_field is actually odd!
    where country = 'India'
)

select *
from validation_errors 

{% endtest %}