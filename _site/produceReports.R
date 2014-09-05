
########## Production of reports from .Rmd files ###
#./Vignettes/Questions
path_index<- base::file.path("./index.Rmd")
# path_ghPages<- base::file.path("./gh-pages-setup.Rmd")
# path_workStation<- base::file.path("./work-station-setup.Rmd")



#  Define groups of reports 
allReports<- c(path_index, path_ghPages,path_workStation  )
# Place report paths HERE ###########
buildthese <- (allReports) ##########
####################################

testit::assert("The knitr Rmd files should exist.", base::file.exists(buildthese))
# Build the reports
for( pathRmd in buildthese ) {
  #   pathMd <- base::gsub(pattern=".Rmd$", replacement=".md", x=pathRmd)
  rmarkdown::render(input = pathRmd, 
                    output_format=c(
                      #                        "pdf_document"
                      #                       ,"word_document"
                      #                       ,"md_document"
                      "html_document"
                    ),
#                     output_dir = "./" ,
                    #                     output_file=pathMd,
                    clean=TRUE)
}