##################################################################################################################
# Small Upload App for digitAEX data to be stored on AWS DocumentDB (db="technicalCenter", collection="digitAEX")
##################################################################################################################

rm(list = ls())
gc()

library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(fresh)
library(plumber)

# Run API as separate R process
# Rscript -e "library(plumber); pr('api/api.R') %>% pr_run(port=3021, host='0.0.0.0')"

source("usefulFunctions.R")