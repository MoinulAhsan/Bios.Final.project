#' fit a generalized additive model
#'
#' @param data data frame
#' @param formula formula of the linear regression
#'
#' @description
#' Function to fit a generalized additive model (GAM) with binomial family
#' @return a list
#' @export
#'


fit_gam_binomial <- function(data, formula) {
  fit <- gam(formula, data = data, family = binomial())
  summary(fit)
}
