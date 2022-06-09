install.packages("dplyr")
library(dplyr)
library(ggplot2)
library(ggthemes)

ts <- read.csv("example_ts.csv")
str(ts)
g1 <- ggplot(ts,aes(x=factor(Date),y=Sales,group=1))+geom_line(colour="orange",size=1)+
  geom_point(colour="red",size=3)#all x are showed
g1 + theme_light()+ggtitle("sales by month")+
  xlab("year")+ylab("sales")+theme(plot.title = element_text(hjust = 0.5,size = 20))

df <- read.csv("example_population_f.csv")
head(df)
df$Provinces
df <- df[,-1]
df <- tbl_df(df)
df3 <- filter(df1,Provinces =="경기도")
df2 <- filter(df,Provinces =="충청북도"|Provinces == "충청남도")
str(df2)
g <- ggplot(df2,aes(x=reorder(City,Population),y=Population,fill=Provinces))+
  geom_bar(stat = "identity")+theme_wsj()
g

df4 <-filter(df,SexRatio > 1, PersInHou < 2) #subset(df,SexRatio > 1 & PersInHou < 2)
df4
ggplot(df4,aes(x=City,y=SexRatio,fill=Provinces))+geom_bar(stat = "identity")+theme_wsj()

df1 <- mutate(df,SexF = ifelse(SexRatio < 1,"f비율높음",ifelse(SexRatio > 1,"m비율높음","same")))
head(df1)

str(df3)
ggplot(df3,aes(x=City,y=SexRatio-1,fill=SexF))+geom_bar(stat = "identity",)+theme_wsj()

ggplot(df3,aes(x=(SexRatio-1),y=reorder(City,SexRatio)))+
  geom_segment(aes(yend=City),xend=0,colour = "blue")+
  geom_point(size=4,aes(colour=SexF))+
  theme_minimal()


df5 <- filter(df1,Provinces =="서울특별시")

ggplot(df5,aes(x=City,y=SexRatio-1,fill=SexF))+geom_bar(stat = "identity",)+theme_wsj()

ggplot(df5,aes(x=(SexRatio-1),y=reorder(City,SexRatio)))+
  geom_segment(aes(yend=City),xend=0,colour = "blue")+
  geom_point(size=4,aes(colour=SexF))+
  theme_minimal()
