# load libraries 
library(dplyr)

# set working directory
setwd("C:/dev/repos/football_data/data")


# create vector with names of files to import 
files_to_import <- c()
for (directory in dir()) {
  for (filename in dir(path=directory)){
    files_to_import <- c(files_to_import, paste(directory, filename, sep="/"))
  }
}


# create import function 
df_res <- data.frame()

import_results_file <- function(filepath, df_res){
  print(filepath)
  df_file <- read.csv(filepath, stringsAsFactors = FALSE, na.strings=c("", "NA"))
  df_res <- bind_rows(df_res, df_file)
  df_res
}

# do import for every file
for (f in files_to_import) {
  df_res <- import_results_file(f, df_res)
}


# check NAs in important columns
number_of_NAs <- function(x){
  sum(is.na(x))
}
apply(df_res[,1:10], 2, number_of_NAs)


# remove cases where any of the most important columns is NA
df_res <- df_res[complete.cases(df_res[,1:6]),]

# check dimmensions
dim(df_res)

# to do:
#  - remove X cols
#  - create table in database



