#08/02/2019
#One way anova model using R.
#CIAT data and research methods project
#Prepared by Rachael Mburu

#One way anova model

#Setting the working directory 
setwd("C:/Users/Ra/Desktop/Data & Research methods")
#Importing the data to R  .
Kawanda_datas1=read.csv("Kawanda_datas1.csv")
#Viewing the data in R.
View(Kawanda_datas1)
#Transforming the independent variable into a factor
Kawanda_datas1$Treatment=as.factor(Kawanda_datas1$Treatment)
#Computing one way anova test to compare the mean yield for the different treatments.
anova1=aov(Grain.yield..kg.plot..5.625m2.~Treatment,data = Kawanda_datas1)
#Calling anova1 model.
anova1
#Computing the summarized anova table.
anova(anova1)
#Alternatively ,Computing the summary of the model.
summary(anova1)

# End.