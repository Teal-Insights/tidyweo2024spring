#' @title IMF - World Economic Outlook (WEO) data by groups
#'
#' @description
#' Description of variables in the `IMFgroups` tibble
#'
#' @format A tibble with 83200 observations and 11 variables:
#' \describe{
#'   \item{weo_country_group_code}{World Economic Outlook (WEO) country group code.}
#'   \item{weo_subject_code}{World Economic Outlook subject code.}
#'   \item{country_group_name}{Country group name.}
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
#' @source "https://www.imf.org/en/Publications/SPROLLS/world-economic-outlook-databases#sort=%40imfdate%20descending"
"IMFgroups"
