#' generate scatter plot with regression
#'
#' @param data data frame
#' @param x_var column name of the data
#' @param y_var column name of the data
#'
#' @description
#' scatter plot with linear regression
#' @return a scatter plot
#' @export
#'
generate_scatter_plot_with_regression <- function(data, x_var, y_var) {

  # Create the scatter plot with a linear regression line
  p <- ggplot(data, aes_string(x = x_var, y = y_var)) +
    geom_point() +
    geom_smooth(method = "lm")

  return(p)
}
