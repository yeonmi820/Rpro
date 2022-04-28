install.packages("ggplot2")
library("ggplot2")

df <- read.csv("example_studentlist.csv")
CT <- table(df$sex,df$bloodtype)
propct <- prop.table(CT,margin = 1)
addmargins(propct,margin = 2)


cancer <- read.csv("example_cancer.csv")
Age <- cut(cancer$age, breaks = seq(from=50,to=80,by=5),right = FALSE)
Age <- table(Age)
 propAge <- prop.table(Age)
cumAge <- cumsum(propAge)


DF <- read.csv("example_population_f.csv")
str(DF)

Msplit <- split(DF$Male, DF$Provinces)
Mpopul <- sapply(Msplit,sum)

Fsplit <- split(DF$Female, DF$Provinces)
Fpopul <- sapply(Fsplit,sum)
newDF <- data.frame(Provinces=names(Mpopul), male = Mpopul,female = Fpopul)


rownames(newDF) <- NULL
newDF

a <- 1
b <- 2
if(a > b)print("a is small")

if(a > b){
  print("bigger")
}else{
  print("false")
  print("smaller")
}

if(a < b){
  print("a가 작음")
}else if(a > b){
  print("a가 큼")
}else {
  print("같음")
}
ifelse(a<b,"a is smaller","a is bigger")

a <-1:12
for (i in 5:8) {
  print(a[i])
}
DF <- read.csv("example_population.csv",stringsAsFactors = FALSE)
str(DF)
install.packages("stringr")
library("stringr")
a <- "I-LOVE-YOU"
x <- str_split_fixed(a, "-", 2)
typeof(x)

temp <- str_split_fixed(DF[,1],"\\(",2)
head(temp,5)
newcity <- str_split_fixed(temp[,1]," ",2)
head(newcity,5)

colnames(newcity) <- c("Provinces","City")

DF <- data.frame(newcity,DF[,2:7])
str(DF)

DF[DF == " "] <- NA
head(DF,5)
DF <- DF[complete.cases(DF),]

for (i in 3:8) {
  DF[,i] <- sapply(DF[,i], function(x) gsub(",","",x))
  DF[,i] <- as.numeric(DF[,i])
}

t <- tapply(DF$Population, DF$Provinces, sum) 
t
T <- tapply(df$height,df$sex,mean)
T





























