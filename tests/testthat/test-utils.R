test_that("key gets found", {
    withr::with_envvar(new=c("UBIOPS_TOKEN"="dogdogdogdog"),
        expect_equal(check_ubiobstoken(NULL), "dogdogdogdog")
                        )
})
