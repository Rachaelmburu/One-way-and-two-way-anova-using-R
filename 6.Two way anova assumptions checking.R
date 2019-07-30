#10/02/2019
#Checking two way anova assumptions using R.
#CIAT data and research methods project
#Prepared by Rachael Mburu

#Normality assumption.

#Setting the working directory 
setwd("C:/Users/Rachael Mburu/Desktop/Data & Research methods")
#Importing data to R
Kawanda_yielddata=read.csv("Kawanda_datas1.csv")
#Viewing the imported data.
View(Kawanda_yielddata)
#Transforming treatments into a factor.
Kawanda_yielddata$Treatment=as.factor(Kawanda_yielddata$Treatment)
#Transforming blocks into a factor.
Kawanda_yielddata$Block=as.factor(Kawanda_yielddata$Block)
#Fitting two way anova model without interaction effect.
anova_2=aov(Grain.yield..kg.plot..5.625m2.~Treatment+Block,data = Kawanda_yielddata)

#Normality assumption.

#plotting a normality plot of residuals.
plot(anova_2,2)
qqplot(residuals(anova_2))
#Testing normality of residuals of the model using shapiro wilk test .
shapiro.test(anova_2$residuals)

#Homogeneity of varainces assumption 

#Checking homogeneity of variances using a plot of residuals versus fitted values.
plot(anova_2,1)
#Loading library car
library(car)
#Computing levene test to check homogeneity of varainces for treatments.
leveneTest(Grain.yield..kg.plot..5.625m2.~Treatment,data=Kawanda_yielddata)
#Computing levene test to check homogeneity of varainces for blocks.
leveneTest(Grain.yield..kg.plot..5.625m2.~Block,data=Kawanda_yielddata)
#Alternatively,Barlette test for checking homogeneity of variances.
bartlett.test(Grain.yield..kg.plot..5.625m2.~Treatment,data = Kawanda_yielddata)
#Alternatively,Barlette test for checking homogeneity of variances.
bartlett.test(Grain.yield..kg.plot..5.625m2.~Block,data = Kawanda_yielddata)
#Plotting diagnostic plots at once .
par(mfrow=c(2,2))
plot(anova_2)

#End.