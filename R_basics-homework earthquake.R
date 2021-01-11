e_quakes<-datasets::quakes 

####Top 10 rows and last 10 rows |
head(e_quakes,10)
tail(e_quakes,10)

######Columns 
e_quakes[c(1,2)]

### assign dataframe
df<-e_quakes[,-5]
df

e_quakes$lat
mean(e_quakes$lat)

###########Summary of the data#########
summary(e_quakes[,-1])
summary(e_quakes)
summary(e_quakes$long)

########Visualization Techniques#############
plot(e_quakes$lat)
plot(e_quakes$lat,e_quakes$long,type='p')
plot(e_quakes)
plot(e_quakes$stations, type="l")
plot(e_quakes$stations,
     main='stations quake record chart',
     ylab='Stations',
     xlab="quakes recorded",
     col='Orange',
     horiz=F,
     axis=T,
     type="l")

##Histogram##
hist(e_quakes$lat)
hist(e_quakes$lat,
     main="Equake Latitudes",
     xlab='latitudes',
     col="pink")

##Single Box Plot##
boxplot(e_quakes$long, main='Boxplot')

##Multiple Box plot##
boxplot(e_quakes[,c(1:4)], main="Multiple")

par(mfrow=c(2,2),mar=c(1,5,2,2),las=1,bty="n")
plot(e_quakes$lat)
plot(e_quakes$lat, e_quakes$long)
plot(e_quakes$lat,type="l")
barplot(e_quakes$lat, 
        main="Laitudinal quake",
        xlab="Latitude",
        ylab="Quakes",
        col='pink',
        horiz = T,
        type="p")
hist(e_quakes$long)
boxplot(e_quakes$depth)
boxplot(e_quakes[,1:4])
sd(e_quakes$lat, na.rm=T)
