#' @title IMF - World Economic Outlook (WEO) data by countries
#'
#' @description
#' Description of variables in the `IMFcountries` tibble
#'
#' @format A tibble with 431200 observations and 12 variables:
#' \describe{
#'   \item{weo_country_code}{Country code.}
#'   \item{iso}{ISO code.}
#'   \item{weo_subject_code}{World Economic Outlook subject code.}
#'   \item{country}{Country name.}
#'   \item{subject_descriptor}{Description of the subject.}
#'   \item{subject_notes}{Subject note.}
#'   \item{units}{Unit of measurement.}
#'   \item{scale}{Scale of measurement.}
#'   \item{country_series_specific_notes}{Country's series specific notes.}
#'   \item{estimates_start_after}{Year when estimates start after.}
#'   \item{year}{Year corresponding to values.}
#'   \item{values}{Values corresponding to years.}
#'
#' }
#'
#' @source \href{https://www.imf.org/en/Publications/SPROLLS/world-economic-outlook-databases#sort=%40imfdate%20descending}{IMFcountries}
"IMFcountries"
