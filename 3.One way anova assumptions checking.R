#08/02/2019
#Checking one way anova assumptions using R.
#CIAT data and research methods project
#Prepared by Rachael Mburu

#Normality assumption.

anova1=aov(Grain.yield..kg.plot..5.625m2.~Treatment,data = Kawanda_datas1)
#plotting a normality plot of residuals.
plot(anova1,2)
##Alternatively,qq plot to check normality
#Loading library car
library(car)
#Ploting a qq plot .
qqPlot(anova1,main = "qq plot")
#Testing normality of residuals of the model using shapiro wilk test .
shapiro.test(anova1$residuals)

#Homogeneity of varainces assumption 

#Checking homogeneity of variances using a plot of residuals versus fitted values.
plot(anova1,1)
#Loading library car
library(car)
#Computing levene test to check homogeneity of varainces.
leveneTest(anova1)
#Alternatively,Bartlette test for checking homogeneity of variances.
bartlett.test(Grain.yield..kg.plot..5.625m2.~Treatment,data = Kawanda_datas1)
#Plotting diagnostic plots at once .
par(mfrow=c(2,2))
plot(anova1)

#End.