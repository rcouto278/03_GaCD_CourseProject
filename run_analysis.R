if(!file.exists("./data")){
  dir.create("./data")
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl,destfile="./data/uci_har_data.zip",method="curl")
  unzip("./data/uci_har_data.zip", exdir="./data")
}

testData <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
trainData <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
allData <- rbind(testData, trainData)



write.table( allData, "./data/merged_data.txt", row.name=FALSE)
