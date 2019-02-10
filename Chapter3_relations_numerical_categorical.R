#  remove WS
rm(list = ls())

# instal lib
install.packages("mfp",dependencies = T)

#load lib
library(mfp)

# data
data("bodyfat")

# two numerical relations
plot(bodyfat$abdomen, bodyfat$siri,
     xlab = "Abdomen", ylab= "Percent Body Fat")

cor(bodyfat$abdomen,bodyfat$siri)

cor.matrix <- cor(bodyfat[, c("siri", "weight","height","abdomen")])
round(cor.matrix,2)

# two categorical variables
library(MASS)
data("birthwt")
# table (row,column)
table(birthwt$smoke,birthwt$low)
plot(birthwt$smoke, birthwt$bwt)
boxplot(bwt ~ smoke, ylab = "Birthweight",data = birthwt, xlab = "Smoking Status",
        main = "Birthweight by Smoking Status")
# summary smoker status
by(birthwt$bwt, birthwt$smoke, summary)
# sd
by(birthwt$bwt, birthwt$ht, sd)
