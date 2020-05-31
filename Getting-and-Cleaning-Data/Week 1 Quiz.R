# Title     : TODO
# Objective : TODO
# Created by: Steven
# Created on: 5/31/2020

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileurl, destfile="price.csv")
print(paste("File download time: ", date))

data <- read.csv("price.csv")
# Q1
q1 <- sum(data$VAL == 24, na.rm=T)

# Q2

# Q3
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileurl, destfile="gas.xlsx", mode='wb')
print(paste("File download time: ", date))
data <- read.xlsx("gas.xlsx", sheetIndex=1, header=T, colIndex=7:15, rowIndex=18:23)
q3 <- sum(data$Zip*data$Ext, na.rm=T)

# Q4
library(XML)
library(RCurl)
library(dplyr)
fileXML <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"

xData <- getURL(fileXML) # This allows you to use https
doc <- xmlParse(xData)
rootNode <- xmlRoot(doc)
#xmlName(rootNode) # just displays top root node name
# one version, no data frame required - no need for zips, zips_dt
q4 <- sum(xpathSApply(rootNode, "//zipcode", xmlValue) == "21231")

# Q5
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", destfile = "ACS.csv")
DT <- fread("ACS.csv", sep = ",")

mbm = microbenchmark(
  v3 = sapply(split(DT$pwgtp15,DT$SEX),mean),
  v6 = DT[,mean(pwgtp15),by=SEX],
  v7 = tapply(DT$pwgtp15,DT$SEX,mean),
  v8 = mean(DT$pwgtp15,by=DT$SEX),
  times=100
)
q5 <- mbm