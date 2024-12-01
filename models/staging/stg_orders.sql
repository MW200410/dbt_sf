select 
    -- orders 
    o.ORDERID,
    o.ORDERDATE,
    o.SHIPDATE,
    o.SHIPMODE,
    (o.ORDERSELLINGPRICE - o.ORDERCOSTPRICE) as ORDERPROFIT,
    o.ordercostprice,
    o.ordersellingprice,
    -- customers 
    c.CUSTOMERNAME,
    c.SEGMENT,
    c.COUNTRY,
     -- product 
    p.CATEGORY,
    p.PRODUCTNAME,
    p.SUBCATEGORY

from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customers') }} as c on c.customerid = o.customerid
left join {{ ref('raw_products') }} as p on p.productid = o.productid