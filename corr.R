corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating the location of
        ## the CSV files
        
        ## 'threshold' is a numeric vector of length 1 indicating the number of
        ## completely observed observations (on all variables) required to compute
        ## the correlation between nitrate and sulfate; the default is 0
        
        ## Return a numeric vector of correlations
 data <- complete(directory)
 ids <- data[which(data$nobs>threshold),"id"]
         #corrr = numeric()
dir <- paste("~/datasciencecoursera/", directory, "/",sep = "") 
files <- list.files(path=dir,pattern=".csv$")
dat <- data.frame()
#newdat <- data.frame()
c <- data.frame() 
        if (i in ids) {
                dat <- read.csv(files[i])
                nc <- dat[complete.cases(dat), ]
                x <- nc$nitrate
                y <- nc$sulfate
                correlation <- c(correlation, cor(x,y))
                #s<-split(nc,nc$ID)
                #c <- lapply(s, function(x) cor(x[,c("nitrate","sulfate")]))
                return(c)
                #s<-split(dat,dat$ID)
                #newdat <- data.frame()
                #corrr <- cor(s$sulfate,s$nitrate)) 
                }
        #a <- c(c[[1,2]]) 
        #return(a)
}
