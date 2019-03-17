#Using ggplot and the points layer, create a scatter plot of life expectancy versus fertility for the African continent in 2012.
library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)
gapminder %>% filter(continent=="Africa" & year == 2012) %>%
  ggplot(aes(fertility, life_expectancy)) +
  geom_point()


#Adding color
library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)
gapminder %>% filter(continent=="Africa" & year == 2012) %>%
  ggplot(aes(fertility, life_expectancy, color = region)) +
  geom_point()


#Create a table showing the country and region for the African countries (use select) that in 2012 
#had fertility rates of 3 or less and life expectancies of at least 70.

library(dplyr)
library(dslabs)
data(gapminder)
df <- gapminder %>% 
  filter(continent=="Africa" & year == 2012 & fertility <=3 & life_expectancy>=70) %>%
  select(country, region)


#Use filter to create a table with data for the years from 1960 to 2010 in Vietnam and the United States.
library(dplyr)
library(dslabs)
data(gapminder)
years <- 1960:2010
countries <- c("United States", "Vietnam")
tab <- gapminder %>% filter(year %in% years & country %in% countries)


#Use geom_line to plot life expectancy vs year for Vietnam and the United States. The data table is stored in tab.
p <- tab %>% ggplot(aes(x = year, y = life_expectancy, color = country)) +
  geom_line()

#Use a single line of code to create a time series plot from 1960 to 2010 of life expectancy vs year for Cambodia.
library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)
years <- 1960:2010
countries <- c("Cambodia")
tab <- gapminder %>% filter(year %in% years & country %in% countries) %>%
  ggplot(aes(x = year, y = life_expectancy)) +
  geom_line()


#Use mutate to create a dollars_per_day variable, which is defined as gdp/population/365.
#Create the dollars_per_day variable for African countries for the year 2010.
#Remove any NA values.
library(dplyr)
library(dslabs)
data(gapminder)
daydollars <- gapminder %>% mutate(dollars_per_day = gdp/population/365) %>% filter(continent == "Africa" & year == 2010 & !is.na(dollars_per_day)) 
#mutate is used to add new column to existing data


#Create a smooth density plot of dollars per day from daydollars.
#Use a log (base 2) scale for the x axis.
daydollars %>% ggplot(aes(dollars_per_day)) +
  geom_density() +
  scale_x_continuous(trans = "log2")


#Create a smooth density plot of dollars per day for 1970 and 2010 using a log (base 2) scale for the x axis.
#Use facet_grid to show a different density plot for 1970 and 2010.
library(ggplot2)
library(dslabs)
data(gapminder)
gapminder %>% 
  mutate(dollars_per_day = gdp/population/365) %>%
  filter(continent == "Africa" & year %in% c(1970,2010) & !is.na(dollars_per_day)) %>%
  ggplot(aes(dollars_per_day)) + 
  geom_density() + 
  scale_x_continuous(trans = "log2") + 
  facet_grid(year ~ .)

#Make sure the densities are smooth by using bw = 0.5.
#Use the fill and position arguments where appropriate to create the stacked histograms of each region.
library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)
gapminder %>% mutate(dollars_per_day = gdp/population/365) %>%
  filter(continent == "Africa" & year %in% c(1970,2010) & !is.na(dollars_per_day)) %>%
  ggplot(aes(dollars_per_day, fill = region)) +
  geom_density(position = "stack", bw = 0.5) +
  scale_x_continuous(trans = "log2")
  facet_grid(year~.)

#Store the mutated dataset in gapminder_Africa_2010.
#Make a scatter plot of infant_mortaility versus dollars_per_day for countries in the African continent.
#Use color to denote the different regions of Africa.
  library(dplyr)
  library(ggplot2)
  library(dslabs)
  data(gapminder)
  gapminder_Africa_2010 <- gapminder %>% 
    mutate(dollars_per_day = gdp/population/365) %>%
    filter(continent == "Africa" & year == 2010 & !is.na(dollars_per_day) & !is.na(infant_mortality))
  
  gapminder_Africa_2010 %>%  ggplot(aes(dollars_per_day, infant_mortality, color = region)) +
    geom_point()

#Add a layer to display country names instead of points
  gapminder_Africa_2010 %>% ggplot(aes(dollars_per_day, infant_mortality, color = region, label = country)) + geom_point() +
    geom_text() +
    scale_x_continuous(trans = "log2")
#Adding label to aes to show name, add geom_text to directly add text to the plot

  
#comparison of scatter plots
  library(dplyr)
  library(ggplot2)
  library(dslabs)
  data(gapminder)
  gapminder %>% mutate(dollars_per_day = gdp/population/365) %>%
    filter(continent == "Africa" & year %in% c(1970,2010) & !is.na(dollars_per_day) & !is.na(infant_mortality)) %>%
    ggplot(aes(dollars_per_day,infant_mortality, color = region, label = country)) +
    geom_point() +
    geom_text() +
    scale_x_continuous(trans = "log2") +
    facet_grid(year~.)