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