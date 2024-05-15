
# start of test: ----------------------------------------------------------
# test 1: check if the data object is a data.frame
testthat::test_that(desc = "Data object is a data.frame", code = {
  testthat::expect_s3_class(object = weo_country_code, class = "data.frame")
})

# test 2: check if the number of rows is 196
testthat::test_that(desc = "Number of rows is 196", code = {
  testthat::expect_equal(object = nrow(weo_country_code), expected = 196)
})

# test 3: check if the number of columns is 3
testthat::test_that(desc = "Number of columns is 3", code = {
  testthat::expect_equal(object = ncol(weo_country_code), expected = 3)
})

# test 4: check if there are column names containing the word "weo_country_code"
testthat::test_that(desc = "There is a column name containing the word 'weo_country_code'",
                    code = {
                      testthat::expect_gt(
                        object = base::sum(base::grepl(pattern = "weo_country_code",
                                                       x = base::names(weo_country_code))),
                        expected = 0)
                    }
)

# End of test: ------------------------------------------------------------
