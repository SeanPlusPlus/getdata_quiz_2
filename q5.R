# Question 5
# Read this data set into R and report the sum of the numbers in the fourth of the nine columns. 
# https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for 

################################################################################
getData <- function() {
################################################################################

  # add data dir
  if (!file.exists("data")) {
    dir.create("data")
  }

  # fetch and return
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
  download.file(fileUrl, destfile = "./data/data.fwf", method = "curl")
  data <- read.fwf("./data/data.fwf", widths=c(12, 7, 4, 9, 4, 9, 4, 9, 4), skip = 4)
  return(data)
}

################################################################################
main <- function() {
################################################################################
  data <- getData()
  print(sum(data$V4))
}

main()
