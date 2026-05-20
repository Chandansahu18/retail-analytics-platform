-- Aggregate payment info to order level
with payments as (
    select * from {{ ref('stg_order_payments') }}
),

aggregated as (
    select
        order_id,
        sum(payment_value)                              as total_payment_value,
        count(distinct payment_sequential)              as payment_method_count,
        max(payment_installments)                       as max_installments,
        -- Dominant payment type (highest value method)
        mode() within group (order by payment_type)    as primary_payment_type,
        -- Flag split payments
        case when count(distinct payment_sequential) > 1
             then true else false end                   as is_split_payment

    from payments
    group by order_id
)

select * from aggregated