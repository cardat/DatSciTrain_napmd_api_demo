# 01-create_api_key

# Create a YAML file to save the API login credentials for future use


# Install napmdtools package ####

# uncomment and run the following if napmdtools package not installed
if(!require(napmdtools)){
  remove.packages("napmdtools")
  library(devtools)
  install_github("cardat/napmdtools", build_vignettes = TRUE, force = TRUE)
  library(napmdtools)
}

# create the API key file and save credentials ####
create_api_key()
# overwrite the current file if prompted
# enter your username and password into the console when prompted
