insert into yellow_taxi.vendor_id
select 1, 'Creative Mobile Technologies, LLC'
union all
select 2, 'VeriFone Inc.';

insert into yellow_taxi.rate_code_id
select 1, 'Standard rate'
union all
select 2, 'JFK'
union all
select 3, 'Newark'
union all
select 4, 'Nassau or Westchester'
union all
select 5, 'Negotiated fare'
union all
select 6, 'Group ride';

with t as (select 1, 'Credit card'
union all
select 2, 'Cash'
union all
select 3, 'No charge'
union all
select 4, 'Dispute'
union all
select 5, 'Unknown'
union all
select 6, 'Voided trip')
insert into yellow_taxi.payment_type select * from t;