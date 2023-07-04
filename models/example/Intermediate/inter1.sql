{{config(materialized='ephemeral')}}

select a.post_id,a.post_business_id from {{ref('stage1')}} a
inner join {{ref('stage2')}} b
on a.post_business_id  = b.post_business_id

order by 1
limit 10
