#These first few lines before the first @knitr chunk will be in RStudio, !!NOT when an Rmd/Rnw file calls it!!
rm(list=ls(all=TRUE))  #Clear the variables from previous runs.


## @knitr LoadPackages
require(RODBC)
require(dplyr)
require(ggplot2)


## @knitr DeclareGlobals


## @knitr LoadData
# Run to fetch the original file online
# pathData <- "https://github.com/andkov/Longitudinal_Models_of_Religiosity_NLSY97/raw/master/Data/Derived/dsL.csv"
# dsL <- read.csv(pathData, header = TRUE)
#        saveRDS(dsL,"./software/demo_data/NLSY97_dsL.rds")
dsL <- readRDS("./software/demo_data/NLSY97_dsL.rds")

# pathData <- gzfile("https://github.com/andkov/Longitudinal_Models_of_Religiosity_NLSY97/raw/master/Data/Derived/dsL.rds")
# dsL <- readRDS(pathData))
# close(pathData)

# pathData <- xzfile("https://github.com/andkov/Longitudinal_Models_of_Religiosity_NLSY97/blob/master/Data/Derived/dsL.rds")
# dsL <- readRDS(pathData)
# close(pathData)


# pathData <- gzfile(file="https://github.com/andkov/Longitudinal_Models_of_Religiosity_NLSY97/raw/master/Data/Derived/dsL.rds")
# dsL <- readRDS(pathData)

## @knitr TweakData


## @knitr AnalysisChunk01


## @knitr AnalysisChunk02


## @knitr AnalysisChunk03





# vignette("markdown-examples", package="markdown")



?plyr





