# - Locate CHAOS library
# Defines:
#
#  CHAOS_FOUND
#  CHAOS_INCLUDE_DIR
#  CHAOS_INCLUDE_DIRS (not cached)
#  CHAOS_LIBRARIES

  set(CHAOS_LIBRARIES chaos_driver_misc chaos_metadata_service_client chaos_common common_misc_data common_misc_scheduler common_debug boost_program_options boost_date_time boost_system  boost_chrono boost_regex boost_log_setup boost_log boost_filesystem boost_thread boost_atomic zmq jsoncpp)
find_path(CHAOS_DIR NAMES chaos_env.sh HINTS $ENV{CHAOS_PREFIX} /usr/local/chaos/chaos-distrib/)
find_library(CHAOS_LIBRARY NAMES  ${CHAOS_LIBRARIES} HINTS $ENV{CHAOS_PREFIX}/lib /usr/lib /usr/local/chaos/chaos-distrib/lib)

set(CHAOS_INCLUDE_DIRS ${CHAOS_DIR}/include)
set(CHAOS_LIB_DIR ${CHAOS_DIR}/lib)
if(CHAOS_LIBRARY)

endif()


INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(CHAOS DEFAULT_MSG CHAOS_LIBRARY CHAOS_INCLUDE_DIRS)

mark_as_advanced(CHAOS_FOUND CHAOS_INCLUDE_DIRS CHAOS_LIBRARYdevt-)
