## set working directory
setwd("C:/dev/repos/football_data/data")






for (directory in dir()) {
  for (filename in dir(path=dir)){
    print(paste(directory, filename, sep="/"))
  }
}


