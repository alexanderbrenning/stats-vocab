library("pacman")
p_load("rmarkdown")

courses <- ""
title <- "Statistics Vocabulary"
browseURL(render(input = "Vocabulary-template.Rmd", 
       output_format = "html_document",
       output_file = title,
       params = list(title = title, courses = courses)), NULL)

courses <- c("Geog142", "Geog145")
browseURL(render(input = "Vocabulary-template.Rmd", 
                 output_format = "html_document",
                 output_file = "Geog142_145_Vocabulary",
                 params = list(title = "Geog142/145 Vocabulary", 
                               courses = courses)), NULL)

course <- "Geo408A"
browseURL(render(input = "Vocabulary-template.Rmd", 
                 output_format = "html_document",
                 output_file = paste0(course, "_Vocabulary"),
                 params = list(title = paste(course, "Vocabulary"), 
                               courses = course)), NULL)

course <- "Geo408B"
browseURL(render(input = "Vocabulary-template.Rmd", 
                 output_format = "html_document",
                 output_file = paste0(course, "_Vocabulary"),
                 params = list(title = paste(course, "Vocabulary"), 
                               courses = course)), NULL)
