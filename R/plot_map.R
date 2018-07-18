####################
# created by : Tanvi Arora
# Created Date : 2018/07/15
# This script will contain all scripts related to plotting
###################

##@knitr plot_va_mc_us

#theme update will adjust main title to the center of the plot
theme_update(plot.title = element_text(hjust = 0.5))
# plot barchart , order on count of VA medical centers per state, colour based on state
ggplot(data=mh2015.va.mc_us.count, aes(reorder(LST,count),count)) + geom_bar(stat="identity", aes(fill = LST)) + coord_flip()+ labs(title="Number of VA medical centers in US mainland states") + xlab("States of US mainland") + ylab("count of VA medical centers") + theme(legend.position="none")


##@knitr plot_va_mc_us_per1000

# plot barchart , order on count of VA medical centers per state, colour based on region, use a colour palette other than default
ggplot(data=mh2015.va.mc_us.statesize, aes(reorder(StateName,va_mc_per1000),va_mc_per1000)) + geom_bar(stat="identity", aes(fill = Region)) + coord_flip()+ labs(title="Number of VA medical centers per 1000sqMiles in US mainland states") + xlab("States of US mainland") + ylab("count of VA medical centers per 1000 SqMiles") + scale_fill_brewer(palette="Spectral")
  
