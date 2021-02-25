# 0225_Statistics Lesson 01_Lecture

#------------------------------------------------------
# R code of week 01_lecture R programming and plotting
# Author: Yi-Jay Chang
# E-mail: yjchang@ntu.edu.tw
#------------------------------------------------------

#==========Load up R and type simple command
2+4
x<-7
x+19
X+10

#==========Help from within R (II)
help("log")
?log
apropos("log")

#==========Some simple R commands
2+2
3^2
sqrt(25)
2*(1+1)
2*1+1
exp(1)
log(2.718282)
log(10, base=10)

#==========clears out your workspace
rm(list = ls())

#==========Assigning values
answer <- log(2.5)
answer = log(2.5)
answer <- log(2.5, base=10)

myName <- "Kuo-yu"
myName <- 'Kuo-yu'
(myName <- "Han Kuo-yu")

#==========Viewing objects
print(answer)
answer
answer * 10

#==========Removing objects
ls()
rm(answer)
ls()
rm(list = ls())
ls()

#==========Finding data types
answer <- log(2.718282)
answer
mode(answer)
is.numeric(answer)

#==========Wait, what did you do there?
typeof(answer)
answer <- as.integer(answer)
typeof(answer)

answer <- 3.345452
answer <- as.integer(answer)
answer

#==========Finding data types
answer <- 3.345452
(myName <- "Donald Trump")
is.character(answer)
is.character(myName)
typeof(myName)
mode(myName)

#==========Vectors
lengths <- c(7.8, 9.0, 7.1, 8.8, 8.8)
lengths
1:10
seq(from=1, to=10, by=2)
seq(1,10,2)
seq(from=1, to=10,length.out=5)

#==========Creating vectors using rep
rep(3,times=10)
y <- 1:3
rep(y,times=4)
rep(y,length=10)
rep(y,length=30)

#==========Vector operations work element-wise
(x <- 1:3)
log(x)
x+1
x*2
y <- 4:6
x + y
y - x
x / y
x * y

#==========Built-in datasets in R & Using functions on vectors
library(help = "datasets")
islands
min(islands)
max(islands)
mean(islands)
median(islands)
quantile(islands)
var(islands)
sd(islands)
range(islands)

#==========The length function
length(islands)
nislands <- length(islands)
1:nislands
years <- seq(from=2013, length=nislands)
years

#=====Subsetting vectors
x <- c(3,4,2,1,10,7)
x[1]
x[3]
x[1:5]
x[c(2,5)]
x[-c(2,4)]

#====Boolean value (TRUE/FALSE; 1/0)
var_isCat = TRUE
{
  if(var_isCat==1){
    print("ZEPHYR IS A CAT")
  }
  else{
    print("IS NOT A CAT")
  }
}
#====Boolean logic: single values
x <- 3
x == 3
x < 10
x < -1
x > 0 & x < 10

#====Boolean logic: vector of values
x <- 1:5
x == 3
x < 10
x > 2 & x <= 4
x != 2

#====Umbrella logic
day <- c("Sun", "Mon", "Tues", "Wed", "Thurs", "Fri", "Sat")
rain <- c("Yes","Yes", "Yes",  "Yes", "Yes",   "Yes", "No")
snow <- c("No", "No",  "No",   "Yes", "No",    "No",  "No")
rain == "Yes"
rain != "No"
snow == "Yes"
rain=="Yes" & snow=="Yes"
rain=="Yes" | snow=="Yes"

day[rain=="Yes"]
day[snow=="Yes"]
day[rain=="Yes" & snow=="Yes"]
day[rain=="Yes" | snow=="Yes"]

#=====Other logical operators
rain <- c("Yes","Yes","Yes","Yes","Yes","Yes","No")
which(rain=="Yes")
any(rain=="Yes")
all(rain=="Yes")

#=====Data frames
nislands <- length(islands)
years <- seq(from=2013, length=nislands)
island.data <- data.frame(years, islands)
head(island.data)

names(island.data)
names(island.data) <- c("years","area")
head(island.data, n=2)
island.data <- data.frame(years=years, area=islands)

area
ls()
#rm(list=ls())
island.data$area

#==========extracting data from a data frame
tag <- c(2, 3, 5, 7, 8, 9, 15, 21, 23, 26)
weight <- c(14.8, 21, 19.7, 23.2, 16, 16.1, 20, 29.3, 17.8, 21.2)
condition <- c("good", "fair", "fair", "poor", "fair", "good", "good", "fair", "fair", "poor")
fishData <- data.frame(tag, weight, condition)
head(fishData, n=2)

#==========Extracting columns by name
fishData$weight
(weight <- rep(20,10))
fishData$weight

#==========Extracting rows/columns by indices
fishData[,2]
fishData[,-1]

#==========Extracting elements
fishData[1,]
fishData[c(1,4),]
fishData[1,2]
fishData$weight[1]

#==========Methods for column extraction
fishData[,2:3]
fishData[,c("tag","condition")]

#==========Extracting elements logically
fishData$weight
fishData$weight > 22
fishData[fishData$weight > 22,]

#==========Combining conditions
fishData[fishData$weight < 20 &
           fishData$condition == "fair",]
fishData[fishData$weight < 15 |
           fishData$weight > 25,]

#==========Creating a List
vec1 <- 1:3
vec2 <- letters[1:3]
vec3 <- c(TRUE,TRUE,FALSE)
LIST1 <- list(vec1,vec2,vec3)
LIST1

#==========Naming List Elements
names(LIST1) <- c("e1","e2","e3")
LIST1

#==========More data processing...
for(i in 1:length(fishData[,1])){
  if(fishData[i,2]>=20 & fishData[i,3]!="poor"){
    fishData$survival[i]=1
  }
  else{
    fishData$survival[i]=0
  }
}

print(fishData)

#==========Make your own functions
add2 <- function(x,y){
  Output <- x+y
  return(Output)
}
add2(1,100)


#======missing values
humidity <- c(63.33, NA, 64.63, 68.38, NA, 79.1, 77.46)
humidity
mean(humidity)
mean(humidity, na.rm=T)

na.omit(humidity)
humidity[!is.na(humidity)]

#======Reading in data
read.table(file="C:\\Users\\YIJAY\\Desktop\\test\\dat_df1.dat",header=T)

#======No column names
read.table(file="C:\\Users\\YIJAY\\Desktop\\test\\dat_df2.dat")
read.table(file="C:\\Users\\YIJAY\\Desktop\\test\\dat_df2.dat",col.names=c("id","age","sex"))

#======Simple plots
x = seq(-pi,pi,by=0.1)
y = sin(x)
plot(x,y,type="l",col=2,lwd=2)
lines(x,cos(x),col=1,lwd=2,lty=2)
plot(y~x,type="l",main="plot",xlab="time",ylab="abundance")
plot(x,y,xlim=c(-5,5),ylim=c(-1,1))
hist(rnorm(30))