choco <- read.csv("https://raw.githubusercontent.com/xdaiISU/ds202materials/master/hwlabs/data/choco.csv") 
str(choco)

#3
#The highest ratings come from cocoa percents in the range of 65-79%
boxplot(choco$Rating ~ choco$Cocoa_Percent)

#Takes avg of each rating and shows in table. 
#Doesn't matter how high the cocoa percentage is, because you see some of the highest percentages with the lowest ratings
tb1 <- matrix(c(choco$Cocoa_Percent, choco$Rating), ncol=2)
aggregate(choco$Cocoa_Percent ~ choco$Rating, tb1, mean)


#4
types <- reorder(choco$Bean_Origin, choco$Rating, FUN=mean)
boxplot(choco$Rating ~ types)


#5 
#One analysis to perform could be if the date (year) has an influence on rating. 
boxplot(choco$Rating ~ choco$Date)
#As you can see from the box plot, they haven't really improved the quality of chocolate as the years
# have gone on. 
tb1 <- matrix(c(choco$Date, choco$Rating), ncol=2)
aggregate(choco$Rating ~ choco$Date , tb1, mean)
#As the years have gone on, they have gotten very consistent with the quality of chocolate, with a peak 
# around 2017. 


#A seond analysis to perform would be 

