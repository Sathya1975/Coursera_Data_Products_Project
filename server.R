#-----------------------------------------------------------------
# Coursera Shiny Project by Sathya Shanmugavelu - Server R
#-----------------------------------------------------------------

EmpProductivity <- function(TktCount) TktCount / 50

Productivity_Scale <- function(TktCount) {
  if (TktCount <= 150) {
    prod_index <- "LOW"
  } else {
    prod_index <-"HIGH"
  }
  result <- prod_index
  return(result)
}




shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$Employee})
    output$prediction <- renderPrint({EmpProductivity(input$Employee)})
    output$scale <- renderPrint({Productivity_Scale(input$Employee)})
  }
)