#.rst:
# BuildFEX-minimize
# --------
#
# FEX-minimize

include(YCMEPHelper)

#ycm_ep_helper(FEX-minimize TYPE GIT
#              STYLE GITHUB
#              REPOSITORY rodyo/FEX-minimize.git
#              TAG master
#              FOLDER external
#              CONFIGURE_COMMAND ""
#              BUILD_COMMAND ""
#              INSTALL_COMMAND "")

# Workaround to fix the installation of non-cmake projects
ycm_ep_helper(FEX-minimize TYPE GIT
              STYLE GITHUB
              REPOSITORY rodyo/FEX-minimize.git
              TAG master
              FOLDER external
              PATCH_COMMAND cp ../../cmake/config/CMakeLists.txt ./)
