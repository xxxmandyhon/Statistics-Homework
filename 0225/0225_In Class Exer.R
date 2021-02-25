# 0225_Statistics Lesson 01_Exercise

#------------------------------------------------------------------------------
# R code of In-class exercises for week 01 (lecture R programming and plotting)
# Author: Yi-Jay Chang
# E-mail: yjchang@ntu.edu.tw
#------------------------------------------------------------------------------

#======In-class exercise 1
1+2*(3+4)
log(4^3+3^(2+1))
sqrt((4+3)*(2+1))
((1+2)/(3+4))^2


#======In-class exercise 2
?rep
1:99
seq(1,99,2)
#long way around
x <- rep(1,3)
c(x,x+1,x+2)
#short answer
rep(1:3, each=3)
c(1:5,4:0)
1/1:10         #note that : has precedence over /
paste("1/",1:10,sep="")  #if you want the fractions!
(1:6)^3        #note that ^ has precedence over :


#======In-class exercise 3
y <- c(3,2,15,-1,22,1,9,17,5)
y[1]  #first value
y[9]  #last value
y[length(y)]      #last value of vector of any length
y[y>mean(y)]      #values that are greater than the mean of y
which(y>mean(y))  #positions (indices) of values > mean of y
all(y>0)          #are all values positive?
any(y==mean(y))   #are any of the values equal to the mean
any(y==median(y)) #are any of the values equal to the median


#==========In-class exercise 4
#fake patient data
patients <- data.frame(
  id = c(31, 62, 50, 99, 53, 75, 54, 58, 4, 74),
  age = c(12, 18, 20, 17, 14, 8, 12, 24, 24, 21),
  sex = c("M", "F", "F", "M", "F", "M", "M", "F", "F", "M") )
head(patients, n=2)

patients$age[patients$age > 20]   #patients over 20
patients[patients$age > 20,"age"] #another way of doing it
patients[patients$age > 20,]      #also show id age and sex
patients[patients$sex=="F",]      #only female observations
patients$age[7] <- 21             #change the 7th age from 12 to 21
patients  #check that it worked
sum(patients$age > 20)/nrow(patients)  #proportion over 20
sum(patients$age > 20 & patients$sex=="M")/nrow(patients)  #proportion over 20
patients <- patients[-10,]
patients

new.patients <- data.frame(
  id = c(101, 102, 103),
  age = c(15, 18, 29),
  sex = c("M", "F", "F") )
new.patients
patients <- rbind(patients, new.patients)
patients

#