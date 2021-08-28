e_quakes <- datasets::quakes
#top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)
#columns
e_quakes[2,c(1:4)]
eq<-e_quakes[,c(-1,-2)]
eq$depth
summary(eq$mag)
summary(eq)
summary(e_quakes$depth)
######Columns
eq[,c(1,2)]
#Plots
plot(eq$depth)
plot(eq$mag,eq$stations,type="p")
plot(eq)
plot(eq$depth,type = "l")
plot(eq$depth,xlab = "Earth Quake Depth",ylab = "No of Occurence",
     main = 'Earthquakes in India', col = "Red")
# horizontal
barplot(eq$depth, main = 'Earth quakes',ylab = 'EQ occurence', 
col= 'Blue',horiz = T,axes=T)

#Histogram
hist(eq$mag)
hist(eq$depth, 
     main = 'EQ magnitudes',
     xlab = 'Occurence.', col='Blue')
boxplot(eq$depth,main="Boxplot")
boxplot.stats(eq$mag)$out

boxplot(eq[,1:3],main='Multiple')

par(mfrow=c(3,3),mar=c(2,5,2,1), las=0,bty="O")
plot(eq$depth)
plot(eq$depth, eq$mag)
plot(eq$depth, type= "l")
plot(eq$depth, type= "l")
plot(eq$depth, type= "l")
barplot(eq$depth, main = 'Earth Quake Depth',
        xlab = 'Depth levels', col='green',horiz = TRUE)
hist(eq$depth)
boxplot(eq$depth)
boxplot(eq[,0:3], main='Multiple Box plots')

