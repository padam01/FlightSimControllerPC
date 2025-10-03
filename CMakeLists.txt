
cmake_minimum_required(VERSION 3.21.1)

option(LINK_INSIGHT "Link Qt Insight Tracker library" ON)
option(BUILD_QDS_COMPONENTS "Build design studio components" ON)

project(FlightSimApp LANGUAGES CXX)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}" "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(QT_QML_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/qml)
set(QML_IMPORT_PATH ${QT_QML_OUTPUT_DIRECTORY}
    CACHE STRING "Import paths for Qt Creator's code model"
    FORCE
)

find_package(Qt6 6.8 REQUIRED COMPONENTS Core Gui Widgets Qml Quick QuickTimeline ShaderTools)
find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Core)
qt_standard_project_setup()


qt_add_executable(${CMAKE_PROJECT_NAME}
    App/trim.h App/trim.cpp
    App/HIDInputHandler.h App/HIDInputHandler.cpp
    App/FlightData.h
    App/SimConnectController.h App/SimConnectController.cpp
    App/ConnectionStatus.h
    App/FlightControlData.h
    App/hidworker.h App/hidworker.cpp
    App/FlightControlDataManager.h App/FlightControlDataManager.cpp
)
qt_add_resources(${CMAKE_PROJECT_NAME} "configuration"

target_link_libraries(FlightSimApp PRIVATE Qt6::Core)

target_link_libraries(FlightSimApp PRIVATE Qt6::Core)
PREFIX "/"
    FILES
        qtquickcontrols2.conf)

target_include_directories(FlightSimApp PRIVATE
    "C:/Users/palat/Downloads/hidapi-win/include"
    "C:/MSFS 2024 SDK/SimConnect SDK/include")
target_link_libraries(FlightSimApp PRIVATE
    "C:/Users/palat/Downloads/hidapi-win/x64/hidapi.lib"
    "C:/MSFS 2024 SDK/SimConnect SDK/lib/SimConnect.lib")
target_link_libraries(FlightSimApp PRIVATE Qt6::Core)
target_link_libraries(FlightSimApp PRIVATE Qt6::Core)
target_link_libraries(FlightSimApp PRIVATE Qt6::Core)


add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different
        "C:/MSFS 2024 SDK/SimConnect SDK/lib/SimConnect.dll"
        $<TARGET_FILE_DIR:${PROJECT_NAME}>
)


include(qds)

if (BUILD_QDS_COMPONENTS)
    include(qmlcomponents OPTIONAL)
endif()

if (LINK_INSIGHT)
    include(insight OPTIONAL)
endif ()

include(GNUInstallDirs)
install(TARGETS ${CMAKE_PROJECT_NAME}
  BUNDLE DESTINATION .
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
