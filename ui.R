#--------------------------------------------------------------------------------
# Coursera Shiny Project by Sathya Shanmugavelu - Client R - Prediction Function
#-------------------------------------------------------------------------------
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Employee Productivity Prediction"),
    
    sidebarPanel(
      numericInput('Employee', 'Emp Monthly Ticket Resolution (Increase from 50-200)', 90, min = 50, max = 200, step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of Employee Productivity Prediction in Scale 1-4'),
      h4('Inference : Productivity Score Less than 3 is Low & Above 3 is High'),
      h4('Emp Monthly Ticket Resolution Rate entered is '),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in an employee productivity prediction of '),
      verbatimTextOutput("prediction"),
      h4('which infers that the employee productivity is '),
      verbatimTextOutput("scale")
      
      
    )
  )
)