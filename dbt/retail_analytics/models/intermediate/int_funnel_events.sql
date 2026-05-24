with events as (
    select * from {{ ref('stg_events') }}
),

funnel as (
    select
        visitor_id,
        event_date,
        -- Counts per visitor per day
        count(case when event_type = 'view'        then 1 end) as view_count,
        count(case when event_type = 'addtocart'   then 1 end) as addtocart_count,
        count(case when event_type = 'transaction' then 1 end) as transaction_count,
        -- Funnel stage reached
        max(case
            when event_type = 'transaction' then 3
            when event_type = 'addtocart'   then 2
            when event_type = 'view'        then 1
            else 0
        end) as max_funnel_stage

    from events
    group by visitor_id, event_date
)

select * from funnel