#You may need to use the setwd(directory-name) command to
#change your working directory to wherever you saved the csv.
#Use getwd() to see what your current directory is.
dataset = read.csv("https://raw.githubusercontent.com/assiri/r_lm/master/data-marketing-budget-12mo.csv", header=T,colClasses = c("numeric", "numeric", "numeric"))
simple.fit = lm(Sales~Spend, data=dataset)
names(summary(simple.fit))
predict(simple.fit,list(Spend=2000))
summary(simple.fit)
multi.fit = lm(Sales~Spend+Month, data=dataset)
summary(multi.fit)
