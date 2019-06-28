# ui:

# Botao de download:
downloadButton("Zip", label = "Download das bases de apoio")


# server:

# Criar Zip com arquivo xlsx
# https://github.com/gomesfellipe/shiny_shortcuts/blob/master/download_zip.R
output$Zip <-
  downloadHandler(
    # Cria objeto para download
    filename = "apoio.zip",
    # Nome do arquivo a ser salvo

    content = function(file) {

      zip::zip(zipfile = file,
               files = dir("data/output_data", full.names = TRUE))

      if (file.exists(paste0(file, ".zip")))
        file.rename(paste0(file, ".zip"), file)

    },
    contentType = "application/zip"
  )
