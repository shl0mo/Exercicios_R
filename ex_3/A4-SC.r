# 1
age = as.data.frame.matrix(read.table(file='age.txt', header=T, sep=","))
teeth = as.data.frame.matrix(read.table(file='teeth.txt', header=T, sep=","))
age_teeth = merge(age, teeth, by="ID")
write.table(age_teeth, file='age_teeth.txt', row.names=F)
