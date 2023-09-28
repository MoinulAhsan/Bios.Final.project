#' Boxplot generation function
#'
#' @param data data frame
#' @param x_var column name of the data
#' @param fill_var column name of the data
#' @param x_label text as character
#' @description
#' Create a boxplot
#' @return a boxplot
#' @export

generate_boxplot <- function(data, x_var, fill_var, x_label) {

  # Create the box plot
  p <- ggplot(data, aes_string(x = x_var, fill = fill_var)) +
    geom_boxplot() +
    xlab(x_label)

  return(p)
}
