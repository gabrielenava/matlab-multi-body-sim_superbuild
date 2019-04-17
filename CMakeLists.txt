#### Author: Gabriele Nava
#### CopyPolicy: Released under the terms of the LGPLv2.1 or later, see LGPL.TXT

cmake_minimum_required(VERSION 3.0)
project(matlab-multi-body-sim_superbuild NONE)

## we have to enable C because it is currently used
## by CMake to describe packages (in Config*.cmake files)
enable_language(C)

# Disable "in source" build
if("${PROJECT_SOURCE_DIR}" STREQUAL "${PROJECT_BINARY_DIR}")
   message(FATAL_ERROR "In-source builds of matlab-multi-body-sim_superbuild are not allowed. "
                       "Please remove CMakeCache.txt and the CMakeFiles/ directory, then build out-of-source. "
                       "If you really want to do an in-source build, feel free to comment out this error.")
endif("${PROJECT_SOURCE_DIR}" STREQUAL "${PROJECT_BINARY_DIR}")

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

include(CTest)
include(FeatureSummary)

set(YCM_USE_CMAKE_PROPOSED TRUE CACHE BOOL "Use files including unmerged cmake patches")

# Compilation options

# Simulator options
option(USES_EXTERNAL "Enable the usage of external libraries" FALSE)
option(USES_MODELS "Enable the usage of available models" TRUE)
option(USES_APP "Enable the usage of available simulations" TRUE)

# set default build type to "Release" in single-config generators
if(NOT CMAKE_CONFIGURATION_TYPES)
    if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING
        "Choose the type of build, recommanded options are: Debug or Release" FORCE)
    endif()
    set(CODYCO_BUILD_TYPES "Debug" "Release" "MinSizeRel" "RelWithDebInfo")
    set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS ${CODYCO_BUILD_TYPES})
endif()

# Optionally load a file named ProjectsTags
# for overwriting the desired branch/tag/commit
# of the included subprojects of the superbuild
# Useful for having superbuild "branches"
include(ProjectsTags OPTIONAL)

# Set CMake policies
if(NOT CMAKE_VERSION VERSION_LESS 3.0)
    cmake_policy(SET CMP0045 NEW)
    cmake_policy(SET CMP0046 NEW)
endif()
if(NOT CMAKE_VERSION VERSION_LESS 3.1)
    cmake_policy(SET CMP0054 NEW)
endif()

# Bootstrap YCM
set(YCM_TAG v0.9.0)

# Workaround disabling hash warning until we fix https://github.com/robotology/codyco-superbuild/issues/162
set(YCM_SKIP_HASH_CHECK TRUE)
include(YCMBootstrap)
include(FindOrBuildPackage)
include(YCMEPHelper)

# Required repositories
find_or_build_package(matlab-multi-body-sim_core)

# Optional repositories
if (${USES_EXTERNAL})
  find_or_build_package(FEX-function_handle)
  find_or_build_package(qpOASES)
endif()
if (${USES_MODELS})
  find_or_build_package(matlab-multi-body-sim_models)
endif()
if (${USES_APP})
  find_or_build_package(matlab-multi-body-sim_app)
endif()

# Others
set_package_properties(Git PROPERTIES TYPE RUNTIME)
set_package_properties(Subversion PROPERTIES TYPE RUNTIME)
set_package_properties(PkgConfig PROPERTIES TYPE RUNTIME)
set_package_properties(Doxygen PROPERTIES TYPE RUNTIME)

feature_summary(WHAT ALL INCLUDE_QUIET_PACKAGES FATAL_ON_MISSING_REQUIRED_PACKAGES)
