
#' Extracts a tible of IMF - World Economic Outlook by country groups
#'
#' @return Returns a tible
#' @export
#'
imf_country_groups <- function(){
  data <- tidyweo2024spring::IMFgroups
  # return data
  return(data)
}
