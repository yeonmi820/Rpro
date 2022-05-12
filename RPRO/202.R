install.packages("ggplot2")
library("ggplot2")

df <- read.csv("example_studentlist.csv")
str(df)
df$height

search()
attach(df)
height

height[1] <- NA
height
df
search()
attach(df)
detach(df)
search()
df2 <- df
attach(df2, pos = 6)
search()


mean(height,na.rm = T)

median(height,na.rm = T)

range(height,na.rm = T)

quantile(height,na.rm = T)
IQR(height,na.rm = T)

summary(height,na.rm = T)
boxplot(height)

cor(height,weight)

cor(df[,c(3,7,8)])

cor(height,weight, use = "complete.obs")

df2 <- df
df2[2,7] <- NA
df2[4,8] <- NA
df2

attach(df2)
search()
cor(height,weight,use = "complete.obs")

detach(df2)
search()

var(height,na.rm = T)
var(height,weight,na.rm = T)

cov(height,weight,use = "complete.obs")

sd(height,na.rm = T)

scale(height)

(height - mean(height)) / sd(height)


sd(height) / mean(height)
sd(weight) / mean(weight)



