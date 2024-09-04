pollutantmean <- function(directory,pollutant,id ){
        ##'directory' is a character vector of length 1 indicating
        ##the location od the CSV files
        
        ##'pollutant' is a character vector of length 1 indicating
        ##the name of the pollutant for which we will calculate the
        ##mean; either "sulfate" or "nitrace.
        
        ##'id' is an integer vector indicating the monitor ID numbers
        ##to be used
        
        ##Return the mean of the pollutant across all monitors list
        ##in the 'id' vector (ignoting NA values)
        
        ##Note: DO NOT ROUND THE RESULT!
        
        # list.files(pattern = "csv")
        oldwd <- getwd()  ##
        setwd(directory)  
        data <- list.files(pattern = "csv") ##rowdata
        mydata=NULL
        for (i in 1:length(data[id])) {
                mydata <- rbind(mydata,read.csv(data[id][i]))
                }
        y=mean(mydata[[pollutant]],na.rm = TRUE)
        print(y)
        setwd(oldwd)


}