with enriched as (
    select * from {{ ref('int_orders_enriched') }}
),

customer_summary as (
    select
        customer_unique_id,
        customer_state,
        customer_city,
        count(distinct order_id)                                as total_orders,
        sum(total_order_value)                                  as lifetime_value,
        avg(total_order_value)                                  as avg_order_value,
        min(order_purchase_timestamp)                           as first_order_date,
        max(order_purchase_timestamp)                           as last_order_date,
        -- Days between first and last order
        datediff('day',
            min(order_purchase_timestamp),
            max(order_purchase_timestamp))                      as customer_lifespan_days,
        -- Repeat buyer flag
        case when count(distinct order_id) > 1
             then true else false end                           as is_repeat_customer

    from enriched
    where customer_unique_id is not null
    group by customer_unique_id, customer_state, customer_city
)

select * from customer_summary