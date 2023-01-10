pull <- read.csv("/Users/andresbonilla/Desktop/cytosim/Pull_from_ends/output.txt")
push <- read.csv("/Users/andresbonilla/Desktop/cytosim/Push_from_ends/output.txt")

names(pull) <- c("Segment 1", "Segment 2", "Segment 3", "Segment 4", "Segment 5", "Segment 6", "Segment 7", "Segment 8", "Segment 9", "Segment 10", "Segment 11", "Segment 12")
names(push) <- c("Segment 1", "Segment 2", "Segment 3", "Segment 4", "Segment 5", "Segment 6", "Segment 7", "Segment 8", "Segment 9", "Segment 10", "Segment 11", "Segment 12")

mean(pull$`Segment 1`)
mean(pull$`Segment 12`)

mean(push$`Segment 1`)
mean(push$`Segment 12`)

mean(pull$`Segment 1`)
mean(pull$`Segment 12`)


hist(pull$`Segment Number`, main="Frequency of Breaking at Segments in Pull From Ends", xlab="Segment Number", ylab="Number of Breaking Events", cex.axis = 1.0)
hist(push$`Segment Number`, main="Frequency of Breaking at Segments in Push From Ends", xlab="Segment Number", ylab="Number of Breaking Events")

hist(pull$`Breakage events`, breaks = 5, main = "Number of Breaking Events per Simulation in Pull From Ends", xlab = "Number of Breaking Events", ylab="Frequency")
hist(push$`Breakage events`, breaks = 5, main = "Number of Breaking Events per Simulation in Push From Ends", xlab = "Number of Breaking Events", ylab="Frequency")

hist(pull$Tension, breaks = 5, main="Tensions At Which Breaking Events Occurred in Pull From Ends", ylab="Frequency of Tension", xlab="Tension Value in Piconewtons")
hist(push$Tension, breaks = 5, main="Tensions At Which Breaking Events Occurred in Push From Ends", ylab="Frequency of Tension", xlab="Tension Value in Piconewtons")