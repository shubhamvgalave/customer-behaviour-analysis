SELECT * FROM data_cleaning_project.cleaned_data;

select  gender,sum(purchase_amount) as revenue
from cleaned_data
group by gender;

select customer_id,purchase_amount
from cleaned_data
where discount_applied='yes' and purchase_amount >= (select avg(purchase_amount )from cleaned_data);

select item_purchased product , round(avg(review_rating),2) average
from cleaned_data
group by product
order by average desc 
limit 5;

select item_purchased,
round(sum(case when discount_applied='yes' then 1 else 0 end)/count(*)*100,2) as discount_rate
from cleaned_data
group by item_purchased
order by discount_rate desc
limit 5;

with customer_type as (
    select customer_id,
           previous_purchases,
           case
               when previous_purchases = 1 then 'new'
               when previous_purchases between 2 and 10 then 'returning'
               else 'loyal'
           end as customer_segment
    from cleaned_data
)
select customer_segment, count(*) as "number_of_customers"
from customer_type
group by customer_segment;

with items_counts as (
    select category,
           item_purchased,
           count(customer_id) as total_orders,
           ROW_NUMBER() over (partition by category order by count(customer_id) desc) as item_rank
    from cleaned_data
    group by category, item_purchased
)

select item_rank, category, item_purchased, total_orders
from items_counts
where item_rank <= 3;

select  subscription_status,
 count(customer_id) as repeat_customers
 from cleaned_data
 where previous_purchases>5
 group by subscription_status;
 
 select age_group,
 sum(purchase_amount) as total_revenue
 from cleaned_data
 group by age_group
 order by total_revenue desc
