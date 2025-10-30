WITH orders_ship_join AS (
SELECT
*
,
FROM {{ ref('int_orders_margin') }}
LEFT JOIN {{ ref('stg_raw__ship') }}
USING (orders_id)
)
SELECT
*
,margin+shipping_fee-logcost-ship_cost AS operational_margin
FROM orders_ship_join
ORDER BY orders_id DESC
