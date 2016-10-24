#' # Data Processing
#' 
#' File to make cleaned data file from raw data file.
#' 
#' **Read CSV**
rawdata <- read.csv("data/raw.csv")
head(rawdata,n = 3)

#' **Clean up**
#' 
#' 1. Remove NAs
#' 2. Remove outliers
# Remove missing values in X column
data.noNA <- rawdata[! is.na(rawdata$X),]
#' Plot data to check for outliers
plot(x = data.noNA$X, y = data.noNA$Y)
#' Remove outliers
cleandata <- data.noNA[data.noNA$Y!=14,]
