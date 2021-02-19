choco <- read.csv("https://raw.githubusercontent.com/xdaiISU/ds202materials/master/hwlabs/data/choco.csv") 

str(choco)

# 1. Rating distribution
hist(choco$Rating)
boxplot(choco$Rating)
summary(choco$Rating)

# There are a few outliers at the 1.0 end of the spectrum

# 2. Ratings regarding company
types <- factor(choco$Company)
types <- reorder(types, choco$Rating, FUN=mean, na.rm=TRUE)
str(types)
str(choco$Rating)
str(choco$Rating ~ types)
# Can't hist a formula but can boxplot a formula
# By company
boxplot(choco$Rating ~ types)
table(types)

# By location, much more readable since less locations than companies
types <- reorder(choco$Location, choco$Rating, FUN=mean)
boxplot(choco$Rating ~ types)

# Okay now the question that was asked, num ratings by location of company
# We can just do this since there is one row per rating
barplot(table(choco$Location))
barplot(sort(table(choco$Location)))
# Top 5
head(sort(table(choco$Location), decreasing=TRUE))


# 4. Flavor by bean origin
# TODO: Clean up
types <- reorder(choco$Bean_Origin, choco$Rating, FUN=mean)
boxplot(choco$Rating ~ types, las=2, ylab='Average Rating', xlab='Cacao Bean Origin')


# Cocoa percent vs rating
plot(choco$Cocoa_Percent, choco$Rating)

# Date vs rating
plot(choco$Date, choco$Rating)
table(choco$Date)
# For some reason reviews they did earlier had worse taste, or maybe
# they just got more lenient with their ratings over time



