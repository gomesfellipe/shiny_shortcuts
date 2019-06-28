# Descricao:
# Criar um botao para baixar um relatorio PDF
# baseado no input do usuario

# ui:

# Botao de download:
downloadButton("Relatorio", "Download")
# Input da data:
textInput("text", h3("Insira o número do relatorio:"),value = " ")

# server:

 # Renderiza o documento rmarkdown/latex
  observeEvent(input$go, {
    # https://github.com/gomesfellipe/shiny_shortcuts/blob/master/download_pdf.R
    output$Relatorio <-
      downloadHandler(
        filename = "report.pdf",
        
        content = function(file) {
          
          report <- "src/relatorio.Rmd"
          # Parametros enviados ao arquivo .Rmd
          params          <- list(date = input$date,
                                  text = input$text)
          # Renderiza .Rmd
          rmarkdown::render(report, output_file = file,
                            encoding = "UTF-8", params = params)
        }
      )
  })
