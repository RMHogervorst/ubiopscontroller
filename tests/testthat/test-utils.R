test_that("key gets found", {
    withr::with_envvar(new=c("UBIOPS_TOKEN"="dogdogdogdog"),
        expect_equal(check_ubiobstoken(NULL), "dogdogdogdog")
                        )
})


test_that("valid_fields works",{
    expect_error(valid_fields(list(1,3)))
    expect_error(valid_fields(data.frame(namer="bla",data_type="string")))
    expect_error(valid_fields(data.frame(name=c("one", "two"),data_type=c("string", "integer"))))
})
