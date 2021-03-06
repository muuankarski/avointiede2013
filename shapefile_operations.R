setwd("~/workspace/courses/own_lectures_courses/openroadshow2013_tku")
download.file("http://gadm.org/data/rda/FIN_adm0.RData", 
              destfile = "data/gadm.RData")
library(ggplot2)
library(rgeos)
# Ja käsitellään tavanomaiseksi data.frameksi
gadm@data$id <- rownames(gadm@data)
gadm.points <- fortify(gadm, region = "id")
gadm.df <- merge(gadm.points, gadm@data, by = "id")
save(gadm.df, file="data/gadm.df.RData")