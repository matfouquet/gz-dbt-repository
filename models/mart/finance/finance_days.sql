SELECT 
date_date
,COUNT(orders_id) AS nb_transactions
,SUM(revenue) AS revenue
,AVG(revenue) AS average_basket
,SUM(operational_margin) AS operational_margin
,SUM(purchase_cost) AS purchase_cost
,SUM(shipping_fee) AS total_purchase_cost
,SUM(logcost) AS total_log_costs
,SUM(quantity) AS total_quantity_of_products_sold
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date
