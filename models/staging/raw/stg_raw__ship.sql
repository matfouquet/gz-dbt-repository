with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        CAST(shipping_fee AS float64) AS shipping_fee,
        CAST(logcost AS float64) AS logcost,
        CAST(ship_cost AS float64) AS ship_cost,

    from source

)

select * from renamed