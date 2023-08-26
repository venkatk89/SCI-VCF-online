# define all required libraries and load them
# required_libraries <- c("here", "vcfR", "ggplot2", "scales", "eulerr" ,"dplyr", 
#                         "tidyr", "reshape2", "shiny", "shinycustomloader", 
#                         "colourpicker", "plotly")
# for (dependency in required_libraries) {
#   if(!require(dependency, character.only = TRUE)){
#     print("Downloading some dependencies from CRAN")
#     install.packages(dependency)
#     library(dependency, character.only = TRUE)
#   }
#   else{
#     library(dependency, character.only = TRUE)
#   }
# }


# Load required libraries
library(here)
library(vcfR)
library(ggplot2)
library(scales)
library(eulerr)
library(dplyr)
library(tidyr)
library(reshape2)
library(shiny)
library(shinycustomloader)
library(colourpicker)
library(plotly)

## Advanced user parameters

# set maximum file upload size in shiny to 10 MB
options(shiny.maxRequestSize = 10 * 1024^2) 


# Load other modules into app.R

source(here("./summarize_vcf.R"))
source(here("./compare_vcf.R"))
source(here("./plot_vcf.R"))
source(here("./server.R"))
source(here("./ui.R"))


shinyApp(ui, server)

