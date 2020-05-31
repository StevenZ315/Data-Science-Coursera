# Title     : TODO
# Objective : TODO
# Created by: Steven
# Created on: 5/31/2020

## Set working folder
subDir <- "Getting-and-Cleaning-Data"
setwd(file.path("D:/GitHub Repo/Data-Science-Coursera", subDir))

# If file already exists in the folder. Move the old file to Backup folder.
date <- date()
if (file.exists("cameras.csv")) {

    # Create backup folder if not exist.
    backupPath <- file.path(getwd(), "backup")
    if (!dir.exists(backupPath)) {
        dir.create(backupPath)
    }

    # Create backup file with datetime.
    fromPath <- file.path(getwd(), 'cameras.csv')
    toPath <- file.path(getwd(), 'backup', paste(gsub(':', '', date), 'cameras.csv'))
    file.rename(fromPath, toPath)
}
fileurl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileurl, destfile="cameras.csv")
print(paste("File download time: ", date))
