{{
    config(
        materialized='table'
    )
}}


select * 
from raw_analytics.globalmart.products