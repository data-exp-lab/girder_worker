set(SPARK_TEST_MASTER_URL  "" CACHE STRING "Spark master URL")
if (SPARK_TEST_MASTER_URL)
  add_python_test(spark PLUGINS_ENABLED spark)
  set_property(TEST spark APPEND PROPERTY ENVIRONMENT "SPARK_TEST_MASTER_URL=${SPARK_TEST_MASTER_URL}")
endif()
