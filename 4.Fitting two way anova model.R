#10/02/2019
#Two way anova model using R.
#CIAT data and research methods project
#Prepared by Rachael Mburu

#Setting the working directory 
setwd("C:/Users/Rayal Angel/Desktop/Data & Research methods")
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
#Computing summary of the model.
anova(twoway_anova1)
#Checking whether there is interaction between the independent variables.
interaction.plot(Kawanda_yielddata$Block,Kawanda_yielddata$Treatment,Kawanda_yielddata$Grain.yield..kg.plot..5.625m2.,
                 col = rainbow(2),main="Interaction plot between treatments and blocks")
#Computing a two way anova with an interaction effect.
twoway_anova2=aov(Grain.yield..kg.plot..5.625m2.~Treatment+Block+Treatment*Block,data = Kawanda_yielddata)
#Computing the summary of the fitted model.
summary(twoway_anova2)
#End.

