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

##Scatter plot
![Scatter Plot](<img width="361" height="351" alt="Rplot01" src="https://github.com/user-attachments/assets/a1520d4c-4630-4a52-a8ad-d866eaaa7656" />)

###Histogram 
![Histogram of BDI](<img width="361" height="351" alt="Rplot02" src="https://github.com/user-attachments/assets/39e14b27-a31d-45ae-9c4f-1e4fe9c0f8d4" />)
![Histogram of IAT](<img width="361" height="351" alt="Rplot" src="https://github.com/user-attachments/assets/abf84227-2639-4363-9a2d-37902d0b8957" />)

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

