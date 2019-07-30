#10/02/2019
#Multiple pairwise comparison of group means using R.
#CIAT data and research methods project
#Prepared by Rachael Mburu



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
#Computing two way anova without an interaction term.
twoway_anova1=aov(Grain.yield..kg.plot..5.625m2.~Treatment+Block,data = Kawanda_yielddata)
#Computing the summary of the model.
summary(twoway_anova1)
#Determining the pair of treatments that differ,computed if treatments are signficant.
TukeyHSD(twoway_anova1,which="Treatment")

# End.
