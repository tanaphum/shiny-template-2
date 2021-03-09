#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#    credit Charlotte Sirot from answered in stackoverflow
#    https://stackoverflow.com/questions/36080529/r-shinydashboard-customize-box-status-color
# developed code by Tanaphum Wichaita
# https://github.com/tanaphum

# Define UI for application that draws a histogram
library(shiny)
library(shinydashboard)
library(markdown)
ui <- 


    dashboardPage(
    dashboardHeader(                        
                    title = "Example of a long title that needs more space",
                    titleWidth = 450
        ),
    dashboardSidebar(sidebarMenu(
        menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
        menuItem("Widgets", icon = icon("th"), tabName = "widgets",
                 badgeLabel = "new", badgeColor = "green")
    )
    ),
    dashboardBody(        
        tags$head(
            tags$meta(charset="UTF-8"),
            tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
        ),
        DT::dataTableOutput("table")
        )
)
server <- function(input, output) { 
    output$table <- DT::renderDataTable({
        DT::datatable(cars)
    })
    }
shinyApp(ui, server)

