####################
# created by : Tanvi Arora
# Created Date : 2018/07/15
# This script will create all dataframes for the mental health requirement
###################

##@knitr VA_mc_US

#dataset should include Veterans Administration(VA) medical centers in the mainland United States only only.
# US states to be excluded from the analysis are Alaska, Hawaii
#United States territories include  American Samoa,  Puerto Rico, Guam and United States Virgin Islands. These will also be omitted.


# dimensions of original data
dim(mh2015_puf)
mh2015.mc_us <- mh2015_puf %>% filter(!LST1 %in% c("AK","AS","HI","GU","PR","VI"))

# dimensions of dataset after omitting non-mainland states and territories
dim(mh2015.mc_us)



mh2015.va.mc_us <- mh2015.mc_us[mh2015.mc_us$FACILITYTYPE=="Veterans Administration medical center (VAMC) or other VA health care facility",]
# dimension of dataset for VA medical centers in US mainland
dim(mh2015.va.mc_us)
class(mh2015.va.mc_us)

#count number of VA medical centers in each state

mh2015.va.mc_us.count <- mh2015.va.mc_us %>% group_by(LST) %>% summarise(count=sum(!is.na(FACILITYTYPE)))

head(mh2015.va.mc_us.count)
