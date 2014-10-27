complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
        
        #dir <- sprintf("~/datasciencecoursera/%s/%s/%03d.csv", directory, id)
        #dir <- sprintf("~/datasciencecoursera/%s/", directory)
        #id <- sprintf("dir/%s/%03d.csv",id)
        #data <- sapply(csvid, read.csv)         
        #complete <- sapply(data, complete.cases)
        #sapply(complete,sum)

        dir <- paste("~/datasciencecoursera/", directory, "/",sep = "") 
        files <- list.files(path=dir,pattern=".csv$")
        dat <- data.frame()
        nobs <- vector()
        for (i in id) {
                dat <- rbind(dat, read.csv(files[i]))
                s<-split(dat,dat$ID)
                complete <- lapply(s, complete.cases)
        }
        nobs <- sapply(complete, sum)
        data.frame(id,nobs,row.names=1:length(id))
}