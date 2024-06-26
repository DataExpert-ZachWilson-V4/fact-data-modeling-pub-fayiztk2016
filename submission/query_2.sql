create or replace table fayiztk.user_devices_cumulated (
    user_id bigint,
    browser_type varchar,
    dates_active array (date),
    date date
) with (
  format = 'parquet',
  partitioning = array['date']
)