if(EXISTS "/home/jason/code/PowerGraph/deps/boost/src/boost_1_53_0.tar.gz")
  file("MD5" "/home/jason/code/PowerGraph/deps/boost/src/boost_1_53_0.tar.gz" hash_value)
  if("x${hash_value}" STREQUAL "x57a9e2047c0f511c4dfcf00eb5eb2fbb")
    return()
  endif()
endif()
message(STATUS "downloading...
     src='https://downloads.sourceforge.net/project/boost/boost/1.53.0/boost_1_53_0.tar.gz'
     dst='/home/jason/code/PowerGraph/deps/boost/src/boost_1_53_0.tar.gz'
     timeout='none'")




file(DOWNLOAD
  "https://downloads.sourceforge.net/project/boost/boost/1.53.0/boost_1_53_0.tar.gz"
  "/home/jason/code/PowerGraph/deps/boost/src/boost_1_53_0.tar.gz"
  SHOW_PROGRESS
  # no TIMEOUT
  STATUS status
  LOG log)

list(GET status 0 status_code)
list(GET status 1 status_string)

if(NOT status_code EQUAL 0)
	message(FATAL_ERROR "error: downloading 'https://downloads.sourceforge.net/project/boost/boost/1.53.0/boost_1_53_0.tar.gz' failed
  status_code: ${status_code}
  status_string: ${status_string}
  log: ${log}
")
endif()

message(STATUS "downloading... done")
