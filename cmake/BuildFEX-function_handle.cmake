#.rst:
# BuildFEX-function_handle
# --------
#
# FEX-function_handle

include(YCMEPHelper)

#ycm_ep_helper(FEX-function_handle TYPE GIT
#              STYLE GITHUB
#              REPOSITORY rodyo/FEX-function_handle.git
#              TAG master
#              FOLDER external
#              CONFIGURE_COMMAND ""
#              BUILD_COMMAND ""
#              INSTALL_COMMAND "")

# Workaround to fix the installation of non-cmake projects
ycm_ep_helper(FEX-function_handle TYPE GIT
              STYLE GITHUB
              REPOSITORY rodyo/FEX-function_handle.git
              TAG master
              FOLDER external
              PATCH_COMMAND cp ../../cmake/config/CMakeLists.txt ./)
