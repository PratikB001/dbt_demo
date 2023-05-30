{% set var = "1" %}   
SELECT *
FROM table1
WHERE id = '{{ var }}'