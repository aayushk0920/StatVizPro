#' Perform statistical analysis on a dataset
#'
#' @param data A data frame to analyze
#' @return A list containing summary statistics and missing value counts
#' @export
analyze_data <- function(data) {
  if (!is.data.frame(data)) {
    stop("Input must be a data frame.")
  }

  summary_stats <- summary(data)
  missing_values <- colSums(is.na(data))

  list(
    summary_statistics = summary_stats,
    missing_values = missing_values
  )
}
