complete <- function(directory,id = 1:332){
        ##'directory' is a character vector of length 1 indicating
        ##the location of the CSV files
        
        ##'id' is an integer vector indicating the monitor ID numbers
        ##to be used
        
        ##Return a data frame of the form
        ## id nobe
        ## 1  117
        ## 2  1041
        ## ...
        ##where 'id' is the monitor ID number and 'nobe' is the
        ##number of compelete cases
        oldwd <- getwd()  
        #getwd()
        setwd(directory)  
        #getwd()
        data <- list.files(pattern = "csv") ##rowdata
        df=data.frame(id="",nobs="")[-1,]
        
        for (i in c(id) ) {
                # print(i)
                # read.csv(data[i])
                 nobs=nrow(na.omit(read.csv(data[i])))
                # print(nobs)
                new_row_df <- data.frame(id=i,nobs=nobs)
                df <- rbind(df,new_row_df)
        }
        print(df)
        setwd(oldwd)
}