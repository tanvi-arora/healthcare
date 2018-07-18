####################
# created by : Tanvi Arora
# Created Date : 2018/07/15
# This script load all datasets required for this project
###################

##@knitr load_samhda

#load samhda dataset
#data is downloaded manually from the site as .rda file and is loaded to R global environment

f<- load(file = "C:/Users/tanvi/Documents/SMU/Assignments/MSDS 6306 - Doing DataScience/Unit10/N-MHSS-2015-DS0001-bndl-data-r/N-MHSS-2015-DS0001-data/N-MHSS-2015-DS0001-data-r.rda")
head(f)

#get first few records of the dataset
#head(mh2015_puf)

# structure of the dataset
#str(mh2015_puf)

# keep a backup of original dataset

mh2015_puf.orig_ds <- mh2015_puf

##@knitr load_statesize

statesize <- read.csv('Data/statesize.csv', header=T)

str(statesize)

dim(statesize)