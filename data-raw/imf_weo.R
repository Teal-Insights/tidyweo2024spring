
# starts: -----------------------------------------------------------------
# loading necessary libraries
library(magrittr)

# loading data: -----------------------------------------------------------
# countries: --------------------------------------------------------------
# link
countries = "https://www.imf.org/-/media/Files/Publications/WEO/WEO-Database/2024/April/WEOApr2024all.ashx"
# raw data
df_raw_countries <- read.delim(file = countries, skipNul = TRUE)

# clean data
df_clean_countries <- df_raw_countries %>%
  tidyr::gather(key = year,
                value = outcome,
                -c(names(df_raw_countries)[-starts_with(match = "X", ignore.case = TRUE, vars = names(df_raw_countries))])) %>%
  dplyr::mutate(
    year = as.integer(gsub(x = year, pattern = "X", replacement = "")),
    outcome = dplyr::case_when(outcome %in% c("n/a","--") ~ NA, .default = outcome),
    outcome = as.numeric(gsub(x = outcome, pattern = ",", replacement = ""))
  ) %>%
  janitor::clean_names() %>%
  dplyr::filter(weo_subject_code != "")

# main data
IMFcountries <- df_clean_countries %>% tidyr::spread(key = year, value = outcome)

# metadata weo_country_code
weo_country_code <- df_clean_countries %>% dplyr::select(weo_country_code, iso, country) %>% dplyr::distinct()

# metadata weo_subject_code
weo_subject_code <- df_clean_countries %>% dplyr::select(weo_subject_code, subject_descriptor, subject_notes, units, scale) %>% dplyr::distinct()


# -------------------------------------------------------------------------
# groups ------------------------------------------------------------------
# link
groups = "https://www.imf.org/-/media/Files/Publications/WEO/WEO-Database/2024/April/WEOApr2024alla.ashx"
# raw data
df_raw_groups <- read.delim(file = groups, skipNul = TRUE)

# clean data
IMFgroups <- df_raw_groups %>%
  tidyr::gather(key = year,
                value = outcome,
                -c(names(df_raw_groups)[-starts_with(match = "X", ignore.case = TRUE, vars = names(df_raw_groups))])) %>%
  dplyr::mutate(
    year = as.integer(gsub(x = year, pattern = "X", replacement = "")),
    outcome = dplyr::case_when(outcome %in% c("n/a","--") ~ NA, .default = outcome),
    outcome = as.numeric(gsub(x = outcome, pattern = ",", replacement = ""))
  ) %>%
  janitor::clean_names() %>%
  dplyr::filter(country_group_name != "")

# metadata weo_country_group_code
weo_country_group_code <- IMFgroups %>% dplyr::select(weo_country_group_code, country_group_name) %>% dplyr::distinct()

# exporting data: ---------------------------------------------------------
# countries
usethis::use_data(... = IMFcountries, overwrite = TRUE, compress = "xz")

# groups
usethis::use_data(... = IMFgroups, overwrite = TRUE, compress = "xz")

# metadata
usethis::use_data(... = weo_country_code, overwrite = TRUE, compress = "xz")
usethis::use_data(... = weo_subject_code, overwrite = TRUE, compress = "xz")
usethis::use_data(... = weo_country_group_code, overwrite = TRUE, compress = "xz")
# ends: -------------------------------------------------------------------
