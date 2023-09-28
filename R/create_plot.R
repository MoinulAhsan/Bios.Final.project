#' create different types of plots
#'
#' @param data data frame
#' @param plot_type type of the plot you want
#' @param x column name of the data
#' @param y column name of the data
#'
#' @description
#' Function to create different types of plots
#' @return a scatter plot or residual plot, or histogram or qq plot
#' @export



create_plot <- function(data, plot_type,x,y) {
  if (plot_type == "scatter") {
    return(
      ggplot(data, aes(x = !!sym(x), y = !!sym(y))) +
        geom_point() +
        geom_smooth(method = "lm") +
        labs(title = 'Scatter Plot without outlier', x = 'Age', y = 'Resting Blood Pressure')
    )
  } else if (plot_type == "residual") {
    return(
      ggplot(data, aes(x = !!sym(x), y = .resid)) +
        geom_point() +
        geom_hline(yintercept = 0, lty = 2) +
        labs(title = 'Residual Plot without outlier', x = 'Age', y = 'Residuals')
    )
  } else if (plot_type == "histogram") {
    return(
      ggplot(data, aes(x = .resid)) +
        geom_histogram() +
        labs(title = 'Histogram of Residuals without outlier', x = 'Residuals', y = 'Frequency')
    )
  } else if (plot_type == "qq") {
    return(
      ggplot(data, aes(sample = .resid)) +
        stat_qq() +
        stat_qq_line() +
        labs(title = 'QQ-Plot of Residuals without outlier')
    )
  } else {
    return(NULL)  # Return NULL for unsupported plot types
  }
}
