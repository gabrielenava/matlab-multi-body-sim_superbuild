#.rst:
# Buildmbs_models
# --------
#
# mbs_models

include(YCMEPHelper)

ycm_ep_helper(mbs_models TYPE GIT
              STYLE GITHUB
              REPOSITORY gabrielenava/mbs_models.git
              TAG master
              FOLDER mbs_root)
