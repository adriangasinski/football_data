## set working directory
setwd("C:/dev/repos/football_data/data")

files_to_import <- c()
for (directory in dir()) {
  for (filename in dir(path=dir)){
    files_to_import <- c(files_to_import, paste(directory, filename, sep="/"))
  }
}

