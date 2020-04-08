bazel build -c opt --copt -DMESA_EGL_NO_X11_HEADERS \
    --copt="-DGAME_MODE" --copt="-DIMSHOW_ENABLE" \
    mediapipe/examples/desktop/multi_hand_tracking:multi_hand_tracking_gpu
# bazel build --sandbox_debug -c opt --copt -DMESA_EGL_NO_X11_HEADERS \
#    mediapipe/examples/desktop/multi_hand_tracking:multi_hand_tracking_gpu

# game mode
#--copt="-DGAME_MODE" \
# performace mode
#--cxxopt -DPER_MODE \
# define mode
#--cxxopt -DDEFINE_MODE \
# image show
#--copt="-DIMSHOW_ENABLE" \