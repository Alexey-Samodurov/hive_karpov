drop table if exists yellow_taxi.taxi_data_view;

create view yellow_taxi.taxi_data_view as
select
   t2.name as payment_type,
   to_date(t1.tpep_pickup_datetime) as pickup_date,
   sum(t1.tip_amount) as tip_amounts,
   sum(t1.passenger_count) as passenger_counts
from yellow_taxi.taxi_data as t1
left join yellow_taxi.payment_type as t2
on t1.payment_type = t2.id
where 1=1
and to_date(t1.tpep_pickup_datetime) like '2020-%'
and t2.name is not null
group by to_date(t1.tpep_pickup_datetime), t2.name
;