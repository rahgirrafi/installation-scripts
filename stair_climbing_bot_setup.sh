sudo ./opencv_install.sh
sudo ./ros_melodic_install.sh
sudo apt install ros-melodic-rtabmap-ros -y
sudo apt install nvidia-jetpack -y
sudo apt install python3-catkin-tools libeigen3-dev python3-pip python3-dev python3-psutil python3-numpy python3-scipy python3-pandas python3-matplotlib python3-sklearn libeigen3-dev libspdlog-dev libsuitesparse-dev qtdeclarative5-dev qt5-qmake libqglviewer-dev-qt5  ros-melodic-ros-base ros-melodic-image-transport ros-melodic-image-common ros-melodic-tf ros-melodic-tf-conversions ros-melodic-eigen-conversions ros-melodic-laser-geometry ros-melodic-pcl-conversions ros-melodic-pcl-ros ros-melodic-move-base-msgs ros-melodic-rviz ros-melodic-octomap-ros ros-melodic-move-base ros-melodic-slam-toolbox ros-melodic-rqt ros-melodic-rqt-reconfigure libgtk2.0-dev libhdf5-openmpi-dev libsuitesparse-dev -y
cd ~/catkin_ws/src
git clone -b opencv4 git@github.com:fizyr-forks/vision_opencv.git --depth 1
git clone -b melodic git@github.com:ros-perception/image_pipeline.git --depth 1
git clone -b indigo-devel git@github.com:ros-perception/image_transport_plugins.git --depth 1
git clone git@github.com:ros-drivers/gscam.git --depth 1
git clone git@github.com:ros-visualization/rqt_image_view.git --depth 1
catkin build