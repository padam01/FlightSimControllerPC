import QtQuick
import QtQuick3D

Node {
    id: node
    scale.x: 1000
    scale.y: 1000
    scale.z: 1000

    // Resources

    property real armRotateX

    Behavior on armRotateX {
        id: flapAnimation
          NumberAnimation {
              duration: 500      // 0.5 másodperc
              easing.type: Easing.InOutQuad
          }
      }

    // Nodes:
    Node {
        id: root
        objectName: "ROOT"
        Node {
            id: sidepanel_Left_1
            objectName: "Sidepanel_Left:1"
            x: -0.028818851336836815
            y: 0.009477661922574043
            z: 0.026753053069114685
            rotation: Qt.quaternion(-3.71172e-16, 1.8717e-23, -0.707107, 0.707107)
            scale.x: 1
            scale.y: 1
            scale.z: 1
            Model {
                id: solid1
                objectName: "Solid1"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                source: "meshes/solid1_mesh.mesh"
                materials: [
                    default_material
                ]
            }
        }
        Node {
            id: flap_el_lap_1
            objectName: "flap_elölap:1"
            x: -0.00281885196454823
            y: 0.009477661922574043
            z: 0.02825305424630642
            Model {
                id: solid1_001
                objectName: "Solid1.001"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                source: "meshes/solid1_001_mesh.mesh"
                materials: [
                    default_material,
                    white_material
                ]
            }
        }
        Node {
            id: sidepanel_Right_1
            objectName: "Sidepanel_Right:1"
            x: 0.025681147351861
            y: 0.009477661922574043
            z: 0.026753053069114685
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 1
            scale.y: 1
            scale.z: 1
            Model {
                id: solid1_002
                objectName: "Solid1.002"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                source: "meshes/solid1_002_mesh.mesh"
                materials: [
                    default_material
                ]
            }
        }
        Node {
            id: valami2_1
            objectName: "valami2:1"
            x: 0.008681148290634155
            y: 0.009477661922574043
            z: -0.023246945813298225
            rotation: Qt.quaternion(0.668342, -0.230908, 0.230908, 0.668343)
            scale.x: 1
            scale.y: 1
            scale.z: 1
            eulerRotation.x: armRotateX - (38.12)
            Model {
                id: solid2
                objectName: "Solid2"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                source: "meshes/solid2_mesh.mesh"
                materials: [
                    default_material
                ]
            }
        }
        Node {
            id: tavtarto_1
            objectName: "tavtarto:1"
            x: -0.026818852871656418
            y: 0.05447766184806824
            z: -0.008246946148574352
            rotation: Qt.quaternion(0.20989, 0.675238, 0.675238, -0.20989)
            Model {
                id: solid1_003
                objectName: "Solid1.003"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                source: "meshes/solid1_003_mesh.mesh"
                materials: [
                    default_material
                ]
            }
        }
        Node {
            id: tavtarto_2
            objectName: "tavtarto:2"
            x: -0.026818852871656418
            y: -0.04052233695983887
            z: -0.008246946148574352
            rotation: Qt.quaternion(0.20989, 0.675238, 0.675238, -0.20989)
            Model {
                id: solid1_004
                objectName: "Solid1.004"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                source: "meshes/solid1_003_mesh.mesh"
                materials: [
                    default_material
                ]
            }
        }
        Node {
            id: mutato_1
            objectName: "mutato:1"
            x: -0.013818851672112942
            y: 0.030216215178370476
            z: 0.009959000162780285
            rotation: Qt.quaternion(0.618409, 0.342885, 0.618409, 0.342885)
            Model {
                id: solid1_005
                objectName: "Solid1.005"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                source: "meshes/solid1_004_mesh.mesh"
                materials: [
                    material_material
                ]
            }
        }
        Node {
            id: flap_kar_1
            objectName: "flap_kar:1"
            x: -0.0003188519913237542
            y: 0.009477661922574043
            eulerRotation.z: 0
            eulerRotation.y: 0
            eulerRotation.x: armRotateX - (38.12)
            z: -0.023246945813298225



            Model {
                id: solid1_006
                objectName: "Solid1.006"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                source: "meshes/solid1_005_mesh.mesh"
                materials: [
                    material_material
                ]
            }
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: default_material
            objectName: "Default"
            baseColor: "#ff050505"
            roughness: 0.699999988079071
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: white_material
            objectName: "White"
            baseColor: "#ffe8e8e8"
            roughness: 0.10000000149011612
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: material_material
            objectName: "Material"
            baseColor: "#ffcccccc"
            roughness: 0.5
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
    }

    StateGroup {
        id: horizontaMove
    }
    states: [
        State {
            name: "UP-10"
            when: flap_kar_1.eulerRotation.x >= 38.12-38.12 && flap_kar_1.eulerRotation.x < 16.11-38.12
        },
        State {
            name: "10-20"
            when: flap_kar_1.eulerRotation.x >= 16.11-38.12 && flap_kar_1.eulerRotation.x < 43.89-38.12

            PropertyChanges {
                target: flap_kar_1
                eulerRotation.y: 5.72
            }
        },
        State {
            name: "20-FULL"
            when: flap_kar_1.eulerRotation.x >= 43.89-38.12

            PropertyChanges {
                target: flap_kar_1
                eulerRotation.y: 11.37
            }
        }
    ]
    transitions: [
        Transition {
            id: transition
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: flap_kar_1
                        property: "eulerRotation.y"
                        duration: 150
                    }
                }
            }
            to: "*"
            from: "*"
        }
    ]


    // Animations:
}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}D{i:30;transitionDuration:2000}
}
##^##*/
