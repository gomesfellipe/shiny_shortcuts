# Descricao:
# Criar um botao para baixar um relatorio PDF
# baseado no input do usuario

# ui:
#
# Botao de download:
# downloadButton("Relatorio", "Download")
# Input da data:
# dateInput("date", value = "`Sys.time()`")

# server:
# output$Relatorio <-
#   downloadHandler(
#     filename = "report.pdf",
#     
#     content = function(file) {
#       
#       report <- "script_06_gerar_relatorio.Rmd"
#       # Parametros enviados ao arquivo .Rmd
#       params          <- list(now = input$date)
#       # Renderiza .Rmd
#       rmarkdown::render(report, output_file = file,
#                         encoding = "UTF-8", params = params)
#     }
#   )
