FROM rocker/shiny-verse
RUN apt-get update

RUN apt-get install -y libgtk2.0-dev xvfb xauth xfonts-base libxt-dev libxml2-dev curl libcurl4-openssl-dev libssl-dev libgdal-dev libudunits2-dev default-jdk libudunits2-dev libgdal-dev libgeos-dev libproj-dev libfontconfig1-dev

RUN R -e "install.packages(c('shiny', 'shinythemes', 'shinydashboard', 'shinycssloaders', 'tidyverse', 'magrittr', 'data.table', 'sf', 'ggrepel', 'ggspatial', 'plotly', 'leaflet', 'mapview', 'DT', 'raster', 'remotes'), repos='http://cran.rstudio.com/')"

RUN R -e "remotes::install_github('uribo/jpndistrict')"
