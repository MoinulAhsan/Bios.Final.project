#' Compute t test
#'
#' @param data data frame
#' @param group_var column name of the data
#' @param value_var column name of the data
#' @param group1 level of a column
#' @param group2 level of a column
#' @param alternative type of hypothesis
#' @description
#' Compute a t test
#' @return summary of t test
#' @export

perform_t_test <- function(data, group_var, value_var, group1, group2, alternative ) {
  library(dplyr)

  # Filter the data for the specified groups
  group1_data <- data %>%
    filter({{ group_var }} == group1) %>%
    select({{ value_var }})

  group2_data <- data %>%
    filter({{ group_var }} == group2) %>%
    select({{ value_var }})

  # Perform the t-test
  t_test_result <- t.test(group1_data, group2_data, alternative = alternative)

  return(t_test_result)
}
