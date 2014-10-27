pollutantmean <- function(directory, pollutant, id=1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)      
        
        #files <- list.files(pattern=".csv$")
        #specdata <- lapply(files,read.csv)

        #data = lapply(id, function(i) read.csv(paste("~/datasciencecoursera/", directory, "/", formatC(i, width = 3, flag = "0"), ".csv", sep = ""))[[pollutant]])                
        #return(mean(unlist(data), na.rm = TRUE))
        
        dir <- paste("~/datasciencecoursera/", directory, "/",sep = "") 
        files <- list.files(path=dir,pattern=".csv$")
        dat <- data.frame()
        for (i in id) {
                dat <- rbind(dat, read.csv(files[i]))
        }
        mean(dat[[pollutant]],na.rm=TRUE)
}