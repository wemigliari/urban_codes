library(dplyr)
library(plotly)
library(readxl)
library(gplots)
library(ggplot2)
library(plotly)
library(rvest)
library(viridis)


carbon_emission <- read_excel("/Users/wemigliari/Documents/R/tabelas/carbon_emissions.xlsx", sheet = "Data", 
                               col_types = c("text", "text", "text", "text", "numeric", 
                                "numeric", "numeric", "numeric", 
                                "numeric", "numeric", "numeric", 
                                "numeric", "numeric", "numeric"))



par(mfrow= c(3, 2), oma = c(1, 1, 1, 1), mar = c(3,3,3,3))

plot(carbon_emission$`2007`, carbon_emission$`2008`, col = "gray", pch = 23, cex = 1, xlab = "2007", ylab = "2008", bty = "n")
plot(carbon_emission$`2009`, carbon_emission$`2010`, col = "black", pch = 0, cex = 1, xlab = "2009", ylab = "2010", bty = "n")
plot(carbon_emission$`2011`, carbon_emission$`2012`, col = "gray", pch = 1, cex = 1, xlab = "2011", ylab = "2012", bty = "n")
plot(carbon_emission$`2013`, carbon_emission$`2014`, col = "black", pch = 2, cex = 1, xlab = "2013", ylab = "2014",  bty = "n")
plot(carbon_emission$`2015`, carbon_emission$`2016`, col = "gray", pch = 3, cex = 1, xlab = "2015", ylab = "2016",  bty = "n")
mtext("Adjusted Net Savings, Including Particulate Emission Damage (% of GNI)", outer = TRUE, cex = 0.8)


plot(x07, y07, col = "gray", type = "l", xlab = "Overlapped Normal Distributions for Adjusted Net Savings", ylab = "Densities",
     ylim = c(0, 0.032), bty = "n")
lines(x08, y08, col = "blue")
lines(x09, y09, col = "orange")
lines(x10, y10, col = "red")
lines(x11, y11, col = "purple")
lines(x12, y12, col = "green")
lines(x13, y13, col = "black")
lines(x14, y14, col = "#32CD32")
lines(x15, y15, col = "#C71585")
lines(x16, y16, col = "#4682B4")
legend("topleft", legend=c("2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016"),
       col=c("gray", "blue", "orange", "red", "purple", "green", "black", "#32CD32", "#C71585", "#4682B4"), 
       lty=1, box.lty = 0, bty = "n", cex=0.3)

#
max(carbon_emission$`2007`, na.rm = TRUE)
#[1] 40.27833
x07 <- seq(-40.27833, 40.27833, by = 1)

mean(carbon_emission$`2007`, na.rm = TRUE)
#[1] 9.889882
sd(carbon_emission$`2007`, na.rm = TRUE)
#[1] 13.38695
y07 <- dnorm(x07, 9.889882, 13.38695)

#
max(carbon_emission$`2008`, na.rm = TRUE)
#[1] 41.47812
x08 <- seq(-41.47812, 41.47812, by = 1)

mean(carbon_emission$`2008`, na.rm = TRUE)
#[1] 8.814616
sd(carbon_emission$`2008`, na.rm = TRUE)
#[1] 13.94103
y08 <- dnorm(x08, 8.814616, 13.94103)

#
max(carbon_emission$`2009`, na.rm = TRUE)
#[1] 33.21449
x09 <- seq(-33.21449, 33.21449, by = 1)

mean(carbon_emission$`2009`, na.rm = TRUE)
#[1] 6.841645
sd(carbon_emission$`2009`, na.rm = TRUE)
#[1] 12.76335
y09 <- dnorm(x09, 6.841645, 12.76335)

#
max(carbon_emission$`2010`, na.rm = TRUE)
#[1] 40.88486
x10 <- seq(-40.88486, 40.88486, by = 1)

mean(carbon_emission$`2010`, na.rm = TRUE)
#[1] 7.836782
sd(carbon_emission$`2010`, na.rm = TRUE)
#[1] 12.30116
y10 <- dnorm(x10, 7.836782, 12.30116)

#
max(carbon_emission$`2011`, na.rm = TRUE)
#[1] 39.62187
x11 <- seq(-39.62187, 39.62187, by = 1)

mean(carbon_emission$`2011`, na.rm = TRUE)
#[1] 7.740942
sd(carbon_emission$`2011`, na.rm = TRUE)
#[1] 12.89443
y11 <- dnorm(x11, 7.740942, 12.89443)

#
max(carbon_emission$`2012`, na.rm = TRUE)
#[1] 42.52314
x12 <- seq(-42.52314, 42.52314, by = 1)

mean(carbon_emission$`2012`, na.rm = TRUE)
#[1] 7.706877
sd(carbon_emission$`2012`, na.rm = TRUE)
#[1] 13.13616
y12 <- dnorm(x12, 7.706877, 13.13616)

#
max(carbon_emission$`2013`, na.rm = TRUE)
#[1] 39.78991
x13 <- seq(-39.78991, 39.78991, by = 1)

mean(carbon_emission$`2013`, na.rm = TRUE)
#[1] 6.913795
sd(carbon_emission$`2013`, na.rm = TRUE)
#[1] 14.26304
y13 <- dnorm(x13, 6.913795, 14.26304)

#
max(carbon_emission$`2014`, na.rm = TRUE)
#[1] 43.4479
x14 <- seq(-43.4479, 43.4479, by = 1)

mean(carbon_emission$`2014`, na.rm = TRUE)
#[1] 8.167292
sd(carbon_emission$`2014`, na.rm = TRUE)
#[1] 12.73885
y14 <- dnorm(x14, 8.167292, 12.73885)

#
max(carbon_emission$`2015`, na.rm = TRUE)
#[1] 41.15727
x15 <- seq(-41.15727, 41.15727, by = 1)

mean(carbon_emission$`2015`, na.rm = TRUE)
#[1] 7.428653
sd(carbon_emission$`2015`, na.rm = TRUE)
#[1] 13.07
y15 <- dnorm(x15, 7.428653, 13.07)

#
max(carbon_emission$`2016`, na.rm = TRUE)
#[1] 34.05125
x16 <- seq(-34.05125, 34.05125, by = 1)

mean(carbon_emission$`2016`, na.rm = TRUE)
#[1] 7.861153
sd(carbon_emission$`2016`, na.rm = TRUE)
#[1] 12.25106
y16 <- dnorm(x16, 7.861153, 12.25106)

#

max(y14)
#0.032 for ylim

plot(x07, y07, col = "gray", type = "l", xlab = "Overlapped Normal Distributions for Adjusted Net Savings", ylab = "Densities",
     ylim = c(0, 0.032))
lines(x08, y08, col = "blue")
lines(x09, y09, col = "orange")
lines(x10, y10, col = "red")
lines(x11, y11, col = "purple")
lines(x12, y12, col = "green")
lines(x13, y13, col = "black")
lines(x14, y14, col = "#32CD32")
lines(x15, y15, col = "#C71585")
lines(x16, y16, col = "#4682B4")
legend("topleft", legend=c("2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016"),
       col=c("gray", "blue", "orange", "red", "purple", "green", "black", "#32CD32", "#C71585", "#4682B4"), 
       lty=1, box.lty = 0, bty = "n", cex=0.3)

######## Boxplots

set.seed(10000)

# My table carbon_emissions is full of NAs and ",", "." and "other symbols"

carb_tab7 <-sapply(carbon_table$`2007`, function(x) as.numeric(gsub(",", ".", x)))
carb_tab8 <-sapply(carbon_table$`2008`, function(x) as.numeric(gsub(",", ".", x)))
carb_tab9 <-sapply(carbon_table$`2009`, function(x) as.numeric(gsub(",", ".", x)))
carb_tab10 <-sapply(carbon_table$`2010`, function(x) as.numeric(gsub(",", ".", x)))
carb_tab11 <-sapply(carbon_table$`2011`, function(x) as.numeric(gsub(",", ".", x)))
carb_tab12 <-sapply(carbon_table$`2012`, function(x) as.numeric(gsub(",", ".", x)))
carb_tab13 <-sapply(carbon_table$`2013`, function(x) as.numeric(gsub(",", ".", x)))
carb_tab14 <-sapply(carbon_table$`2014`, function(x) as.numeric(gsub(",", ".", x)))
carb_tab15 <-sapply(carbon_table$`2015`, function(x) as.numeric(gsub(",", ".", x)))
carb_tab16 <-sapply(carbon_table$`2016`, function(x) as.numeric(gsub(",", ".", x)))


# Calcular media

mean7<- mean(carb_tab7, na.rm = TRUE) 
mean8 <- mean(carb_tab8, na.rm = TRUE)
mean9 <- mean(carb_tab9, na.rm = TRUE)
mean10 <- mean(carb_tab10, na.rm = TRUE)
mean11 <- mean(carb_tab11, na.rm = TRUE)
mean12<- mean(carb_tab12, na.rm = TRUE)
mean13 <- mean(carb_tab13, na.rm = TRUE)
mean14 <- mean(carb_tab14, na.rm = TRUE)
mean15 <- mean(carb_tab15, na.rm = TRUE)
mean16 <- mean(carb_tab16, na.rm = TRUE)

sd7 <- sd(carbon_table$`2007`, na.rm = TRUE)
sd8 <- sd(carbon_table$`2008`, na.rm = TRUE)
sd9 <- sd(carbon_table$`2009`, na.rm = TRUE)
sd10 <- sd(carbon_table$`2010`, na.rm = TRUE)
sd11<- sd(carbon_table$`2011`, na.rm = TRUE)
sd12 <- sd(carbon_table$`2012`, na.rm = TRUE)
sd13 <- sd(carbon_table$`2013`, na.rm = TRUE)
sd14 <- sd(carbon_table$`2014`, na.rm = TRUE)
sd15 <- sd(carbon_table$`2015`, na.rm = TRUE)
sd16 <- sd(carbon_table$`2016`, na.rm = TRUE)

## Create a dataset

par(mfrow = c(2,5))

data <- data.frame(
  name=c(rep("2007",264), rep("2008",264), rep("2009",264), rep("2010",264), rep('2011', 264)),
  value=c(rnorm(264, mean7, sd7), rnorm(264, mean8, sd8), rnorm(264, mean9, sd9), rnorm(264, mean10, sd10), rnorm(264, mean11, sd11))
)

# Plot
data %>%
  ggplot( aes(x=name, y=value, fill=name)) +
  geom_boxplot() +
  labs(x = "", y = "") +
  theme_minimal() +
  scale_fill_viridis(discrete = TRUE, alpha=0.0) +
  geom_jitter(color="black", size=0.3, alpha=0.7) +
  theme(
    legend.position="center",
    plot.title = element_text(size=9)
  ) 
##

data1 <- data.frame(
  name=c(rep("2012",264), rep("2013",264), rep("2014",264), rep("2015",264), rep('2016', 264)),
  value=c(rnorm(264, mean12, sd12), rnorm(264, mean13, sd13), rnorm(264, mean14, sd14), rnorm(264, mean15, sd15), rnorm(264, mean16, sd16))
)


data1 %>%
  ggplot( aes(x=name, y=value, fill=name)) +
  geom_boxplot() +
  labs(x = "", y = "") +
  theme_minimal() +
  scale_fill_viridis(discrete = TRUE, alpha=0.0) +
  geom_jitter(color="black", size=0.3, alpha=0.7) +
  theme(
    legend.position="center",
    plot.title = element_text(size=9)
  ) 




