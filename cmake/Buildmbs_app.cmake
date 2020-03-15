#.rst:
# Buildmbs_app
# --------
#
# mbs_app

include(YCMEPHelper)

ycm_ep_helper(mbs_app TYPE GIT
              STYLE GITHUB
              REPOSITORY gabrielenava/mbs_app.git
              TAG master
              FOLDER mbs_root
              CONFIGURE ""
              BUILD ""
              INSTALL "")
