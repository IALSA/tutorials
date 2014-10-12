
########## Production of reports from .Rmd files ###
#./Vignettes/Questions
path_index<- base::file.path("./index.Rmd")
path_ghPages<- base::file.path("./gh-pages-setup.Rmd")
path_toolbox<- base::file.path("./toolbox-install.Rmd")
path_TipsTricks <- base::file.path("./tips-and-tricks.Rmd")
path_DrawingLines <- base::file.path("./bits/drawing-lines/Drawing-lines.Rmd")
path_LinksAndResources <- base::file.path("./links-and-resources.Rmd")
# Lab Log
path_12_09_2014 <- base::file.path("./12-09-2014.Rmd")
path_19_09_2014 <- base::file.path("./19-09-2014.Rmd")
path_26_09_2014 <- base::file.path("./26-09-2014.Rmd")
path20141010 <- base::file.path("./2014-10-10.Rmd")

#  Define groups of reports 
labLogs <- c(path_26_09_2014)
allReports<- c(path_index, path_ghPages,path_toolbox, path_TipsTricks, path_LinksAndResources, path20141010)
# Place report paths HERE ###########
buildthese <- c(allReports) ##########
# buildthese <- c( labLogs)

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
base::system("bundle exec jekyll build")
# base::system("bundle exec jekyll serve")