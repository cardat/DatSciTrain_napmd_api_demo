# 02-api_demo

# Demonstration of napmdtools functions

# Load napmdtools package and read in credentials
library(napmdtools)
api_key <- yaml::read_yaml('private/api_key.yaml')

# Query hourly data tables ####

# List of air pollution monitors for a state
stns <- list_air_pollution_monitors(
  state = "NSW"
  , 
  username = api_key$username
  , 
  password = api_key$password
)
stns

# Variables for a specified station
vars <- get_variables(
  station_id = 453
  , 
  username = api_key$username
  , 
  password = api_key$password
)
vars

# Datetime range for a specified station and variable
times <- get_times(
  station_id = 453
  , 
  variable="pm25"
  , 
  username = api_key$username
  , 
  password = api_key$password
)
times

# Observations for a specified station, variable and datetime range
obs <- get_monitor(
  station_id = 453
  , 
  variable="pm25"
  , 
  start_time_utc = "2019-08-20 14:00:00"
  , 
  end_time_utc= "2019-12-31 14:00:00"
  , 
  username = api_key$username
  , 
  password = api_key$password
)
obs

# Observations for a specified state, variable and datetime
slice <- get_slice_all(
  variable="pm25"
  ,
  time_utc = "2019-08-20 14:00:00"
  ,
  state="NSW"
  ,
  username = api_key$username
  ,
  password = api_key$password
)
slice


# Daily data ####
# the bulk of the NAPMD API data are in the the hourly data table: air_pollution_monitor.ap_monitor_data_master. 
# We have some historical PM2.5/10 data and also recent Tasmanian PM2.5/10 data available only as daily averages. These are stored separately in the air_pollution_monitor.ap_monitor_data_master table.

# Variables for a specified station
vars <- get_variables_daily(
  station_id = 300
  , 
  username = api_key$username
  , 
  password = api_key$password
)
vars

# Datetime range for a specified station and variable
times <- get_times_daily(
  station_id = 300
  , 
  variable="pm25"
  , 
  username = api_key$username
  , 
  password = api_key$password
)
times

# Observations for a specified state, variable and datetime
slice <- get_slice_daily(
  variable="pm25"
  ,
  date = "2019-08-20"
  ,
  state="TAS"
  ,
  username = api_key$username
  ,
  password = api_key$password
)
slice

# Observations for a specified station, variable and datetime range
obs <- get_monitor_daily(
  station_id = 300
  , 
  variable="pm25"
  , 
  start_date = "2019-10-01"
  , 
  end_date= "2019-10-31"
  , 
  username = api_key$username
  , 
  password = api_key$password
)
obs

