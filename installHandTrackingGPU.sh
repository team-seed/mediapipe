yes | sudo apt-get update
yes | sudo apt-get upgrade

sudo apt-get install build-essential
echo "installed build-essential"

yes | sudo apt install g++ unzip zip curl openjdk-11-jdk
curl https://github.com/bazelbuild/bazel/releases/download/1.0.0/bazel-1.0.0-installer-linux-x86_64.sh
sudo chmod +x bazel-1.0.0-installer-linux-x86_64.sh
./bazel-1.0.0-installer-linux-x86_64.sh
echo export PATH="$PATH:$HOME/bin" >> ~/.bashrc
source ~/.bashrc
echo "installed bazel"

source setup_opencv.sh
echo "installed setup_opencv"

yes | sudo apt-get install mesa-common-dev libegl1-mesa-dev libgles2-mesa-dev
echo "installed mesa"

cd mediapipe && git clone https://github.com/team-seed/HandGesture.git && cd ..
echo "installed HandGesture"

source buildHandTrackingGPU.sh
echo "installed buildHandTrackingGPU"
