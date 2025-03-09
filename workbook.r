#Week-01

ID = c(1,2,3,4)
Name = c("Tim","Ken","John","Elisa")
Mobile = c("24465","25364","20495","24938")
df = data.frame(ID,Name,Mobile)
print(df)

print(df[2:3,])

df2 = subset(df,ID==1|Name == "Elisa")
print(df2)

df[[2]][3] = "Johana"
print(df)

df = rbind(df,data.frame(ID=5,Name="Nick",Mobile="24735"))
print("Adding the 5th row")
print(df)

df = cbind(df,data.frame(Percentage = c("89","78","54","96","59")))
print(df)

df3 = df[-5,-4]
print(df3)

df4 = df[,!names(df)%in%c("Mobile")]
print(df4)

print("Column")
df5 = df[-4,]
print(df5)

x = c(5, 10, 15, 20)
y = x[x>10]
print(y)
#Recasting and joining df
#A new simple dataset 
pd=data.frame("Name" = c("Joster","Dio","Musashi","Ruffy"),
              "Strength"=c("stands","Za World","Invincible","rubber"),
              "Counts"=c(20,45,99,0),
              "Age"=c(29,30,45,20))
print(pd)
#Melt library package - install.packages("reshape2")
library(reshape2)
res1 = melt(pd,id.vars = c("Name","Strength"),measure.vars = c("Counts","Age"))
print(res1)
#cast
res2 = dcast( res1, variable+value~Name, value.var = "value")
print(res2)
res3 = dcast( res1, Name~variable+value, value.var = "value")
print(res3)
res4 = dcast( res1, variable+Name~value, value.var = "value")
print(res4)
#recast in single step with recast()
res5 <- recast(res1, variable + value ~ Name)
print(res5)
#New var based to existing one in dataframe using dplyr mutate - install.packages("dplyr")
library(dplyr)
pd2 = mutate(pd, log_Age = log(Age))
print(pd2)
#Joining 2DFs 
#creating 2DFs
fr1 = data.frame("ID" = c(1,2,3,4),
                 "Name" = c("Corozan","Jinbe","Bortolomeo","Nami"),
                 "Age" = c(34,36,29,21))
fr2 = data.frame("ID" = c(1,2,3,4)
                 "Title" = c("Kindman","First son","Barrier","Burglar"),
                "Positions" = c("Vice","Fishman","Captain","Navigator"))
print(fr1)
print(fr2)

k=b[3,3]
print(k)


#Matrix concatenation
c = matrix(c(19,29,39),nrow = 1, ncol = 3, byrow = TRUE)
# C is a row and for bind b and c
j=rbind(b,c)
print(j)

#Inline function
func = function(x)x^2+4*x+4
func(1)
print(func(1))
fu9 = func(9)
print(fu9)

#Looping over objects
l = matrix(1:9,3,3)
print(l)

#apply func
print(apply(l,1,sum))# A=mat,1=row wise , 2=clmn wise, sum= func
print(apply(l,2,sum))

#lapply func
aslist = list(b,l)
determinant = lapply(aslist,det)
print(determinant)

#mapply func(only syntax)
#ma=mapply(volcylinder,list1,list2)

#tapply func
li = c(1,1,1,1,2,2,2,3,3)
vale = c(1,2,3,4,5,6,7,8,9)
ta = tapply(vale,li,sum)
print(ta)

#control structures
i = 16
if(i>20){
  print("I is greater than 20")
}else{
  
  print("I is Lesser than 20")
}

if(i>17){
  i=i+1
  print(i)
}else if(i>18){
  i=i+2
  print(i)
}else{
  i=i+3
  print(i)
}

#sequence func
print(seq(from=1, to=10, by=3))
print(seq(from=1, to=10, by=4))

#For loop
n = 5
sum = 0
for(i in seq(1,n,1)){
  sum = sum+i
  print(c("for loop:",i,sum))
}

#DEV
#Scatter plot
f = 1:10
g = f^2
plot(g)

#Using a dataset mtcars
plot(mtcars$wt,mtcars$mpg, main = "Scatter plot in r using DS" , xlab = "Weight", ylab = "meter per gallon", pch=19)

#line plot
plot(f,g,type = 'l')
plot(mtcars$wt,mtcars$mpg, main = "Scatter plot in r using DS" , xlab = "Weight", ylab = "meter per gallon", pch=19, type='l')

#bar plot
u = c(24,20,18,27)
i = c("Jan", "Feb", "Mar", "Apr")
barplot(u,names.arg = i, xlab="Month",ylab="revenue",col="blue",main="Revenue-bar plot",border="red",)

#Week-02
#Generalization
o = matrix(c(1,2,3,0,0,1),ncol=2,byrow=F)
r = matrix(c(1,2,5),ncol=1,byrow=F)
library(MASS)
l = ginv(o) %*% r
print(l)


y = matrix(c(1,0,2,9,3,1),ncol=3,byrow=F)
ji = c(2,1)
library(MASS)
re = ginv(y) %*% ji
print(re)
