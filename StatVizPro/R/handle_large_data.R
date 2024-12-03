#' Handle large datasets with chunking
#'
#' @param data A data frame to process
#' @param chunk_size Number of rows per chunk
#' @return A list of summaries for each chunk
#' @export
handle_large_data <- function(data, chunk_size = 1000) {
  library(dplyr)

  data_chunks <- split(data, ceiling(seq_along(1:nrow(data)) / chunk_size))
  summaries <- lapply(data_chunks, function(chunk) {
    chunk_summary <- summary(chunk)
    return(chunk_summary)
  })

  return(summaries)
}
