CMAKE_MINIMUM_REQUIRED(VERSION 2.6 FATAL_ERROR)    

#
# Define sources and executable
if(NOT VERSION)
  set(VERSION 0.9.7.0)
endif()
if(NOT NAME)
  set(NAME "orthAgogue")
endif()
project("${NAME}")

# NOTE: If folder name is not correctly set, incldue the below 'variables':
# SET(CPACK_PACKAGE_VERSION_MAJOR "0")
# SET(CPACK_PACKAGE_VERSION_MINOR "9")
# SET(CPACK_PACKAGE_VERSION_PATCH "9")

if(NOT EXECUTABLE)
  set(EXECUTABLE_NAME "orthAgogue")
endif()
if(NOT COMPILATION_DEBUG) 
  set(COMPILATION_DEBUG 0)  
endif()

set(SETTINGS_ADDED CACHE BOOL INTERNAL FORCE)

#
# Define the operating system:
IF(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
   # Mac OS X specific code
   message("\n-----------------\n\t ${NAME} was designed for Linux. As you are now running on a Mac OS X operating system, which we have not tested, we suggest you either switch back to Lnux or give it a try, sending updates of what worked/did not work to the develper oekseth@gmail.com, updates which we will do our uthmost to include in our software.")
##   SET(OperatingSystem "Mac OS X")
ENDIF(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
# IF(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
#     # Linux specific code
#     SET(OperatingSystem "Linux")
# ENDIF(${CMAKE_SYSTEM_NAME} MATCHES "Linux")

#
# Define properties:
include(config_files/project_properties.cmake)
include(config_files/cmph_paths.cmake) 
include(config_files/tbb_paths.cmake) 
include(config_files/compilespec.cmake)


#
# Sets some default values:
set(BUILD_MAN_PAGE OFF)

#-------------------------------------
# Enable debug symbols by default
if(CMAKE_BUILD_TYPE STREQUAL "")
  set(CMAKE_BUILD_TYPE Release)
#  message("changed:\tCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}")	
else() 
  if(CMAKE_BUILD_TYPE STREQUAL "Release")
    message("compile type set to Release")
   endif()
endif()

link_directories("${PROJECT_SOURCE_DIR}/blast_common")

#
# Add the source:
include_directories("${PROJECT_BINARY_DIR}")
include_directories ("${PROJECT_SOURCE_DIR}/blast_common")
add_subdirectory(blast_common) 
set(FOLDERLOC_COMMON "blast_common")
include(${PROJECT_BINARY_DIR}/cmake_scripts/get_blast_common_libs.cmake)
include_directories ("${PROJECT_SOURCE_DIR}/log_builder")
add_subdirectory(log_builder) 
include_directories ("${PROJECT_SOURCE_DIR}/terminal_input")
add_subdirectory(terminal_input) 
include_directories ("${PROJECT_SOURCE_DIR}/blast_parsing")
add_subdirectory(blast_parsing) 
include_directories ("${PROJECT_SOURCE_DIR}/blast_filtering")
add_subdirectory(blast_filtering) 
# Builds the executable- and linking library:
add_executable(${EXECUTABLE_NAME} orthAgogue_main.cxx) # add the executable


add_dependencies(${EXECUTABLE_NAME} taxa)
add_dependencies(${EXECUTABLE_NAME} blast_common)
add_dependencies(${EXECUTABLE_NAME} log_builder)
add_dependencies(${EXECUTABLE_NAME} terminal_input)
add_dependencies(${EXECUTABLE_NAME} blast_parsing)
add_dependencies(${EXECUTABLE_NAME} blast_filtering)

# find_library(TBB_LIBRARY tbb)
# if(NOT EXISTS "${TBB_LIBRARY}") 
#       message(FATAL_ERROR "The Intel's TBB library (path) not found in your systems library. Please first assure that the Intel's TBB library has been installed, and then give the developer Ole Kristian Ekseth an update if you found it, but the software didn't, as it would imply you are running an architecture- or update not tested. In sum, a gentle nod to oekseth@gmail.com would be velcomly received.")
# endif()


set(TURBO_LIB_NAME "${EXECUTABLE_NAME}-lib")
add_library(${TURBO_LIB_NAME} STATIC orthAgogue_main.cxx orthAgogue_main.h)

#message("... ${PROJECT_SOURCE_DIR}/blast_filtering")
add_dependencies(${TURBO_LIB_NAME} log_builder)
add_dependencies(${TURBO_LIB_NAME} blast_parsing)
add_dependencies(${TURBO_LIB_NAME} blast_filtering)
add_dependencies(${TURBO_LIB_NAME} blast_common)
add_dependencies(${TURBO_LIB_NAME} taxa)

#
# Links the executable to the added (built) libraries:
target_link_libraries(${EXECUTABLE_NAME} log_builder cmd_line blast_parsing_m blast_filtering_m blast_common 
  ${CMPH_LIBS}  ${TBB_LIBRARY}     ${LIBS_COMMON}
  ) 
target_link_libraries(${TURBO_LIB_NAME} log_builder cmd_line blast_parsing_m blast_filtering_m blast_common
 ${CMPH_LIBS}  ${TBB_LIBRARY}     ${LIBS_COMMON}
 ) 

#
# Sets some general properties- and configuration:
include(orthAgogue_description.cmake)

message("LOG_FOLDER_NAME = ${LOG_FOLDER_NAME}")

configure_file("${PROJECT_BINARY_DIR}/project_config.h.in" "${PROJECT_BINARY_DIR}/project_config.h" @ONLY )

# 
# Configures the installation process, with CPack in thought:

# - Inspired by: http://www.vtk.org/Wiki/CMake/Tutorials/Packaging
install(CODE "message(\"Installs the ${NAME} into the lib/${EXECUTABLE_NAME} package:\")") # Written out during installation process.
install(TARGETS ${EXECUTABLE_NAME} DESTINATION "bin/")
#install(FILES orthAgogue_main.h DESTINATION "include/${EXECUTABLE_NAME}")
#install(TARGETS ${TURBO_LIB_NAME} DESTINATION "lib/${EXECUTABLE_NAME}" EXPORT "${TURBO_LIB_NAME}")
#install(EXPORT "${TURBO_LIB_NAME}" DESTINATION "lib/${TURBO_LIB_NAME}")
#install(FILES orthAgogue-conf.cmake DESTINATION "lib/${EXECUTABLE_NAME}")
include(config_files/settings_and_status.cmake)

 
#INCLUDE(CPack)
