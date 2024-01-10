{% macro dol_eur(colm, deci) -%}
  round(0.91 * {{ colm }}, {{ deci }}) 
{%- endmacro %}

{% macro testdml() %}
{% set queries %}
BEGIN transaction;
create or replace table analytics.dbt_sonika.protest(id int , cname varchar);
insert into analytics.dbt_sonika.protest values(10,'sonika'),(11,'Hitesh'),(12,'Adish');
{% endset %}
{% do run_query(queries)%}
{% endmacro %}

{% macro money() -%}
::decimal(16,4)
{%- endmacro %}