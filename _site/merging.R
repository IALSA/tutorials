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
getwd() # this is the home base of the project, "working directory" or wd
# Read in different files and join them all together
pathDataDirectory <- file.path("./data/opensource") # "./" means "from root" , aka the the "project folder" or "working directory"
filenamePattern <- ".+\\.rds" # All RDS files
# filenamePattern <- "m.{1,}samplePattern\\.rds" #All RDS files
retrievedFilenames <- list.files(path=pathDataDirectory, pattern=filenamePattern)
filePaths <- file.path(pathDataDirectory, retrievedFilenames)

print(filePaths) # all datafile that will be read in
print(filePaths[1]) # the first file, the stem for merges
ds <- readRDS(filePaths[1]) # starting file for the merges
head(ds, 7) # prinds the first few observations (e.g. 7)
str(ds) # shows the structure of the datafile
summary(ds) # gives brief statistical summary
# reads all files in and merges to the stem
for( i in 1:length(filePaths) ) {
  # To debug, change the '6' to some number to isolate the problem: for( i in 2:6 ) {
  # message("About to read", filePaths[i], "\\")
  dsSingle <- readRDS(filePaths[i])
  ds <- plyr::join(x=ds, y=dsSingle, by="Project ID", type="left", match="first")
  rm(dsSingle)
}

############################
## @knitr TweakData

############################
## @knitr AnalysisChunk01

############################
## @knitr AnalysisChunk02

############################
## @knitr AnalysisChunk03
