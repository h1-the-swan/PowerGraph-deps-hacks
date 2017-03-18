if(EXISTS "/home/jason/code/PowerGraph/deps/event/src/libevent-2.0.18-stable.tar.gz")
  file("MD5" "/home/jason/code/PowerGraph/deps/event/src/libevent-2.0.18-stable.tar.gz" hash_value)
  if("x${hash_value}" STREQUAL "xaa1ce9bc0dee7b8084f6855765f2c86a")
    return()
  endif()
endif()
message(STATUS "downloading...
     src='https://github.com/downloads/libevent/libevent/libevent-2.0.18-stable.tar.gz'
     dst='/home/jason/code/PowerGraph/deps/event/src/libevent-2.0.18-stable.tar.gz'
     timeout='none'")




file(DOWNLOAD
  "https://github.com/downloads/libevent/libevent/libevent-2.0.18-stable.tar.gz"
  "/home/jason/code/PowerGraph/deps/event/src/libevent-2.0.18-stable.tar.gz"
  SHOW_PROGRESS
  # no TIMEOUT
  STATUS status
  LOG log)

list(GET status 0 status_code)
list(GET status 1 status_string)

if(NOT status_code EQUAL 0)
  message(FATAL_ERROR "error: downloading 'https://github.com/downloads/libevent/libevent/libevent-2.0.18-stable.tar.gz' failed
  status_code: ${status_code}
  status_string: ${status_string}
  log: ${log}
")
endif()

message(STATUS "downloading... done")
