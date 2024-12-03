#' Generate customizable visualizations
#'
#' @param data A data frame to visualize
#' @param type Type of visualization ("scatter", "boxplot")
#' @param options A list of customization options (e.g., `x`, `y`, `color`, `fill`)
#' @return A ggplot object
#' @export
visualize_data <- function(data, type = "scatter", options = list()) {
  library(ggplot2)

  if (type == "scatter") {
    ggplot(data, aes_string(x = options$x, y = options$y, color = options$color)) +
      geom_point() +
      theme_minimal()
  } else if (type == "boxplot") {
    ggplot(data, aes_string(x = options$x, y = options$y, fill = options$fill)) +
      geom_boxplot() +
      theme_minimal()
  } else {
    stop("Unsupported visualization type.")
  }
}
