# Linear Regression Example in R using lm() Function


Summary: R linear regression uses the lm() function to create a regression model given some formula, in the form of Y~X+X2.  To look at the model, you use the summary() function.  To analyze the residuals, you pull out the $resid variable from your new model.  Residuals are the differences between the prediction and the actual results and you need to analyze these differences to find ways to improve your regression model.

To do linear (simple and multiple) regression in R you need the built-in lm function.
The predictor (or independent) variable for our linear regression will be Spend (notice the capitalized S) and the dependent variable (the one we’re trying to predict) will be Sales (again, capital S).

The lm function really just needs a formula (Y~X) and then a data source.  We’ll use Sales~Spend, data=dataset and we’ll call the resulting linear model “fit”.
```
dataset = read.csv("data-marketing-budget-12mo.csv", header=T,
colClasses = c("numeric", "numeric", "numeric"))
simple.fit = lm(Sales~Spend, data=dataset)
summary(simple.fit)
```
# Predict
```
predict(simple.fit,list(Spend=2000))
```
## Or
```
predict(simple.fit,data.frame(Spend=c(100,2000)))
```
Multiple
```
multi.fit = lm(Sales~Spend+Month, data=dataset)
summary(multi.fit)
```
Notices on the multi.fit line the Spend variables is accompanied by the Month variable and a plus sign (+).  The plus sign includes the Month variable in the model as a predictor (independent) variable.

The summary function outputs the results of the linear regression model.
