#' Generate an automated report
#'
#' @param data A data frame to include in the report
#' @param output_file File path for the output report (e.g., "report.html")
#' @export
generate_report <- function(data, output_file = "report.html") {
  library(rmarkdown)

  temp_rmd <- tempfile(fileext = ".Rmd")

  writeLines(c(
    "---",
    "title: \"StatVizPro Report\"",
    "output: html_document",
    "---",
    "",
    "```{r}",
    "summary(data)",
    "```"
  ), temp_rmd)

  render(temp_rmd, output_file = output_file)
}
