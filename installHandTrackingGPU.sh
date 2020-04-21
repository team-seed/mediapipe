yes | sudo apt-get update
yes | sudo apt-get upgrade

sudo apt-get install build-essential && echo "installed build-essential"

yes | sudo apt install g++ unzip zip curl openjdk-11-jdk

curl https://github.com/bazelbuild/bazel/releases/download/1.0.0/bazel-1.0.0-installer-linux-x86_64.sh && echo "downloaded bazel"

sudo chmod +x bazel-1.0.0-installer-linux-x86_64.sh && echo "changed bazel installer permission"

./bazel-1.0.0-installer-linux-x86_64.sh && echo "installed bazel version: $(bazel --version)"

sudo chmod +x setup_opencv.sh  && echo "changed opencv installer permission"

./setup_opencv.sh && echo "installed setup_opencv"

yes | sudo apt-get install mesa-common-dev libegl1-mesa-dev libgles2-mesa-dev && echo "installed mesa"

curl https://netcologne.dl.sourceforge.net/project/boost/boost/1.58.0/boost_1_58_0.tar.bz2 && echo "downloaded boost"

tar --bzip2 -xf boost_1_58_0.tar.bz2 && cd boost_1_58_0

sudo chmod +x bootstrap.sh && echo "changed bootstrap permission"

./bootstrap.sh && echo "ran bootstrap"

sudo chmod +x b2 && echo "changed b2 permission"

./b2 install && echo "installed boost"

cd .. && source buildHandTrackingGPU.sh && echo "installed buildHandTrackingGPU"
