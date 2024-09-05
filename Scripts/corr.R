corr <- function(directory,threehold=0){
        ##'directory' is a character vector of length 1 indicating
        ##the location of the CSV file
        
        ##'threehold' is a numeric vector of length 1 indicating the
        ##number of completely observed observations (on all
        ##variables) required to compute the correction between
        ##nitrace and sulfate; the default is 0
        

        ##return a numeric vector of corrections
        ##NOTE: DO NOT ROUND THE RESULT!
        oldwd <- getwd()
        setwd(directory) 
        data <- list.files(pattern = "csv") ##rowdata
        cr <- numeric(0)
        for (i in 1:length(data)) {
                if( nrow(na.omit(read.csv(data[i]))) <= threehold) {
                        next
                }
                mydata <- na.omit(read.csv(data[i]))
                # na.omit(read.csv(data[i]))
                # read.csv(data[i])
                
                # print(cor(mydata$sulfate,mydata$nitrate))
                cr <- c(cr,cor(mydata$sulfate,mydata$nitrate))
                
                
        }
        setwd(oldwd)
        cr
        
}




####'目录'是长度为 1 的字符向量，表示
##CSV文件的位置

##'threehold'是长度为 q 的数字向量，表示
##是一个长度为 q 的数字向量，表示计算校正所需的完整观测值（所有
##变量）所需的数量。
##threehold'是一个长度为 1 的数字向量，表示计算硝酸盐和硫酸盐之间的校正所需的完全观测值（所有变量）的 数目；默认值为 0

##返回校正的数字向量
##注意：结果不要四舍五入！