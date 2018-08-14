# WDPA layer very large
# code runs script and saves file country by country
#############################
kpacks <- c('sp','maptools', 'rgdal', 'adehabitat','geosphere','fields','spatstat','maps','rgeos','data.table') ### install automatically the relevant packages
new.packs <- kpacks[!(kpacks %in% installed.packages()[,"Package"])]
if(length(new.packs)) install.packages(new.packs)
lapply(kpacks, require, character.only=T)
remove(kpacks, new.packs)
#############################

library(sf)
library(rgdal)

setwd("/Users/colleennell/Dropbox/rstats/consulting/WWF/WDPA/")


# read in WDPA shapefiles
eez.shp<-readOGR('data/EEZ_WVS_layer/EEZv8_WVS_DIS_V3_ALL_final_v7disUNEP')
str(pas.shp, max.level=2)

eez<-st_read('data/EEZ_WVS_layer/EEZv8_WVS_DIS_V3_ALL_final_v7disUNEP')
plot(eez)
