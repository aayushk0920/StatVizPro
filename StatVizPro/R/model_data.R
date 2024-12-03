#' Fit a statistical model to the data
#'
#' @param data A data frame to model
#' @param formula Model formula (e.g., `y ~ x1 + x2`)
#' @param model_type Type of model ("lm", "glm")
#' @return A summary of the fitted model
#' @export
model_data <- function(data, formula, model_type = "lm") {
  if (model_type == "lm") {
    model <- lm(formula, data = data)
  } else if (model_type == "glm") {
    model <- glm(formula, data = data)
  } else {
    stop("Unsupported model type.")
  }

  return(summary(model))
}
