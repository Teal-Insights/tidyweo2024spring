
#' Extracts a tibble of IMF - World Economic Outlook by countries
#'
#' @importFrom dplyr %>% select where
#' @importFrom tidyr all_of pivot_longer
#' @return Returns a tible
#' @export
#'
imf_countries <- function(){
  data_raw <- tidyweo2024spring::IMFcountries
  # Identify columns that do not start with a number
  non_numeric_columns <- names(data_raw)[!grepl(pattern = "^\\d", x = names(data_raw))]
  # Reshape the data and then remove columns with all NA values
  data <- data_raw %>%
    pivot_longer(
      cols = -all_of(non_numeric_columns),
      names_to = "year",
      values_to = "outcome"
    ) %>%
    select(where(~ !all(is.na(.))))
  # return data
  return(data)
}
