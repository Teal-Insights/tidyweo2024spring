
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidyweo2024spring

<!-- badges: start -->
<!-- badges: end -->

`tidyweo2024spring` is primarily a data package enabling an efficient
method for working with [IMF - World Economic
Outlook](https://imf.org/en/Publications/SPROLLS/world-economic-outlook-databases#sort=%40imfdate%20descending)
in R.

## Installation

You can install the development version of `tidyweo2024spring` from
[GitHub](https://github.com/) with:

``` r
# install the `devtools` package if not yet installed
# install.packages("devtools")

# install tidyweo2024spring from GitHub
devtools::install_github("Teal-Insights/tidyweo2024spring")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(tidyweo2024spring)
library(knitr)
library(tidyverse)
```

## Available datasets

### IMF - World Economic Outlook by countries

``` r
imf_countries() %>% 
  select(-c(country_series_specific_notes,subject_notes)) %>% 
  head() %>% 
  kable()
```

| weo_country_code | iso | weo_subject_code | country     | subject_descriptor                      | units             | scale    | estimates_start_after | year | outcome |
|:-----------------|:----|:-----------------|:------------|:----------------------------------------|:------------------|:---------|----------------------:|:-----|--------:|
| 512              | AFG | NGDP_R           | Afghanistan | Gross domestic product, constant prices | National currency | Billions |                  2023 | 1980 |      NA |
| 512              | AFG | NGDP_R           | Afghanistan | Gross domestic product, constant prices | National currency | Billions |                  2023 | 1981 |      NA |
| 512              | AFG | NGDP_R           | Afghanistan | Gross domestic product, constant prices | National currency | Billions |                  2023 | 1982 |      NA |
| 512              | AFG | NGDP_R           | Afghanistan | Gross domestic product, constant prices | National currency | Billions |                  2023 | 1983 |      NA |
| 512              | AFG | NGDP_R           | Afghanistan | Gross domestic product, constant prices | National currency | Billions |                  2023 | 1984 |      NA |
| 512              | AFG | NGDP_R           | Afghanistan | Gross domestic product, constant prices | National currency | Billions |                  2023 | 1985 |      NA |

### IMF - World Economic Outlook by country groups

``` r
imf_country_groups() %>% 
  head() %>% 
  kable()
```

| weo_country_group_code | weo_subject_code | country_group_name | subject_descriptor                                 | subject_notes | units                                              | scale    | country_series_specific_notes | estimates_start_after | year |   outcome |
|:-----------------------|:-----------------|:-------------------|:---------------------------------------------------|:--------------|:---------------------------------------------------|:---------|:------------------------------|:----------------------|-----:|----------:|
| 001                    | NGDP_RPCH        | World              | Gross domestic product, constant prices            |               | Percent change                                     | Units    | NA                            | NA                    | 1980 |     2.216 |
| 001                    | NGDP_RPCHMK      | World              | Gross domestic product, constant prices            |               | Percent change (market exchange rates)             | Units    | NA                            | NA                    | 1980 |     1.728 |
| 001                    | NGDPD            | World              | Gross domestic product, current prices             |               | U.S. dollars                                       | Billions | NA                            | NA                    | 1980 | 11233.437 |
| 001                    | PPPGDP           | World              | Gross domestic product, current prices             |               | Purchasing power parity; international dollars     | Billions | NA                            | NA                    | 1980 | 13411.481 |
| 001                    | NGDP_D           | World              | Gross domestic product, deflator                   |               | Index, 2000=100                                    | Units    | NA                            | NA                    | 1980 |        NA |
| 001                    | NGDPRPPPPC       | World              | Gross domestic product per capita, constant prices |               | Purchasing power parity; 2017 international dollar | Units    | NA                            | NA                    | 1980 |        NA |

## Metadata

## Country code

``` r
weo_country_code %>% 
  head() %>% 
  kable()
```

| weo_country_code | iso | country             |
|:-----------------|:----|:--------------------|
| 512              | AFG | Afghanistan         |
| 914              | ALB | Albania             |
| 612              | DZA | Algeria             |
| 171              | AND | Andorra             |
| 614              | AGO | Angola              |
| 311              | ATG | Antigua and Barbuda |

## Country/group code

``` r
weo_country_group_code %>% 
  kable()
```

| weo_country_group_code | country_group_name                                                       |
|:-----------------------|:-------------------------------------------------------------------------|
| 001                    | World                                                                    |
| 110                    | Advanced economies                                                       |
| 163                    | Euro area                                                                |
| 119                    | Major advanced economies (G7)                                            |
| 123                    | Other advanced economies (Advanced economies excluding G7 and euro area) |
| 998                    | European Union                                                           |
| 510                    | ASEAN-5                                                                  |
| 200                    | Emerging market and developing economies                                 |
| 505                    | Emerging and developing Asia                                             |
| 903                    | Emerging and developing Europe                                           |
| 205                    | Latin America and the Caribbean                                          |
| 400                    | Middle East and Central Asia                                             |
| 603                    | Sub-Saharan Africa                                                       |

## Subject code

``` r
weo_subject_code %>% 
  select(-c(subject_notes)) %>% 
  head() %>% 
  kable()
```

| weo_subject_code | subject_descriptor                      | units                                          | scale    |
|:-----------------|:----------------------------------------|:-----------------------------------------------|:---------|
| NGDP_R           | Gross domestic product, constant prices | National currency                              | Billions |
| NGDP_RPCH        | Gross domestic product, constant prices | Percent change                                 | Units    |
| NGDP             | Gross domestic product, current prices  | National currency                              | Billions |
| NGDPD            | Gross domestic product, current prices  | U.S. dollars                                   | Billions |
| PPPGDP           | Gross domestic product, current prices  | Purchasing power parity; international dollars | Billions |
| NGDP_D           | Gross domestic product, deflator        | Index                                          | Units    |
