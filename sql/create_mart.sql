drop table if exists yellow_taxi.taxi_data_mart;

create table yellow_taxi.taxi_data_mart as
select * from yellow_taxi.taxi_data_view;