bazel build -c opt --copt -DMESA_EGL_NO_X11_HEADERS \
    mediapipe/examples/desktop/multi_hand_tracking:multi_hand_tracking_gpu
# bazel build --sandbox_debug -c opt --copt -DMESA_EGL_NO_X11_HEADERS \
#    mediapipe/examples/desktop/multi_hand_tracking:multi_hand_tracking_gpu