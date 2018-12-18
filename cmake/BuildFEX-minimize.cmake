#.rst:
# BuildFEX-minimize
# --------
#
# FEX-minimize

include(YCMEPHelper)

ycm_ep_helper(FEX-minimize TYPE GIT
              STYLE GITHUB
              REPOSITORY rodyo/FEX-minimize.git
              TAG master
              FOLDER external
              CONFIGURE_COMMAND ""
              BUILD_COMMAND ""
              INSTALL_COMMAND "")
