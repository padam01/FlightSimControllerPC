import QtQuick
import FlightSim

Window {
    id: windowId
    width: 1280
    height: 720

    visible: true
    visibility: Window.AutomaticVisibility
    minimumHeight: 720
    minimumWidth: 1280
    flags: Qt.Window
    contentOrientation: Qt.LandscapeOrientation
    title: "FlightSim_Design"

    Screen01 {

        id: mainScreen
        anchors.fill: parent
        windowHeight: windowId.height
        windowWidth: windowId.width

    }

}

