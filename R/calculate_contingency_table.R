
#' calculate list of contingency table
#'
#' @param data data frame
#' @param var1 column name of the data
#' @param var2 column name of the data
#' @description
#' store and return a list of contingency tables
#' @return a list
#' @export
#'
calculate_contingency_table <- function(data, var1, var2) {
  # Select the variables of interest from the data
  selected_data <- data %>%
    select({{ var1 }}, {{ var2 }})

  # Create the observed contingency table
  obs <- table(selected_data)

  # Calculate row and column totals
  row_totals <- apply(obs, 1, sum)
  col_totals <- apply(obs, 2, sum)

  # Calculate expected values
  expect <- outer(row_totals, col_totals) / sum(obs)

  # Create a list to store the results
  result <- list(
    observed = obs,
    row_totals = row_totals,
    col_totals = col_totals,
    expected = expect
  )

  return(result)
}
