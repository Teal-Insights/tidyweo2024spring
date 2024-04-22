
#' Extracts a tible of IMF - World Economic Outlook by countries
#'
#' @return Returns a tible
#' @export
#'
imf_countries <- function(){
  data <- tidyweo2024spring::IMFcountries
  # return data
  return(data)
}
