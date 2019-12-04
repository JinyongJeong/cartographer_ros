# eurecar_cartographer

# build

```
mkdir catkin_ws
cd catkin_ws
mkdir src
cd src
git clone https://github.com/JinyongJeong/eurecar_cartographer.git
wstool init
wstool merge eurecar_cartographer/cartographer_ros.rosinstall
wstool update
cd ..
catkin_make_isolated --install --use-ninja

```
