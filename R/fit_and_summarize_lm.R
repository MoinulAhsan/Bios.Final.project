#' fit and summarize a linear regression model
#'
#' @param data data frame
#' @param formula formula of the linear regression
#'
#' @description
#' Function to fit and summarize a linear regression model
#' @return summary of linear regression model
#' @export

fit_and_summarize_lm <- function(data, formula) {
  # Fit the linear regression model
  fit <- lm(formula, data = data)

  # Summarize the model
  summary(fit)
}
