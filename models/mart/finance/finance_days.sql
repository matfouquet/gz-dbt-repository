SELECT 
date_date
,COUNT(orders_id) AS nb_transactions
,SUM(revenue) AS revenue
,AVG(revenue) AS average_basket
,SUM(operational_margin) AS operational_margin
,SUM(margin) AS margin
,SUM(purchase_cost) AS purchase_cost
,SUM(shipping_fee) AS shipping_fee
,SUM(logcost) AS log_cost
,SUM(ship_cost) AS ship_cost
,SUM(quantity) AS total_quantity_of_products_sold,
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date
