typos = c(2,3,0,3,1,0,0,1)

typos.draft1 = c(2,3,0,3,1,0,0,1)
typos.draft2 = c(0,3,0,3,1,0,0,1)

typos.draft2 = typos.draft1 # make a copy
typos.draft2[1] = 9 # assign the first page 0 typos


typos.draft2 # print out the value

typos.draft2[4] # all but the 4th page

typos.draft2[c(1,2,3)] # fancy, print 1st, 2nd and 3rd

max(typos.draft2) # what are worst pages?

typos.draft2 == 3 # Where are they?

which(typos.draft2 == 3)

?which()

sum(typos.draft2) # How many typos?

sum(typos.draft2>0)


typos.draft1 - typos.draft2 # difference between the two


whale = c(74, 122, 235, 111, 292, 111, 211, 133, 156, 79)

mean(whale)
var(whale)
std(whale)
sqrt(var(whale))
sqrt( sum( (whale - mean(whale))^2 /(length(whale)-1)))
std = function(x) sqrt(var(x))
std(whale)
summary(whale)

miles = c(65311, 65624, 65908, 66219, 66499, 66821, 67145, 67447)
x = diff(miles)

#Categorical data 

x=c("Yes","No","No","Yes","Yes")

x

factor(x)

#Bar Plots

beer = c(3,4,1,1,3,4,3,3,1,3,2,1,2,1,2,3,2,3,1,1,1,1,4,3,1)

barplot(beer) # this isn't correct
barplot(table(beer)) # Yes, call with summarized data

barplot(table(beer)/length(beer)) # divide by n for proportion
table(beer)/length(beer)

#Pie charts

beer.counts = table(beer) # store the table result
pie(beer.counts) # first pie -- kind of dull
names(beer.counts) = c("domestic\n Can","Domestic\n bottle","Microbrew","Imported\n Liq") # give names                         "Microbrew","Import") # give names
pie(beer.counts) # prints out names
pie(beer.counts,col=c("purple","green2","cyan","white")) # now with colors

#Frequency Polygon
x = c(.314,.289,.282,.279,.275,.267,.266,.265,.256,.250,.249,.211,.161)
tmp = hist(x) # store the results
lines(c(min(tmp$breaks),tmp$mids,max(tmp$breaks)),c(0,tmp$counts,0),type="l")


data=c(10, 17, 18, 25, 28, 28)
summary(data)
quantile(data,.25)
quantile(data,c(.25,.75)) # two values of p at once

sals= c(12,0.4,5,2,50,8,3,1,4,0.25)
mean(sals) # the average

mean(sals,trim=1/10) # trim 1/10 off top and bottom
mean(sals,trim=2/10)
var(sals) # the variance
sd(sals) # the standard deviation
median(sals) # the median
summary(sals)
sort(sals)
Trimed_ten_Percent_mean = mean(sals,trim=1/10)
mean(sals,trim=2/10)
IQR(sals)
mad(sals)

#And to see that we could do this ourself, we would do

median(abs(sals - median(sals))) # without normalizing constant
median(abs(sals - median(sals))) * 1.4826


sals = c(12, .4, 5, 2, 50, 8, 3, 1, 4, .25) # enter data
cats = cut(sals,breaks=c(0,1,5,max(sals))) # specify the breaks
?cut


cats # view the values
table(cats) # organize
cats
levels(cats) = c("poor","rich","Surviving") # change labels
table(cats)

#Histograms

x = c(29.6,28.2,19.6,13.7,13.0,7.8,3.4,2.0,1.9,1.0,0.7,0.4,0.4,0.3,0.3,0.3,0.3,0.3,0.2,0.2,0.2,0.1,0.1,0.1,0.1,0.1)
hist(x) # frequencies
hist(x,probability=TRUE) # proportions (or probabilities)
rug(jitter(x))
hist(x,breaks=10) # 10 breaks, or just hist(x,10)
hist(x,breaks=c(0,1,2,3,4,5,10,20,max(x))) # specify break points

#Boxplots
library(UsingR)
?data

data(movies)
names(movies)
attach(movies) # to access the names above
head(movies)
boxplot(current,main="current receipts",horizontal=TRUE)
boxplot(gross,main="gross receipts",horizontal=TRUE)

#install.packages('timeSeries')
library(timeSeries)
data("lynx")
summary(lynx) # Just what is lynx? summary(lynx)



