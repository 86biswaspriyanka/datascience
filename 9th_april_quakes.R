datasets::quakes
library(datasets)
data("quakes")
head(quakes)
tail(quakes)
quakes[,c(3,4,5)]
quakes$depth
summary(quakes$depth)
summary(quakes)
plot(quakes$depth)
plot(quakes$depth,quakes$mag)
plot(quakes)
###################
points and lines
plot(quakes$depth,type='b')#p:points,l:lines,b:both
plot(quakes$depth,xlab = 'Earth quakes depth',ylab = 'Earth quakes',main = 'earth quakes in my city',col='red')
###################
#horizontal bar plot
barplot(quakes$depth,main = 'Earth quakes depth',xlab = 'Earth quakes',col = 'green',horiz = F)
#histogram
hist(quakes$depth)
hist(quakes$depth,main = 'earth quakes',xlab = 'magnitude',col = 'blue')
#single box plot
boxplot(quakes$depth)
#multiple box plots
boxplot(quakes[,1:4],main='multiple')
#margin of the grid(mar),
#no of rows and columns(mfrow),
#whether a border is to be include(bty).
#and position of the
#lebels(las:1 for horizontal,las:0 for vartical)
#bty-box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),las=1,bty='o')

plot(quakes$depth)
plot(quakes$depth,quakes$mag)
plot(quakes$depth,type = 'l')
plot(quakes$stations,type = 'l')
plot(quakes$mag,type = 'l')
barplot(quakes$depth,main='Earth quakes depth',xlab = 'Earth quakes',col = 'green',horiz = T)
hist(quakes$depth)
boxplot(quakes$depth)
boxplot(quakes[,0:4],main='multiple box plot')
