FROM bioconductor/bioconductor_docker:RELEASE_3_18
#install additional R packages
RUN install2.r \
-d TRUE \
-r "https://cran.rstudio.com" \
RColorBrewer ggplot2 devtools \
rmarkdown httr knitr \
xaringan bookdown gprofiler2
#install the Bioconductor packages expected to be useful
RUN R -e 'BiocManager::install(c("DESeq2",
"pheatmap","enrichplot"))'
