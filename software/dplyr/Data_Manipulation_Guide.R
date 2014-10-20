#These first few lines run only when the file is run in RStudio, !!NOT when an Rmd/Rnw file calls it!!
rm(list=ls(all=TRUE))  #Clear the variables from previous runs.

############################
## @knitr LoadPackages
require(RODBC)
require(dplyr)
require(ggplot2)

############################
## @knitr DeclareGlobals

############################
## @knitr LoadData
dsL<-readRDS("https://github.com/andkov/Longitudinal_Models_of_Religiosity_NLSY97/blob/master/Data/Derived/dsL.rds")

file <- "<a href="https://github.com/andkov/Longitudinal_Models_of_Religiosity_NLSY97/raw/master/Data/Derived/dsL.rds">dsL</a>"

raw_data <- readRDS(file)



url <- "https://github.com/andkov/Longitudinal_Models_of_Religiosity_NLSY97/raw/master/Data/Derived/dsL.csv"
my_data <- read.csv(url, header = TRUE)


url <- "https://github.com/andkov/Longitudinal_Models_of_Religiosity_NLSY97/raw/master/Data/Derived/dsL.rds"
dsL <- readRDS(url)

############################
## @knitr TweakData

############################
## @knitr AnalysisChunk01

############################
## @knitr AnalysisChunk02

############################
## @knitr AnalysisChunk03





# vignette("markdown-examples", package="markdown")



?plyr





