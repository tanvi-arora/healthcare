####################
# created by : Tanvi Arora
# Created Date : 2018/07/15
# This script fetch any data from the dataset for study purpose
###################

##@knitr get_stateabb

## remove whitespaces from state abb names

mh2015_puf$LST1 <- trimws(mh2015_puf$LST, which = c("both"))

# get unique values from the field LST
mh2015.state_lst <- unique(mh2015_puf$LST1)

# print list of states
mh2015.state_lst


##@knitr view_lst

# paste first few records from LST to see the data
head(paste(mh2015_puf$LST))


##@knitr clean_lst
#remove whitspaces 
# trimws removes leading and/or trailing whitespaces from character strings, we prefer to remove from both leading and trailing 

mh2015.va.mc_us.count$LST <- trimws(mh2015.va.mc_us.count$LST, which = c("both"))


##@knitr merge1

mh2015.va.mc_us.statesize1 <- merge(mh2015.va.mc_us.count, statesize, by.x="LST", by.y="Abbrev")
dim(mh2015.va.mc_us.statesize1)
summary(mh2015.va.mc_us.statesize1$SqMiles)




##@knitr merge2

mh2015.va.mc_us.statesize <- merge(mh2015.va.mc_us.count, statesize, by.x="LST", by.y="Abbrev")

# list top records from the merged dataset
head(mh2015.va.mc_us.statesize)

#dimension of the merged dataset
dim(mh2015.va.mc_us.statesize)

#summary of the sqMiles data from the merged dataset
summary(mh2015.va.mc_us.statesize$SqMiles)


##@knitr va_mc_per1000

mh2015.va.mc_us.statesize$va_mc_per1000 <- (mh2015.va.mc_us.statesize$count/mh2015.va.mc_us.statesize$SqMiles)*1000

# list top records from the merged dataset
head(mh2015.va.mc_us.statesize)

#dimension of the merged dataset
dim(mh2015.va.mc_us.statesize)

#summary of the va_mc_per1000 data from the merged dataset
summary(mh2015.va.mc_us.statesize$va_mc_per1000)


