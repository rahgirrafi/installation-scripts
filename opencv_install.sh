sudo apt install cmake gcc g++ python3-dev python3-numpy libavcodec-dev libavformat-dev libswscale-dev libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev libgtk-3-dev libpng-dev libjpeg-dev libopenexr-dev libtiff-dev libwebp-dev -y
git clone git@github.com:opencv/opencv.git --depth 1 ~/opencv
git clone git@github.com:opencv/opencv_contrib.git --depth 1 ~/opencv_contrib
cd ~/opencv
mkdir build
cd build
cmake ../
cmake -DOPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules ~/opencv
make -j2 #otherwise the 4GM memory will run out as a total of 4GB RAM and 2GB swap is required for the build to be comppelosudo make