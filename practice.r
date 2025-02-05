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


