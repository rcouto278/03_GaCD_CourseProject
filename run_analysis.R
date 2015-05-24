if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/uci_har_data.zip",method="curl")
unzip("./data/uci_har_data.zip", exdir="./data")

# restData <- read.csv("./data/restaurants.csv")