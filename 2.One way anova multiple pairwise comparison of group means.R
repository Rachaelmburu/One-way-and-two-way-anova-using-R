#08/02/2019
#Multiple pairwise comparison of group means using R.
#CIAT data and research methods project
#Prepared by Rachael Mburu

#Setting the working directory 
setwd("C:/Users/Rayal Angel/Desktop/Data & Research methods")
#Importing data to R
Kawanda_datas1=read.csv("Kawanda_datas1.csv")
#Transforming the independent variable into a factor
Kawanda_datas1$Treatment=as.factor(Kawanda_datas1$Treatment)
#Fitting one way anova model to compare the mean yield for the different treatments.
anova1=aov(Grain.yield..kg.plot..5.625m2.~Treatment,data = Kawanda_datas1)
#Determining the pair of treatments that differ at 95% confidence interval.
TukeyHSD(anova1)
#Determining the pair of treatments that differ at 99% confidence interval.
TukeyHSD(anova1,conf.level = 0.99)
#Plotting the tukeyHSD comparison means reslts at 99% confidence interval.
plot(TukeyHSD(anova1,conf.level = 0.99),col="blue")


#End.
