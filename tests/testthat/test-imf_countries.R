
# start of test: ----------------------------------------------------------
# test 1: check if the data object is a data.frame
testthat::test_that(desc = "Data object is a data.frame", code = {
  testthat::expect_s3_class(object = IMFcountries, class = "data.frame")
})

# test 2: check if the number of rows is 8624
testthat::test_that(desc = "Number of rows is 8624", code = {
  testthat::expect_equal(object = nrow(IMFcountries), expected = 8624)
})

# test 3: check if the number of columns is 61
testthat::test_that(desc = "Number of columns is 61", code = {
  testthat::expect_equal(object = ncol(IMFcountries), expected = 61)
})

# test 4: check if there are column names containing the word "iso"
testthat::test_that(desc = "There is a column name containing the word 'iso'",
                    code = {
                      testthat::expect_gt(
                        object = base::sum(base::grepl(pattern = "iso",
                                                       x = base::names(IMFcountries))),
                        expected = 0)
                    }
)

# End of test: ------------------------------------------------------------
