##################################################################
# This code is used to calculate a species distribution model
# from iNaturalist occurrence data on four non-native lizards
##################################################################

library(raster)
library(dplyr)
library(rgdal)
library(sf)
library(rgeos)
library(dismo)
library(rJava)
library(amt)

# Import the iNaturalist data downloaded from GBIF (https://doi.org/10.15468/dl.z73q6m)
iguana <- read.csv("Iguana.csv", header=TRUE)
agama <- read.csv("Agama.csv", header=TRUE)
anole <- read.csv("Anole.csv", header=TRUE)
curlytail <- read.csv("curlytail.csv", header=TRUE)

# Import landuse shapefile downloaded from South Florida Water Mangaement District (https://www.arcgis.com/home/item.html?id=bad341979b7b4eff856d5e173a57b955)
landuse <- raster("landuse_utm.tif")
landcover<- stack(landuse)  

# Iguana

# Define land cover type for each iguana observation
sp_ig <- SpatialPoints(cbind(as.numeric(iguana$decimalLongitude), as.numeric(iguana$decimalLatitude)), proj4string=CRS("+init=epsg:4326"))
sp_ig <- spTransform(sp_ig, CRS("+proj=utm +zone=17 +datum=WGS84"))
sp_ig <- crop(sp_ig, extent(landcover))
sp_ig <- as.data.frame(sp_ig)

# Create a maxent model
system.file("java",package="dismo")
max.model_ig<-maxent(landcover, p=sp_ig)
response(max.model_ig, expand=0)

# Map the output
max.plot_ig<-predict(landcover, max.model_ig)
plot(max.plot_ig, axes=F, box=F, main="Maxent")

# Agama

# Define land cover type for each agama observation
sp_ag <- SpatialPoints(cbind(as.numeric(agama$decimalLongitude), as.numeric(agama$decimalLatitude)), proj4string=CRS("+init=epsg:4326"))
sp_ag <- spTransform(sp_ag, CRS("+proj=utm +zone=17 +datum=WGS84"))
sp_ag <- crop(sp_ag, extent(landcover))
sp_ag <- as.data.frame(sp_ag)

# Create a maxent model
system.file("java",package="dismo")
max.model_ag<-maxent(landcover, p=sp_ag)
response(max.model_ag, expand=0)

# Map the output
max.plot_ag<-predict(landcover, max.model_ag)
plot(max.plot_ag, axes=F, box=F, main="Maxent")

# Anole

# Define land cover type for each anole observation
sp_an <- SpatialPoints(cbind(as.numeric(anole$decimalLongitude), as.numeric(anole$decimalLatitude)), proj4string=CRS("+init=epsg:4326"))
sp_an <- spTransform(sp_an, CRS("+proj=utm +zone=17 +datum=WGS84"))
sp_an <- crop(sp_an, extent(landcover))
sp_an <- as.data.frame(sp_an)

# Create a maxent model
system.file("java",package="dismo")
max.model_an<-maxent(landcover, p=sp_an)
response(max.model_an, expand=0)

# Map the output
max.plot_an<-predict(landcover, max.model_an)
plot(max.plot_an, axes=F, box=F, main="Maxent")

# Curly tail

# Define land cover type for each curly tail observation
sp_ct <- SpatialPoints(cbind(as.numeric(curlytail$decimalLongitude), as.numeric(curlytail$decimalLatitude)), proj4string=CRS("+init=epsg:4326"))
sp_ct <- spTransform(sp_ct, CRS("+proj=utm +zone=17 +datum=WGS84"))
sp_ct <- crop(sp_ct, extent(landcover))
sp_ct <- as.data.frame(sp_ct)

# Create a maxent model
system.file("java",package="dismo")
max.model_ct<-maxent(landcover, p=sp_ct)
response(max.model_ct, expand=0)

# Map the output
max.plot_ct<-predict(landcover, max.model_ct)
plot(max.plot_ct, axes=F, box=F, main="Maxent")

# Combined map

max.plot_all <- sum(max.plot_ig, max.plot_ag, max.plot_an, max.plot_ct)
plot(max.plot_all, axes=F, box=F, main="Maxent")

