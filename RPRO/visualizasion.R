install.packages("ggplot2")
library("ggplot2")
install.packages("ggthemes")
library("ggthemes")
str(diamonds)
ggplot(data = diamonds,aes(x=carat,y=price,colour=clarity))+
  geom_point()+theme_wsj()

a <- plot(diamonds$carat) 
a

g1 <- ggplot(data = diamonds,aes(x=carat,y=price,colour=clarity))
g1
g2 <- geom_point()
g3 <- theme_wsj()
g4 <- theme_bw()
g1+g2+g3
g1+g2+theme_bw()

df <- read.csv("example_studentlist.csv")

g1 <- ggplot(df,aes(x=height,y=weight,colour=bloodtype))
g1 + geom_point()
g1 + geom_line(size=1)+geom_point(size=5)+facet_grid(sex~.)
g1 + geom_line(size=1)+geom_point(size=5)+facet_grid(sex~.,scales = "free")
g1 + geom_line(size=1)+geom_point(size=5)+facet_grid(~sex,scales = "free")

str(mpg)
g <- ggplot(mpg,aes(x=displ,y=hwy))
g + geom_point(alpha = 0.3) + facet_grid(cyl~class,scales = "free")

g + geom_point(alpha = 0.3) + facet_wrap(cyl~class,scales = "free")

ggplot(df,aes(x=bloodtype,fill =sex ))+geom_bar(position = "fill")

ggplot(df,aes(x=bloodtype,fill =sex ))+geom_bar(position = "identity")

m <- tapply(df$height,df$bloodtype,mean)
m

df2 <- as.data.frame(m)
df2
df2$bloodtype <- rownames(df2)
df2
rownames(df2) <- NULL
df2

ggplot(df2,aes(x=bloodtype,y=m,fill=bloodtype))+
  geom_bar(stat = "identity")

ggplot(diamonds,aes(x=carat))+
  geom_histogram(binwidth = 0.1,fill="orange")+facet_grid(color~.,scales = "free")

g1 <- ggplot(df,aes(x=weight,y=height))
g1 + geom_point(aes(colour=sex,shape=sex),size=5)

g1 + geom_point(aes(colour=height,shape=sex),size=5)

g1 + geom_point(aes(colour=sex,shape=bloodtype),size=5,alpha=0.6)

g1 + geom_point(aes(size=height,shape=sex),colour="orange")

g1 + geom_point()

ggplot(diamonds,aes(x=x,y=price,colour=clarity))+
  geom_point(alpha=0.03)+theme_solarized_2()

ggplot(diamonds,aes(x=x,y=price,colour=clarity))+
  geom_point(alpha=0.03)+
  xlim(3,9)+theme_solarized_2()



