
# Snapshot
![snapshot-1](https://github.com/avble/qt_mock/blob/main/doc/images/home_automation.png?raw=true)

# Run
[web-assembly](https://avble.github.io/assets/avhome.html)

[youtube](https://www.youtube.com/watch?v=s6Nf_M1NGOU)

* With python
``` shell
# Note: please install pyside6
$ pyside6-rcc images/images.qrc qml/qml.qrc  -o qrc_resources.py # generate resources file
$ python main.py
```


# Build 
* Cmake
```shell
$ mkdir build && cd build
$ cmake ..
```

* qmake
``` shell
$ mkdir build && cd build
$ qmake ..
```

