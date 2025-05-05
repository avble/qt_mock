
# Snapshot
![snapshot-1](https://github.com/avble/qt_mock/blob/main/doc/images/home_automation.png?raw=true)

# Web-assembly
[web-assembly](https://avble.github.io/assets/avhome.html)

# Build 
* Cmake
```shell
$ mkdir build && cd build
$ cmake ..
```

*qmake
``` shell
$ mkdir build && cd build
$ qmake ..
```

* python
``` shell
# Note install pyside6
$ pyside6-rcc images/images.qrc qml/qml.qrc  -o qrc_resources.py # generate resources file
$ python main.py
```
