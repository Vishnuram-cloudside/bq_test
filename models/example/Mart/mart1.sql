{{config(materialized='table')}}
select * from {{ref('inter1')}}