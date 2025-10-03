import QtQuick
import QtQuick3D

Node {
    id: node
    scale.x: 1000
    scale.y: 1000
    scale.z: 1000

    property int armRotateX

    // Resources

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
            rotation: Qt.quaternion(-4.66329e-16, 3.74339e-23, -0.707107, 0.707107)
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
            id: flap_kar_1
            objectName: "flap_kar:1"
            x: -0.00031884064082987607
            y: 0.011198394000530243
            z: -0.0207894928753376
            rotation: Qt.quaternion(0.953717, -0.300706, 0, 0)
            Model {
                id: solid1_003
                x: 0
                objectName: "Solid1.003"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                source: "meshes/solid1_003_mesh.mesh"
                eulerRotation.z: 0
                eulerRotation.y: 7
                eulerRotation.x: armRotateX
                z: 0
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
            rotation: Qt.quaternion(0.67438, -0.212631, 0.212631, 0.67438)
            scale.x: 1
            scale.y: 1
            scale.z: 1
            Model {
                id: solid2
                objectName: "Solid2"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                eulerRotation.y: -armRotateX
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
                id: solid1_004
                objectName: "Solid1.004"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                source: "meshes/solid1_004_mesh.mesh"
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
                id: solid1_005
                objectName: "Solid1.005"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                source: "meshes/solid1_004_mesh.mesh"
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
                id: solid1_006
                objectName: "Solid1.006"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                source: "meshes/solid1_005_mesh.mesh"
                materials: [
                    default_material
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
            roughness: 0.703246533870697
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
    }

    StateGroup {
        id: horizontalMove
        state: "0-10"
        states: [
            State {
                name: "0-10"
                when: armRotateX >= 0 && armRotateX < 16
                PropertyChanges {
                    target: solid1_003
                    eulerRotation.y: 0
                }
            },

            State {
                name: "10-20"
                when: armRotateX >= 16 && armRotateX < 49
                PropertyChanges {
                    target: solid1_003
                    eulerRotation.y: 7
                }
            },
            State {
                name: "20-FULL"
                when: armRotateX >= 49
                PropertyChanges {
                    target: solid1_003
                    eulerRotation.y: 20
                }
            }        ]
    }

    // Animations:
}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/
