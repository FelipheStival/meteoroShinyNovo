#==============================================#
# Carregando pacotes a serem utilizados
app.LoadPackages = function()
{
    #=============================================#
    # Iniciando bibliotecas web
    require(shiny) 
    require(shinydashboard)
    require(shinymanager)
    require(shiny.router)
    require(leaflet)
    require(shinycssloaders)
    require(RJDBC)
    require(seas)
    require(ggplot2)
    require(reshape2)
    require(dplyr)
    require(lubridate)
    require(stringr)
    require(ggrepel)
    require(ggthemes)
    require(scatterD3)
    require(lme4)
    require(shinyWidgets)
    require(forcats)
    require(emmeans)
    require(gge)
    require(GGEBiplots)
    require(ape)
    require(rmarkdown)
    require(knitr)
    require(tinytex)
    require(DT)
    require(shinythemes)
    require(shinyalert)
    require(tidyverse)
    require(RVAideMemoire)
    require(caret)
    require(lmerTest)
    require(broom.mixed)
    require(plyr)
    require(cluster)
    require(fdm2id)
    require(cowplot)
    require(shinybusy)
    require(flexclust)
  
    #==============================================#
}

#==============================================#
# Carregando arquivos compilados
app.LoadModules = function() {
  
    # Carregando modulos secundarios
    modulos = list.files(path = 'modules',
                         pattern = ".R$",
                         recursive = T,
                         full.names = T
                         )
    log = sapply(modulos,source,encoding="utf-8")
    
    # Carregando modulos principal
    modulos = list.files(path = 'cor',
                         pattern = ".R$",
                         recursive = T,
                         full.names = T
    )
    log = sapply(modulos,source,encoding="utf-8")
}
#==============================================#

app.LoadPackages()
app.LoadModules()

shinyApp(ui, server)