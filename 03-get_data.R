# 03-get_data

# Retrieve data from NAPMD API and save

library(napmdtools)
api_key <- yaml::read_yaml("private/api_key.yaml")

# Set date/hour (in UTC), state and variable of interest ####

# Example: NSW at 3pm, 8 May 2016
datetime <- as.POSIXct("2016-05-08 05:00:00")
state <- "NSW"
parameter <- "pm25"

outdir <- "data"
outfile <- sprintf("napmd_%s_hrly_avg_%s_%s.csv", 
                   parameter,
                   state, 
                   strftime(datetime, "%Y%m%d_%H%M"))

# Get data from API ####
dat <- get_slice_all(variable = parameter,
                     time_utc = datetime,
                     state = state,
                     username = api_key$username,
                     password = api_key$password)
dat

# Save data ####
if(!dir.exists(outdir)) dir.create(outdir)
write.csv(dat, file.path(outdir, outfile))
