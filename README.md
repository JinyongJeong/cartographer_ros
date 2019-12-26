# eurecar_cartographer

# build
```
sudo apt-get update
sudo apt-get install -y python-wstool python-rosdep ninja-build
```


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

# save map
```
rosservice call /finish_trajectory 0
rosservice call /write_state "{filename: '/home/irap/catkin_ws_eurecar_carto/src/cartographer_ros/cartographer_ros/map/test.pbstream'}"
```
