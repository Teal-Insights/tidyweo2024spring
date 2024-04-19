
# starts: -----------------------------------------------------------------
# loading necessary libraries
library(magrittr)

# loading data: -----------------------------------------------------------
# countries
IMFcountries <- readr::read_rds(file = "../../../../data/imf_weo/imf_by_countries.rds") %>%
  dplyr::mutate(
    values = as.numeric(values),
    year = as.integer(year)
    )

# groups
IMFgroups <- readr::read_rds(file = "../../../../data/imf_weo/imf_by_country_groups.rds") %>%
  dplyr::mutate(
    values = as.numeric(values),
    year = as.integer(year)
  )


# exporting data: ---------------------------------------------------------
# countries
usethis::use_data(... = IMFcountries, overwrite = TRUE, compress = "xz")

# groups
usethis::use_data(... = IMFgroups, overwrite = TRUE, compress = "xz")

# ends: -------------------------------------------------------------------
