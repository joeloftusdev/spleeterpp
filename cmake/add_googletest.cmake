include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  #GIT_TAG        release-1.8.0
  GIT_TAG        v1.14.0
)

FetchContent_GetProperties(googletest)
if(NOT googletest_POPULATED)
  FetchContent_Populate(googletest)
  set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
  if (WIN32)
    add_definitions(-D_SILENCE_TR1_NAMESPACE_DEPRECATION_WARNING=1)
  endif()
  add_subdirectory(${googletest_SOURCE_DIR} ${googletest_BINARY_DIR})
endif()
