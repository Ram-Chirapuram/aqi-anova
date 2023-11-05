library("readxl")
a = read_excel(file.choose())
View(a)
install.packages("ggpubr")


library("ggpubr")
cor.test(log(a$AQI), a$LE, alternative = "less",
         method = "pearson", conf.level = 0.05)

qqnorm(a$LE)
hist(a$LE)
shapiro.test(a$LE)
boxplot(a$AQI)
boxplot(a$LE)
