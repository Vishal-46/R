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


