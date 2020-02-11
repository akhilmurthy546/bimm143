#' ---
#' title: "Class 5: Data Visualization and graphs in R"
#' author: "Akhil Murthy"
#' date: "June 21, 2020"
#' ---

# Class 5
# Data Visualization and graphs in R

plot(1:10, col="blue", typ="o")

# Need to import/read input data file first
baby <- read.table("bimm143_05_rstats/weight_chart.txt", header=TRUE)
plot(baby$Age, baby$Weight, col="blue", type = "o", pch=15, cex=1.5, lwd=2, ylim=c(2,10), xlab="Age", ylab = "Weight", main = "Weight Chart")

mouse <- read.table("bimm143_05_rstats/feature_counts.txt", header = TRUE, sep="\t")
par(mar=c(3,12,3,3))
barplot(mouse$Count, names.arg = mouse$Feature, horiz = TRUE, main = "Feature Counts", las=1, ylab=" ", xlim=c(0,80000))

par(mar=c(7,5,5,2))
maleFemale <- read.delim("bimm143_05_rstats/male_female_counts.txt")
barplot(maleFemale$Count, col=rainbow(2), names.arg = maleFemale$Sample, las=2, ylab = "Counts")



