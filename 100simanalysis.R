setwd("C:/Users/abonil/OneDrive - Michigan Medicine/Desktop/Cytosim extra files/")

pull <- read.csv("1-11-23/Pull_from_ends/output.txt")
push <- read.csv("1-11-23/Push_from_ends/output.txt")
ten <- read.csv("1-11-23/tension_pull/output.txt")

pull <- read.csv("1-13-23/Pull_from_ends/output.txt")
push <- read.csv("1-13-23/Push_from_ends/output.txt")
ten <- read.csv("1-13-23/tension_pull/output.txt")


#break location
--------------------------------------------------------------------
  breakloc_12_0.5_pull <- read.csv("1-14-23/breakloc/12_0.5/Pull_from_ends/output.txt")
breakloc_12_0.5_push <- read.csv("1-14-23/breakloc/12_0.5/Push_from_ends/output.txt")
breakloc_12_0.5_ten <- read.csv("1-14-23/breakloc/12_0.5/tension_pull/output.txt")

hist(breakloc_12_0.5_pull$X1, main="Pull 12_0.5 breakloc")
hist(breakloc_12_0.5_push$X0, main = "Push 12_0.5 breakloc")
hist(breakloc_12_0.5_ten$X11, main = "ten 12_0.5 breakloc")

breakloc_6_1_pull <- read.csv("1-14-23/breakloc/6_1/Pull_from_ends/output.txt")
breakloc_6_1_push <- read.csv("1-14-23/breakloc/6_1/Push_from_ends/output.txt")
breakloc_6_1_ten <- read.csv("1-14-23/breakloc/6_1/tension_pull/output.txt")

hist(breakloc_6_1_pull$X3, main="Pull 6_1 breakloc")
hist(breakloc_6_1_push$X2, main = "Push 6_1 breakloc")
hist(breakloc_6_1_ten$X3, main = "ten 6_1 breakloc")

breakloc_24_0.25_pull <- read.csv("1-14-23/breakloc/24_0.25/Pull_from_ends/output.txt")
breakloc_24_0.25_push <- read.csv("1-14-23/breakloc/24_0.25/Push_from_ends/output.txt")
breakloc_24_0.25_ten <- read.csv("1-14-23/breakloc/24_0.25/tension_pull/output.txt")

hist(breakloc_24_0.25_pull$X7, main="Pull 24_0.25 breakloc")
hist(breakloc_24_0.25_push$X0, main = "Push 24_0.25 breakloc")
hist(breakloc_24_0.25_ten$X1, main = "ten 24_0.25 breakloc")


#Tension of break
--------------------------------------------------------------------
  names(pull) <- c("Segment 1", "Segment 2", "Segment 3", "Segment 4", "Segment 5", "Segment 6", "Segment 7", "Segment 8", "Segment 9", "Segment 10", "Segment 11", "Segment 12")
names(push) <- c("Segment 1", "Segment 2", "Segment 3", "Segment 4", "Segment 5", "Segment 6", "Segment 7", "Segment 8", "Segment 9", "Segment 10", "Segment 11", "Segment 12")
names(ten) <- c("Segment 1", "Segment 2", "Segment 3", "Segment 4", "Segment 5", "Segment 6", "Segment 7", "Segment 8", "Segment 9", "Segment 10", "Segment 11", "Segment 12") 

mean(pull$`Segment 1`)
mean(pull$`Segment 12`)

mean(push$`Segment 1`)
mean(push$`Segment 12`)

mean(pull$`Segment 1`)
mean(pull$`Segment 12`)

pullmean <- c(mean(pull$`Segment 1`), mean(pull$`Segment 2`), mean(pull$`Segment 3`), mean(pull$`Segment 4`), mean(pull$`Segment 5`), mean(pull$`Segment 6`), mean(pull$`Segment 7`), mean(pull$`Segment 8`), mean(pull$`Segment 9`), mean(pull$`Segment 10`), mean(pull$`Segment 11`), mean(pull$`Segment 12`))
pushmean <- c(mean(push$`Segment 1`), mean(push$`Segment 2`), mean(push$`Segment 3`), mean(push$`Segment 4`), mean(push$`Segment 5`), mean(push$`Segment 6`), mean(push$`Segment 7`), mean(push$`Segment 8`), mean(push$`Segment 9`), mean(push$`Segment 10`), mean(push$`Segment 11`), mean(push$`Segment 12`))
tenmean <- c(mean(ten$`Segment 1`), mean(ten$`Segment 2`), mean(ten$`Segment 3`), mean(ten$`Segment 4`), mean(ten$`Segment 5`), mean(ten$`Segment 6`), mean(ten$`Segment 7`), mean(ten$`Segment 8`), mean(ten$`Segment 9`), mean(ten$`Segment 10`), mean(ten$`Segment 11`), mean(ten$`Segment 12`))

barplot(pullmean, main = "pullmean", names = c("Segment 1", "Segment 2", "Segment 3", "Segment 4", "Segment 5", "Segment 6", "Segment 7", "Segment 8", "Segment 9", "Segment 10", "Segment 11", "Segment 12"))
barplot(pushmean, main = "pushmean", names = c("Segment 1", "Segment 2", "Segment 3", "Segment 4", "Segment 5", "Segment 6", "Segment 7", "Segment 8", "Segment 9", "Segment 10", "Segment 11", "Segment 12"))
barplot(tenmean, main = "tenmean", names = c("Segment 1", "Segment 2", "Segment 3", "Segment 4", "Segment 5", "Segment 6", "Segment 7", "Segment 8", "Segment 9", "Segment 10", "Segment 11", "Segment 12"))


hist(pull$`Segment Number`, main="Frequency of Breaking at Segments in Pull From Ends", xlab="Segment Number", ylab="Number of Breaking Events", cex.axis = 1.0)
hist(push$`Segment Number`, main="Frequency of Breaking at Segments in Push From Ends", xlab="Segment Number", ylab="Number of Breaking Events")

hist(pull$`Breakage events`, breaks = 5, main = "Number of Breaking Events per Simulation in Pull From Ends", xlab = "Number of Breaking Events", ylab="Frequency")
hist(push$`Breakage events`, breaks = 5, main = "Number of Breaking Events per Simulation in Push From Ends", xlab = "Number of Breaking Events", ylab="Frequency")

hist(pull$Tension, breaks = 5, main="Tensions At Which Breaking Events Occurred in Pull From Ends", ylab="Frequency of Tension", xlab="Tension Value in Piconewtons")
hist(push$Tension, breaks = 5, main="Tensions At Which Breaking Events Occurred in Push From Ends", ylab="Frequency of Tension", xlab="Tension Value in Piconewtons")




#2/2/2023
--------------------------------------------------------------------
  breaklocpull <- read.csv("2-2-23/Break_locations/Pull_from_ends/output.txt")
breaklocpush <- read.csv("2-2-23/Break_locations/Push_from_ends/output.txt")
breaklocten <- read.csv("2-2-23/Break_locations/tension_pull/output.txt")

breaktenpull <- read.csv("2-2-23/Break_tensions/Pull_from_ends/output.txt")
breaktenpush <- read.csv("2-2-23/Break_tensions/Push_from_ends/output.txt")
breaktenten <- read.csv("2-2-23/Break_tensions/tension_pull/output.txt")

nobreakpull <- read.csv("2-2-23/No_break_tensions/Pull_from_ends/output.txt")
nobreakpush <- read.csv("2-2-23/No_break_tensions/Push_from_ends/output.txt")
nobreakten <- read.csv("2-2-23/No_break_tensions/tension_pull/output.txt")

hist(breaklocpull$X37, main = "Location of breaking events in pull from ends")
hist(breaklocpush$X34, main = "Location of breaking events in push from ends")
hist(breaklocten$X36, breaks = 20, main = "Location of breaking events in tension pull")

breaktenpullmean <- colMeans(breaktenpull)
breaktenpulldata <- data.frame(x = LETTERS[1:60], y = breaktenpullmean)
barplot(breaktenpulldata$y)

breaktenpushmean <- colMeans(breaktenpush)
breaktenpushdata <- data.frame(x = LETTERS[1:60], y = breaktenpushmean)
barplot(breaktenpushdata$y)

nobreakpullmean <- colMeans(nobreakpull)
nobreakpulldata <- data.frame(x = LETTERS[1:60], y = nobreakpullmean)
barplot(nobreakpulldata$y)

nobreakpushmean <- colMeans(nobreakpush)
nobreakpushdata <- data.frame(x = LETTERS[1:60], y = nobreakpushmean)
barplot(nobreakpushdata$y)


#2/7/2023
--------------------------------------------------------------------
  breaktenpull <- read.csv("2-7-2023/tensions/Pull_from_ends/output.txt")
breaktenpush <- read.csv("2-7-2023/tensions/Push_from_ends/output.txt")

breaktenpullmean <- colMeans(breaktenpull)
breaktenpulldata <- data.frame(x = LETTERS[1:60], y = breaktenpullmean)
barplot(breaktenpulldata$y, main = "Mean tensions in pull from ends (breaking enabled)")

breaktenpushmean <- colMeans(breaktenpush)
breaktenpushdata <- data.frame(x = LETTERS[1:60], y = breaktenpushmean)
barplot(breaktenpushdata$y, main = "Mean tensions in push from ends (breaking enabled)")

# test normality of distribution 
library("ggpubr")
ggqqplot(breaktenpulldata$y, main = "Mean tensions in pull from ends (normality test)")
ggqqplot(breaktenpushdata$y, main = "Mean tensions in push from ends (normality test)")

#2/11/23
--------------------------------------------------------------------
  library(data.table)
pull <- read.csv("2-11-23/Pull_from_ends/output.txt", col.names=c(1:60))
pull = pull[-1,]
#deleting first row as first break loc is cut off by file read -- fix later but not huge priority 

push <- read.csv("2-11-23/Push_from_ends/output.txt", col.names=c(1:60))
push = push[-1,]


row_odd <- seq_len(nrow(pull)) %% 2
pullloc <- pull[row_odd == 1, ]
pullten <- pull[row_odd == 0, ]

row_odd2 <- seq_len(nrow(push)) %% 2
pushloc <- push[row_odd2 == 1, ]
pushten <- push[row_odd2 ==0, ]

pulltenmean <- colMeans(pullten)
pulltendata <- data.frame(x = LETTERS[1:60], y = pulltenmean)
barplot(pulltendata$y, main = "Mean tensions before break point in pull from ends")

pushtenmean <- colMeans(pushten)
pushtendata <- data.frame(x = LETTERS[1:60], y = pushtenmean)
barplot(pushtendata$y, main = "Mean tensions before break point in push from ends")

hist(pullloc$X1, main = "Location of breaks in pull from ends", breaks = 60)
hist(pushloc$X1, main = "Location of breaks in push from ends", breaks = 60)

pulllocfilter <- pullloc[!pullloc$X1 == 0, ]
pulllocfilter <- pulllocfilter[!pulllocfilter$X1 == 59,]


pushlocfilter <- pushloc[!pushloc$X1 == 0, ]
pushlocfilter <- pushlocfilter[!pushlocfilter$X1 == 59, ]

hist(pulllocfilter$X1, main = "Location of breaks in pull from ends (0 and 59 filtered)", breaks = 60)
hist(pushlocfilter$X1, main = "Location of breaks in push from ends (0 and 59 filtered)", breaks = 60)


#4/4/2023 moving_anchors + fixed_anchors 
--------------------------------------------------------------------
  
  setwd("C:/Users/abonil/OneDrive - Michigan Medicine/Desktop/Cytosim extra files/040423/moving")
moving <- read.csv("output.txt")
row_length <- seq_len(nrow(moving))%% 4
row_length <- moving[row_length == 1, ]
clean_length <- row_length[ , colSums(is.na(row_length))==0]
hist(clean_length, main = "Microtubule lengths in moving anchors", breaks = 250)


setwd("C:/Users/abonil/OneDrive - Michigan Medicine/Desktop/Cytosim extra files/040423/fixed")
fixed <- read.csv("output.txt")
row_length <- seq_len(nrow(fixed))%% 4
row_length <- fixed[row_length == 1, ]
clean_length <- row_length[ , colSums(is.na(row_length))==0]
hist(clean_length, main = "Microtubule lengths in fixed anchors", breaks = 250)

#4/6/2022 report fiber num
--------------------------------------------------------------------
install.packages("tidyverse")
install.packages("stringr")
install.packages("rlist")
library(stringr)
library(dplyr)
library(rlist)

fixed <- read.csv("fixedfibernum.txt")
moving <- read.csv("movingfibernum.txt")

x <- seq_len(nrow(fixed)) %% 4
y <- seq_len(nrow(moving)) %% 4
fixednum <- fixed[x == 2, ]
movingnum <- moving[y == 2, ]


for (i in 1:length(fixednum)){
  temp <- str_split(as.character(fixednum[i]), "% report fiber:num", simplify = TRUE)
  fixednum[i] <- as.numeric(temp[2])
}

for (i in 1:length(movingnum)){
  temp <- str_split(as.character(movingnum[i]), "% report fiber:num", simplify = TRUE)
  movingnum[i] <- as.numeric(temp[2])
}

fixeddf <- data.frame(fixednum)
movingdf <- data.frame(movingnum)

fixeddf <- mutate_all(fixeddf, function(x) as.numeric(as.character(x)))
movingdf <- mutate_all(movingdf, function(x) as.numeric(as.character(x)))

hist(fixeddf$fixednum, breaks = max(fixeddf))
hist(movingdf$movingnum, breaks = max(movingdf))



timefixeddf <- data.frame(matrix(ncol=251))

newRow <- data.frame()

initial <- TRUE

for (i in 1:length(fixeddf$fixednum)){
  index = 1 + (i %% 251)
  newRow <- rbind(newRow, fixeddf$fixednum[i])
  if (index == 1 & !initial){
    newRow <- t(newRow)
    colnames(newRow) <- colnames(timefixeddf)
    timefixeddf <- rbind(newRow, timefixeddf)
    newRow <- data.frame()
  }
  if(initial){
    initial <- FALSE
  }
}

timefixeddf <- timefixeddf %>% na.omit()

timemovingdf <- data.frame(matrix(ncol=251))

newRow <- data.frame()

initial <- TRUE

for (i in 1:length(movingdf$movingnum)){
  index = 1 + (i %% 251)
  newRow <- rbind(newRow, movingdf$movingnum[i])
  if (index == 1 & !initial){
    newRow <- t(newRow)
    colnames(newRow) <- colnames(timemovingdf)
    timemovingdf <- rbind(newRow, timemovingdf)
    newRow <- data.frame()
  }
  if(initial){
    initial <- FALSE
  }
}

timemovingdf <- timemovingdf %>% na.omit()


timemovingmean<- colMeans(timemovingdf)
barplot(timemovingmean, ylim = range(pretty(c(0, timemovingmean))))

timefixedmean <- colMeans(timefixeddf)
barplot(timefixedmean, ylim = range(pretty(c(0, timefixedmean))))







