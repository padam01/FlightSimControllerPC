

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import FlightSim
import QtQuick.Layouts
import QtQuick.Studio.DesignEffects
import QtQuick.Timeline 1.0
import QtQuick3D 6.8
import Generated.QtQuick3D.Elolap
import QtQuick3D.Helpers
import Generated.QtQuick3D.Kerek
import Generated.QtQuick3D.Flap
import Generated.QtQuick3D.Flap2

Rectangle {
    id: main
    color: "#fe232121"
    property alias gridLayoutColumnSpacing: gridLayout.columnSpacing

    property int windowHeight
    property int windowWidth

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        anchors.topMargin: 10
        anchors.bottomMargin: 10

        spacing: 0

        RowLayout {
            id: rowLayout
            uniformCellSizes: false
            spacing: 5
            layoutDirection: Qt.LeftToRight
            Layout.alignment: Qt.AlignRight | Qt.AlignTop

            Text {
                id: text3
                height: 20
                color: "#ffffff"
                text: qsTr("Flight Sim Controller:")
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
                Layout.fillWidth: false
            }

            Rectangle {
                id: fsc_indicator1
                width: 10
                height: 10
                color: hidController.controllerStatusFlag ? "#00ff00" : "#ff0000"
                radius: 5
                Layout.fillWidth: false
            }

            Text {
                id: text5
                height: 20
                color: "#ffffff"
                text: qsTr("MSFS:")
                font.pixelSize: 12
                verticalAlignment: Text.AlignVCenter
            }

            Rectangle {
                id: msfs_indicator
                width: 10
                height: 10
                color: "#ff0000"
                radius: 5
            }
        }

        RowLayout {
            id: rowLayout4
            Layout.topMargin: 40
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            uniformCellSizes: false
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.bottomMargin: 20
            spacing: 20
            Layout.margins: 0

            ColumnLayout {
                id: columnLayout1
                Layout.preferredHeight: -1
                Layout.preferredWidth: -1
                Layout.fillWidth: true
                Layout.fillHeight: true

                Item {
                    id: item1
                    width: 200
                    height: 200
                    visible: false
                    Layout.fillHeight: true
                    Layout.preferredWidth: 1
                    Layout.fillWidth: true

                    Slider {
                        id: slider
                        value: trim.flapValue
                        objectName: "flap"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 0
                        stepSize: 0.1
                        bottomPadding: 30
                        topPadding: 30
                        wheelEnabled: true
                        orientation: Qt.Vertical
                        Text {
                            id: flap_title
                            color: "#ffffff"
                            text: qsTr("Flap")
                            anchors.top: parent.top
                            anchors.topMargin: 0
                            font.pixelSize: 20
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignBottom
                            font.weight: Font.Bold
                            font.bold: false
                            anchors.horizontalCenter: parent.horizontalCenter
                            Layout.fillWidth: true
                        }

                        Text {
                            id: flap_value
                            color: "#ffffff"
                            text: qsTr("%1").arg(slider.value.toFixed(1))
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 0
                            font.pixelSize: 20
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignBottom
                            font.weight: Font.Bold
                            font.bold: false
                            anchors.horizontalCenter: parent.horizontalCenter
                            Layout.fillWidth: true
                        }

                        Connections {
                            target: slider
                            function onValueChanged() {
                                console.log("clicked")
                            }
                        }
                        to: 20
                        from: 0
                    }
                }

                View3D {
                    id: extendedView3D2
                    width: 200
                    height: 200
                    Layout.fillHeight: true
                    Layout.preferredWidth: 6
                    Layout.fillWidth: true
                    environment: sceneEnvironment2
                    ExtendedSceneEnvironment {
                        id: sceneEnvironment2
                        antialiasingQuality: SceneEnvironment.High
                        antialiasingMode: SceneEnvironment.MSAA
                    }

                    Node {
                        id: scene2
                        DirectionalLight {
                            id: directionalLight2
                        }

                        PerspectiveCamera {
                            id: sceneCamera1
                            x: -5
                            y: 10
                            z: 146
                        }

                        Flap2 {
                            id: flap
                            armRotateX: trim.flightControlData.flapAngle

                        }
                    }

                    MouseArea {
                        id: mouseArea5
                        anchors.fill: parent
                        z: 1

                        onWheel: function (w) {
                            Qt.callLater(() => {
                                             // raw delta
                                             let delta = w.angleDelta.y

                                             // clamp -120 … 120 közé
                                             delta = Math.max(-120,
                                                              Math.min(120, delta))

                                             console.log("Clamped delta:", delta)

                                             let step = delta / -120
                                             // így step mindig max ±1
                                             trim.flightControlData.flapAngle += step
                                         })
                            console.log("Flap Value: "+trim.flightControlData.flapAngle)
                        }
                    }
                }
            }

            ColumnLayout {
                id: columnLayout2
                Layout.preferredWidth: -1
                Layout.preferredHeight: -1
                spacing: 0
                Layout.fillWidth: true
                Layout.fillHeight: true

                Rectangle {
                    id: rectangle
                    width: 200
                    height: 200
                    color: "#002e2b2b"
                    radius: 5
                    border.color: "#00998585"
                    Layout.margins: 0
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: 10
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    GridLayout {
                        id: gridLayout
                        visible: false
                        columnSpacing: (rectangle.width) / (columns + 1)
                        rowSpacing: 80
                        columns: 6
                        anchors.centerIn: parent

                        Repeater {
                            model: 4
                            Rectangle {
                                width: 20
                                height: 20
                                color: "#ff0000"
                                radius: 10
                                Layout.row: 0
                                Layout.column: index + 1
                            }
                        }

                        Repeater {
                            model: 6
                            Rectangle {
                                width: 20
                                height: 20
                                color: "#ff0000"
                                radius: 10
                                Layout.row: 1
                                Layout.column: index
                            }
                        }
                    }

                    View3D {
                        id: extendedView3D
                        anchors.fill: parent
                        renderFormat: ShaderEffectSource.RGBA8
                        camera: sceneCamera
                        ExtendedSceneEnvironment {
                            id: sceneEnvironment
                            antialiasingQuality: SceneEnvironment.High
                            antialiasingMode: SceneEnvironment.MSAA
                        }

                        Node {
                            id: scene
                            scale.y: 4
                            scale.x: 4

                            PerspectiveCamera {
                                id: sceneCamera
                                z: 350
                            }

                            DirectionalLight {
                                id: directionalLight
                                x: 0
                                y: 204
                                eulerRotation.z: 53
                                eulerRotation.y: 11
                                eulerRotation.x: -19
                                z: 350.76251
                            }

                            Elolap {
                                id: elolap
                            }
                        }
                    }

                    DesignEffect {
                        visible: false
                        backgroundBlurVisible: true
                        effects: [
                            DesignDropShadow {
                                visible: true
                                color: "#b0c0b4b4"
                                blur: 8
                                showBehind: false
                                offsetY: 2
                                offsetX: 2
                            }
                        ]
                    }
                }
            }

            ColumnLayout {
                id: columnLayout3
                Layout.preferredWidth: -1
                Layout.preferredHeight: -1
                Layout.fillWidth: true
                Layout.fillHeight: true

                Item {
                    id: item2
                    width: 200
                    height: 200
                    visible: false
                    Layout.fillHeight: true
                    Layout.preferredWidth: 1
                    Layout.fillWidth: true

                    Slider {
                        id: slider1
                        value: trim.trimValue
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        anchors.rightMargin: 10
                        anchors.bottomMargin: 0
                        stepSize: 0.1
                        bottomPadding: 30
                        topPadding: 30
                        wheelEnabled: true
                        orientation: Qt.Vertical

                        Text {
                            id: trim_title
                            x: -26
                            color: "#ffffff"
                            text: qsTr("Trim")
                            anchors.top: parent.top
                            anchors.topMargin: 0
                            font.pixelSize: 20
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignBottom
                            font.weight: Font.Bold
                            font.bold: false
                            anchors.horizontalCenter: parent.horizontalCenter
                            Layout.fillWidth: true
                        }

                        Text {
                            id: trim_value
                            x: -26
                            color: "#ffffff"
                            text: qsTr("%1").arg(slider1.value.toFixed(1))
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 0
                            font.pixelSize: 20
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignBottom
                            font.weight: Font.Bold
                            font.bold: false
                            anchors.horizontalCenter: parent.horizontalCenter
                            Layout.fillWidth: true
                        }
                        to: 1080
                        from: -1080
                    }
                }

                View3D {
                    id: extendedView3D1
                    width: 200
                    height: 200
                    visible: true
                    environment: sceneEnvironment1
                    ExtendedSceneEnvironment {
                        id: sceneEnvironment1
                        antialiasingQuality: SceneEnvironment.High
                        antialiasingMode: SceneEnvironment.MSAA
                    }

                    Node {
                        id: scene1
                        DirectionalLight {
                            id: directionalLight1
                        }


                        OrthographicCamera {
                            id: orthographicCamera
                            x: 0
                            y: 0
                            z: 212
                            verticalMagnification: 5 * (windowHeight / 720)
                            scale.z: 1
                            lookAtNode: kerek
                            horizontalMagnification: 5 * (windowWidth / 1280)
                        }
                        Kerek {
                            id: kerek
                            eulerRotation.y: 90
                            wheelRotateZ: trim.flightControlData.trimWheel

                        }
                    }

                    MouseArea {
                        id: mouseArea4
                        anchors.fill: parent
                        z: 1
                        onWheel: function (w) {
                            Qt.callLater(() => {
                                             // raw delta
                                             let delta = w.angleDelta.y

                                             // clamp -120 … 120 közé
                                             delta = Math.max(-120,
                                                              Math.min(120,
                                                                       delta))

                                             console.log("Clamped delta:",
                                                         delta)

                                             let step = delta / -120
                                             // így step mindig max ±1
                                             trim.flightControlData.trimWheel += step
                                         })
                            console.log(trim.flightControlData.trimWheel)
                        }
                    }
                    Layout.preferredWidth: 1
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
            }
        }
    }

    ListModel {
        id: notificationModel
        objectName: "notificationModel"
    }

    ListView {
        id: listView
        width: 220
        height: parent.height
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 10
        anchors.topMargin: 50
        orientation: ListView.Vertical
        model: notificationModel
        interactive: false
        spacing: 10
        delegate: Rectangle {
            id: notificationId
            x: parent.width
            width: 200
            height: 50
            color: "#e5302b26"
            radius: 8
            border.color: "#00ffffff"
            Text {
                color: "#ffffff"
                text: message
                font.pixelSize: 12
                anchors.centerIn: parent
            }

            DesignEffect {
                visible: true
                effects: [
                    DesignDropShadow {
                        visible: true
                        color: "#e3585a4f"
                        spread: 2
                        showBehind: false
                        offsetY: 1
                        offsetX: 1
                    }
                ]
            }
            Timer {
                interval: 3000 // 3 másodperc
                running: true
                repeat: false
                onTriggered: {
                    // Indítsd az animációt
                    fadeOutAnimation.start()
                }
            }

            NumberAnimation {
                id: fadeOutAnimation
                target: notificationId
                property: "opacity"
                to: 0
                duration: 500
                onStopped: {
                    // Csak az animáció végén távolítsd el a modellt
                    notificationModel.remove(index)
                }
            }
        }
    }

    Connections {
        target: hidController
        onNewMessage: notificationModel.append({
                                                   "message": message
                                               })
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: true
                loops: 1
                duration: 1000
                to: 1000
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 1000
        enabled: true
    }

    Item {
        id: __materialLibrary__

        PrincipledMaterial {
            id: principledMaterial
            objectName: "New Material"
        }
    }

    Button {
        id: button
        x: 63
        y: 8
        text: qsTr("Button")

        MouseArea {
            id: mouseArea
            anchors.fill: parent

            Connections {
                target: mouseArea
                function onClicked() {
                    elolap.fPumpState = (elolap.fPumpState === "OFF" ? "ON" : "OFF")
                }
            }
        }
    }

    Button {
        id: button1
        x: 159
        y: 8
        text: qsTr("Button")
        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            Connections {
                target: mouseArea1
                function onClicked() {
                    elolap.altBat2State = (elolap.altBat2State === "OFF" ? "ON" : "OFF")
                }
            }
        }
    }

    Button {
        id: button2
        x: 250
        y: 8
        text: qsTr("Button")
        MouseArea {
            id: mouseArea2
            anchors.fill: parent
            Connections {
                target: mouseArea2
                function onClicked() {
                    trim.flightControlData.trimWheel += 90
                }
            }
        }
    }

    Button {
        id: button3
        x: 351
        y: 8
        text: qsTr("Button")
        MouseArea {
            id: mouseArea3
            anchors.fill: parent
            Connections {
                target: mouseArea3
                function onClicked() {
                    trim.flightControlData.flapAngle = 70
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0}D{i:16;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}D{i:28;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
D{i:30;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}D{i:43;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/

