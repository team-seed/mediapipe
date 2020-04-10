bazel build -c dbg --copt -DMESA_EGL_NO_X11_HEADERS \
    --copt="-DDEFINE_MODE" --copt="-DIMSHOW_ENABLE" \
    mediapipe/examples/desktop/multi_hand_tracking:multi_hand_tracking_gpu