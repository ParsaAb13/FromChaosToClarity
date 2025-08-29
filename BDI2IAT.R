install.packages("readxl")
library(readxl)
BDI2IAT <- read_excel("F:/BDIIAT.xlsx")
View(BDI2IAT)

#SHOW BDI2RESULT
BDI2IAT$BDI2RESULT
#SHOW IATRESULT
BDI2IAT$IATRESULT

#hist BDI2RESULT
hist(BDI2IAT$BDI2RESULT, col='purple')
#hist IATRESULT
hist(BDI2IAT$IATRESULT, col='purple')


#correlation between BDI and IAT
cor(BDI2IAT$BDI2RESULT , BDI2IAT$IATRESULT)
#answer of correlation : 0.6823271
cor.test(BDI2IAT$BDI2RESULT , BDI2IAT$IATRESULT, method = "pearson")
#t = 5.7536, df = 38, p-value = 1.24e-06 95 percent confidence interval: 0.4709103 0.8196243

#summary of BDI II and IAT 
summary(BDI2IAT$BDI2RESULT)
summary(BDI2IAT$IATRESULT)

#scatterplot
plot(BDI2IAT$BDI2RESULT, BDI2IAT$IATRESULT, main = "Correlation between BDI and IAT",xlab = "BDI(Depression score)", ylab = "IAT(Internet Addiction score", pch=19, col="blue")


#Shapiro-Wilk Test
shapiro.test(BDI2IAT$BDI2RESULT)
shapiro.test(BDI2IAT$IATRESULT)

#Pearson correlation 
cor.test(BDI2IAT$BDI2RESULT, BDI2IAT$IATRESULT, method = "spearman")

#Linear Reg
model <- lm(IATRESULT ~ BDI2RESULT , data = BDI2IAT)
summary(model)
confint(model, level = 0.95)

#ggplot2 
install.packages("ggplot2")
library(ggplot2)
ggplot(BDI2IAT, aes(x = BDI2RESULT, y = IATRESULT)) +
  geom_point(color = "blue", size = 3) +
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  labs(
    title = "Correlation between Depression (BDI) and Internet Addiction (IAT)",
    x = "BDI (Depression Score)",
    y = "IAT (Internet Addiction Score)"
  ) +
  theme_minimal(base_size = 14)


