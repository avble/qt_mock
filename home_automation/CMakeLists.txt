cmake_minimum_required(VERSION 3.29)
project(avhome LANGUAGES CXX C)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Quick QuickControls2 Svg)
qt_standard_project_setup(REQUIRES 6.8)

#option(LLAMA_BUILD_SERVER "llama server" ON)
#option(LLAMA_BUILD_EXAMPLES "llama example" ON)
#option(LLAMA_BUILD_COMMON "llama: build common utils library" ON)
#option(LLAMA_CURL "curl: " OFF)
#add_subdirectory(llm.service/llama.cpp)

#add_executable(${TARGET} src/av_llm_func_call.cpp src/av_llm_wrapper.cpp)
#target_link_libraries(${TARGET} PRIVATE  common llama ${CMAKE_THREAD_LIBS_INIT} )
#target_compile_features(${TARGET} PRIVATE cxx_std_20)
#install(TARGETS ${TARGET} RUNTIME)

# set(CMAKE_CXX_FLAGS_DEBUG_INIT "-Wall -O0 -g")
set(CMAKE_CXX_FLAGS_RELEASE_INIT "-Wall -Os")
set(CMAKE_BUILD_TYPE Release)

qt_add_executable(avhome
    main.cpp
    #llm.service/av_llm_func_call.cpp 
    #llm.service/av_llm_wrapper.cpp
)

set_target_properties(avhome
    PROPERTIES
        WIN32_EXECUTABLE TRUE
        MACOSX_BUNDLE TRUE
)


target_link_libraries(avhome
    PRIVATE
        Qt6::Core
        Qt6::Gui
        Qt6::Quick
        Qt6::QuickControls2
        Qt6::Svg
        ${CMAKE_THREAD_LIBS_INIT}
)

qt_add_qml_module(avhome
    URI resources
    RESOURCE_PREFIX /avble/
    VERSION 1.0
    QML_FILES
        "qml/main.qml"
        "qml/dashboard.qml"
        "qml/home_lights.qml"
        "qml/home_switches.qml"
        "qml/home_sensors.qml"
        "qml/home_air_conditioning.qml"
        "qml/home_cameras.qml"
        "qml/home_ai_agent.qml"
        "qml/home_setting.qml"
        "qml/home_automation.qml"
        "qml/room/room.qml"
        "qml/room/labs.qml"
        "qml/device/Light.qml"
        "qml/device/Switches.qml"
        "qml/device/Sensor.qml"
        "qml/device/AirConditioning.qml"
        "qml/device/Camera.qml"
    RESOURCES
        "images/weather_forcast.png"
        "images/automation.png"
        "images/light_off.png"
        "images/light_on.png"
        "images/background.png"
        "images/background.jpg"
        "images/icons/home.svg"
        "images/icons/ai.svg"
        "images/icons/living-room.svg"
        "images/icons/kitchen-room.svg"
        "images/icons/bedroom.svg"
        "images/icons/garden.svg"
        "images/icons/dashboard.svg"
        "images/icons/automation.svg"
        "images/icons/lighting.svg"
        "images/icons/air-conditioning.svg"
        "images/icons/switch.svg"
        "images/icons/sensor.svg"
        "images/icons/cctv.svg"
        "images/icons/settings.svg"
        "images/icons/curtains.svg"
        "images/icons/home_others.svg"
        "images/icons/lab.svg"
        "images/light/on_off.svg"
    SOURCES
        model/device_model.h
        model/llmwrapper.h
)

set_source_files_properties(qml/dashboard.qml PROPERTIES QT_RESOURCE_ALIAS dashboard.qml)
set_source_files_properties(qml/home_lights.qml PROPERTIES QT_RESOURCE_ALIAS home_lights.qml)
set_source_files_properties(qml/home_switches.qml PROPERTIES QT_RESOURCE_ALIAS home_switches.qml)
set_source_files_properties(qml/home_sensors.qml PROPERTIES QT_RESOURCE_ALIAS home_sensors.qml)
set_source_files_properties(qml/home_air_conditioning.qml PROPERTIES QT_RESOURCE_ALIAS home_air_conditioning.qml)
set_source_files_properties(qml/home_cameras.qml PROPERTIES QT_RESOURCE_ALIAS home_cameras.qml)
set_source_files_properties(qml/home_ai_agent.qml PROPERTIES QT_RESOURCE_ALIAS home_ai_agent.qml)
set_source_files_properties(qml/home_setting.qml PROPERTIES QT_RESOURCE_ALIAS home_setting.qml)
set_source_files_properties(qml/home_automation.qml PROPERTIES QT_RESOURCE_ALIAS home_automation.qml)

set_source_files_properties(qml/room/room.qml PROPERTIES QT_RESOURCE_ALIAS room/room.qml)
set_source_files_properties(qml/room/labs.qml PROPERTIES QT_RESOURCE_ALIAS room/labs.qml)

set_source_files_properties(qml/device/Light.qml PROPERTIES QT_RESOURCE_ALIAS device/Light.qml)
set_source_files_properties(qml/device/Switches.qml PROPERTIES QT_RESOURCE_ALIAS device/Switches.qml)
set_source_files_properties(qml/device/Sensor.qml PROPERTIES QT_RESOURCE_ALIAS device/Sensor.qml)
set_source_files_properties(qml/device/AirConditioning.qml PROPERTIES QT_RESOURCE_ALIAS device/AirConditioning.qml)
set_source_files_properties(qml/device/Camera.qml PROPERTIES QT_RESOURCE_ALIAS device/Camera.qml)


install(TARGETS avhome
    BUNDLE  DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

#install(SCRIPT ${deploy_script})
