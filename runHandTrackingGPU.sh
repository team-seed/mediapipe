#!/bin/bash
GLOG_logtostderr=1 
exec bazel-bin/mediapipe/examples/desktop/multi_hand_tracking/multi_hand_tracking_gpu \
    --calculator_graph_config_file=mediapipe/graphs/hand_tracking/multi_hand_tracking_mobile.pbtxt
