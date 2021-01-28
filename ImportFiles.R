## set working directory
setwd("C:/dev/repos/football_data/data")


for (dir in dir()) {
  print(dir)
  for (filename in dir(path=dir)){
    print(filename)
  }
}
