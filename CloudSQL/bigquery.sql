/* 

Created SQLs to Demo  BigQuery Table Partitioning
  1. TIME UNIT (MONTHLY)
  2. INTEGER RANGE
  3. INGESTION TIME UNIT

  */

/************** Time Unit Partitioning  *******************/

-- Query this table to understand the data distribution across different dates :

SELECT * FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` LIMIT 1000;

SELECT  min(start_time), max(start_time) FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`;

select DATE_TRUNC(start_time, DAY) as year,count(*) from `bigquery-public-data.austin_bikeshare.bikeshare_trips`
group by 1 order by 1;

select DATE_TRUNC(start_time, MONTH) as year,count(*) from `bigquery-public-data.austin_bikeshare.bikeshare_trips`
group by 1 order by 1;

select DATE_TRUNC(start_time, YEAR) as year,count(*) from `bigquery-public-data.austin_bikeshare.bikeshare_trips`
group by 1 order by 1;

--------Create MONTHLY Partitioned table based on TIME UNIT columns--------:

create or replace table austin_bikeshare.bikeshare_trips_p
(
trip_id	INT64,				
subscriber_type	STRING,		
bikeid	STRING,			
start_time	TIMESTAMP,
start_station_id	INT64,			
start_station_name	STRING,				
end_station_id	STRING,				
end_station_name	STRING,				
duration_minutes	INT64	
)
PARTITION BY
  TIMESTAMP_TRUNC(start_time, MONTH);

  ---- Create partition table usning SQL query result ----- :

create or replace table austin_bikeshare.bikeshare_trips_sql
(
trip_id	INT64,				
subscriber_type	STRING,		
bikeid	STRING,			
start_time	TIMESTAMP,
start_station_id	INT64,			
start_station_name	STRING,				
end_station_id	STRING,				
end_station_name	STRING,				
duration_minutes	INT64	
)
PARTITION BY
  start_time
  AS (SELECT  TIMESTAMP_TRUNC(start_time , DAY)
      FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`);


--Insert data into Partitioned table 

insert into austin_bikeshare.bikeshare_trips_p
select * from `bigquery-public-data.austin_bikeshare.bikeshare_trips`;

-- Query non Partitioned table

select * from `bigquery-public-data.austin_bikeshare.bikeshare_trips`
where start_time > '2020-12-01 00:00:00 UTC';

-- Query partioned table and see the difference
select * from `refined-engine-42415.austin_bikeshare.bikeshare_trips_p`
where start_time > '2020-12-01 00:00:00 UTC';


