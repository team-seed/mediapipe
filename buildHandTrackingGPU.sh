bazel build -c opt --copt -DMESA_EGL_NO_X11_HEADERS --copt -DEGL_NO_X11 \
    --copt="-DGAME_MODE" \
    mediapipe/examples/desktop/multi_hand_tracking:multi_hand_tracking_gpu

# game mode, need created shm in receiver before running handtracking
#--copt="-DGAME_MODE" \
# performace mode, create shm in handtracking
#--copt -DPER_MODE \
# define mode, create shm in handtracking
#--copt -DDEFINE_MODE \
# image show
#--copt="-DIMSHOW_ENABLE" \
# condition lock on shm
#--copt="-DCOND_LOCK_ENABLE \
