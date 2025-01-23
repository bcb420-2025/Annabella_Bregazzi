# changed release from 3_18 to devel (latest version)
FROM bioconductor/bioconductor_docker:devel

RUN install2.r \
-d TRUE \
-r "https://cran.rstudio.com" \
RColorBrewer ggplot2 devtools \
rmarkdown httr knitr \
xaringan bookdown gprofiler2

# command to install GEOquery
RUN R -e 'BiocManager::install("GEOquery")'