# Title     : R Programming Week 2 Coding Assignment
# Objective : Read and analyze air pollution data.
# Created by: Steven
# Created on: 5/28/2020

pollutantmean <- function(directory, pollutant, id=1:332) {
    ## 'directory': char vector of length 1
    ##      location of the CSV files.
    ## 'pollutant': char vector of length 1
    ##      name of the pollutant.
    ## 'id': int vector
    ##      monitor IDs used.
    ## Return: mean of pollutant across all monitors.

    data <- vector()
    for (num in id) {
        path <- paste0(directory, '/', formatC(num, width=3, flag="0"), '.csv')
        monitor_data <- read.csv(path)
        data <- rbind(data, monitor_data)
    }
    return (mean(data[, pollutant], na.rm=T))
}

complete <- function(directory, id=1:332) {
    ## 'directory': char vector of length 1
    ##      location of the CSV files.
    ## 'id': int vector
    ##      monitor IDs used.
    ## Return: number of complete records.
    ret <- data.frame(id=numeric(0), nobs=numeric(0))
    for (monitor in id) {
        path <- paste0(directory, '/', formatC(monitor, width=3, flag="0"), '.csv')
        data <- read.csv(path)
        complete_data <- data[complete.cases(data), ]
        ret <- rbind(ret, data.frame(id=monitor, nobs=nrow(complete_data)))
    }
    ret
}

corr <- function(directory, threshold=0) {
    ## 'directory': char vector of length 1
    ##      location of the CSV files.
    ## 'threshold': numeric vector of length 1
    ##      number of complete observations required.
    ## Return: a numeric vector of correlations.
    cor_results <- numeric(0)
    complete_cases <- complete(directory)
    complete_cases <- complete_cases[complete_cases$nobs >= threshold, ]

    if(nrow(complete_cases)>0) {
        for (monitor in complete_cases$id) {
            path <- paste0(directory, '/', formatC(monitor, width=3, flag="0"), '.csv')
            data <- read.csv(path)
            complete_data <- data[(!is.na(data$sulfate)), ]
            complete_data <- complete_data[(!is.na(complete_data$nitrate)), ]
           # print(complete_data)

            cor_results <- c(cor_results, cor(complete_data$sulfate, complete_data$nitrate))
        }
    }
    cor_results
}

corr('data/specdata')