
# start of test: ----------------------------------------------------------
# test 1: check if the data object is a data.frame
testthat::test_that(desc = "Data object is a data.frame", code = {
  testthat::expect_s3_class(object = IMFgroups, class = "data.frame")
})

# test 2: check if the number of rows is 84864
testthat::test_that(desc = "Number of rows is 84864", code = {
  testthat::expect_equal(object = nrow(IMFgroups), expected = 84864)
})

# test 3: check if the number of columns is 11
testthat::test_that(desc = "Number of columns is 11", code = {
  testthat::expect_equal(object = ncol(IMFgroups), expected = 11)
})

# test 4: check if there are column names containing the word "year"
testthat::test_that(desc = "There is a column name containing the word 'year'",
                    code = {
                      testthat::expect_gt(
                        object = base::sum(base::grepl(pattern = "year",
                                                       x = base::names(IMFgroups))),
                        expected = 0)
                    }
)

# End of test: ------------------------------------------------------------
