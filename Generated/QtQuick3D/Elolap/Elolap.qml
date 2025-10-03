import QtQuick
import QtQuick3D

Node {
    id: node
    scale.x: 1000
    scale.y: 1000
    scale.z: 1000

    // Resources

    // Nodes:
    Node {
        id: root
        objectName: "ROOT"
        Node {
            id: el_lap_1
            objectName: "előlap:1"
            Model {
                id: solid1
                objectName: "Solid1"
                scale.x: 0.01
                scale.y: 0.01
                scale.z: 0.01
                source: "meshes/solid1_mesh.mesh"
                materials: [
                    default2_material,
                    material_001_material
                ]
            }
        }
        Node {
            id: mts_1xx_A1_blue_2
            objectName: "MTS-1xx-A1-blue:2"
            x: -0.039000000804662704
            y: -0.03525000065565109
            z: -0.002400000113993883
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 1
            scale.y: 1
            scale.z: 1
            Node {
                id: node1
                objectName: "1"
                Model {
                    id: solid1_001
                    objectName: "Solid1.001"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_001_mesh.mesh"
                    materials: [
                        material_005_material
                    ]
                }
                Model {
                    id: solid2
                    objectName: "Solid2"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid3
                    objectName: "Solid3"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid4
                    objectName: "Solid4"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid4_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid5
                    objectName: "Solid5"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid5_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
            }
            Node {
                id: node2
                objectName: "2"
                y: -0.008799999952316284
                Model {
                    id: sw2
                    objectName: "sw2"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/sw2_mesh.mesh"
                    materials: [
                        material_004_material
                    ]
                }
            }
            Node {
                id: node3
                objectName: "3"
                y: 0.005900000222027302
                Model {
                    id: solid1_002
                    objectName: "Solid1.002"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_002_mesh.mesh"
                    materials: [
                        m192192192_material
                    ]
                }
            }
            Node {
                id: node4
                objectName: "4"
                y: -0.007399423513561487
                z: 0.0001061552029568702
                rotation: Qt.quaternion(0.994522, -0.104529, 0, 0)
                Model {
                    id: solid1_003
                    objectName: "Solid1.003"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_003_mesh.mesh"
                    materials: [
                        m192192192_001_material
                    ]
                }
                Model {
                    id: solid2_001
                    objectName: "Solid2.001"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_001_mesh.mesh"
                    materials: [
                        m255255255_material
                    ]
                }
                Model {
                    id: solid3_001
                    objectName: "Solid3.001"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_001_mesh.mesh"
                    materials: [
                        m363636_material
                    ]
                }
            }
            Node {
                id: node5
                objectName: "5"
                y: 0.005900000222027302
                Model {
                    id: solid1_004
                    objectName: "Solid1.004"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_004_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
                Model {
                    id: solid2_002
                    objectName: "Solid2.002"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_002_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
                Model {
                    id: solid3_002
                    objectName: "Solid3.002"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_002_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
            }
            Node {
                id: node6
                objectName: "6"
                Model {
                    id: solid1_005
                    objectName: "Solid1.005"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_005_mesh.mesh"
                    materials: [
                        m203210239_002_material
                    ]
                }
                Model {
                    id: solid2_003
                    objectName: "Solid2.003"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_003_mesh.mesh"
                    materials: [
                        m11100170_material
                    ]
                }
            }
        }
        Node {
            id: mts_1xx_A1_blue_3
            objectName: "MTS-1xx-A1-blue:3"
            x: -0.023399999365210533
            y: -0.03525000065565109
            z: -0.002400000113993883
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 1
            scale.y: 1
            scale.z: 1
            Node {
                id: node1_001
                objectName: "1.001"
                Model {
                    id: solid1_006
                    objectName: "Solid1.006"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_001_mesh.mesh"
                    materials: [
                        material_005_material
                    ]
                }
                Model {
                    id: solid2_004
                    objectName: "Solid2.004"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid3_003
                    objectName: "Solid3.003"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid4_001
                    objectName: "Solid4.001"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid4_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid5_001
                    objectName: "Solid5.001"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid5_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
            }
            Node {
                id: node2_001
                objectName: "2.001"
                y: -0.008799999952316284
                Model {
                    id: sw2_001
                    objectName: "sw2.001"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/sw2_mesh.mesh"
                    materials: [
                        material_004_material
                    ]
                }
            }
            Node {
                id: node3_001
                objectName: "3.001"
                y: 0.005900000222027302
                Model {
                    id: solid1_007
                    objectName: "Solid1.007"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_002_mesh.mesh"
                    materials: [
                        m192192192_material
                    ]
                }
            }
            Node {
                id: node4_001
                objectName: "4.001"
                y: -0.007399423513561487
                z: 0.0001061552029568702
                rotation: Qt.quaternion(0.994522, -0.104529, 0, 0)
                Model {
                    id: solid1_008
                    objectName: "Solid1.008"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_003_mesh.mesh"
                    materials: [
                        m192192192_001_material
                    ]
                }
                Model {
                    id: solid2_005
                    objectName: "Solid2.005"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_001_mesh.mesh"
                    materials: [
                        m255255255_material
                    ]
                }
                Model {
                    id: solid3_004
                    objectName: "Solid3.004"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_001_mesh.mesh"
                    materials: [
                        m363636_material
                    ]
                }
            }
            Node {
                id: node5_001
                objectName: "5.001"
                y: 0.005900000222027302
                Model {
                    id: solid1_009
                    objectName: "Solid1.009"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_004_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
                Model {
                    id: solid2_006
                    objectName: "Solid2.006"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_002_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
                Model {
                    id: solid3_005
                    objectName: "Solid3.005"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_002_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
            }
            Node {
                id: node6_001
                objectName: "6.001"
                Model {
                    id: solid1_010
                    objectName: "Solid1.010"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_005_mesh.mesh"
                    materials: [
                        m203210239_002_material
                    ]
                }
                Model {
                    id: solid2_007
                    objectName: "Solid2.007"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_003_mesh.mesh"
                    materials: [
                        m11100170_material
                    ]
                }
            }
        }
        Node {
            id: mts_1xx_A1_blue_4
            objectName: "MTS-1xx-A1-blue:4"
            x: -0.007799999788403511
            y: -0.03525000065565109
            z: -0.002400000113993883
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 1
            scale.y: 1
            scale.z: 1
            Node {
                id: node1_002
                objectName: "1.002"
                Model {
                    id: solid1_011
                    objectName: "Solid1.011"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_001_mesh.mesh"
                    materials: [
                        material_005_material
                    ]
                }
                Model {
                    id: solid2_008
                    objectName: "Solid2.008"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid3_006
                    objectName: "Solid3.006"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid4_002
                    objectName: "Solid4.002"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid4_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid5_002
                    objectName: "Solid5.002"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid5_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
            }
            Node {
                id: node2_002
                objectName: "2.002"
                y: -0.008799999952316284
                Model {
                    id: sw2_002
                    objectName: "sw2.002"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/sw2_mesh.mesh"
                    materials: [
                        material_004_material
                    ]
                }
            }
            Node {
                id: node3_002
                objectName: "3.002"
                y: 0.005900000222027302
                Model {
                    id: solid1_012
                    objectName: "Solid1.012"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_002_mesh.mesh"
                    materials: [
                        m192192192_material
                    ]
                }
            }
            Node {
                id: node4_002
                objectName: "4.002"
                y: -0.007399423513561487
                z: 0.0001061552029568702
                rotation: Qt.quaternion(0.994522, -0.104529, 0, 0)
                Model {
                    id: solid1_013
                    objectName: "Solid1.013"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_003_mesh.mesh"
                    materials: [
                        m192192192_001_material
                    ]
                }
                Model {
                    id: solid2_009
                    objectName: "Solid2.009"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_001_mesh.mesh"
                    materials: [
                        m255255255_material
                    ]
                }
                Model {
                    id: solid3_007
                    objectName: "Solid3.007"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_001_mesh.mesh"
                    materials: [
                        m363636_material
                    ]
                }
            }
            Node {
                id: node5_002
                objectName: "5.002"
                y: 0.005900000222027302
                Model {
                    id: solid1_014
                    objectName: "Solid1.014"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_004_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
                Model {
                    id: solid2_010
                    objectName: "Solid2.010"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_002_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
                Model {
                    id: solid3_008
                    objectName: "Solid3.008"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_002_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
            }
            Node {
                id: node6_002
                objectName: "6.002"
                Model {
                    id: solid1_015
                    objectName: "Solid1.015"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_005_mesh.mesh"
                    materials: [
                        m203210239_002_material
                    ]
                }
                Model {
                    id: solid2_011
                    objectName: "Solid2.011"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_003_mesh.mesh"
                    materials: [
                        m11100170_material
                    ]
                }
            }
        }
        Node {
            id: mts_1xx_A1_blue_5
            objectName: "MTS-1xx-A1-blue:5"
            x: 0.007799999788403511
            y: -0.03525000065565109
            z: -0.002400000113993883
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 1
            scale.y: 1
            scale.z: 1
            Node {
                id: node1_003
                objectName: "1.003"
                Model {
                    id: solid1_016
                    objectName: "Solid1.016"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_001_mesh.mesh"
                    materials: [
                        material_005_material
                    ]
                }
                Model {
                    id: solid2_012
                    objectName: "Solid2.012"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid3_009
                    objectName: "Solid3.009"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid4_003
                    objectName: "Solid4.003"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid4_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid5_003
                    objectName: "Solid5.003"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid5_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
            }
            Node {
                id: node2_003
                objectName: "2.003"
                y: -0.008799999952316284
                Model {
                    id: sw2_003
                    objectName: "sw2.003"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/sw2_mesh.mesh"
                    materials: [
                        material_004_material
                    ]
                }
            }
            Node {
                id: node3_003
                objectName: "3.003"
                y: 0.005900000222027302
                Model {
                    id: solid1_017
                    objectName: "Solid1.017"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_002_mesh.mesh"
                    materials: [
                        m192192192_material
                    ]
                }
            }
            Node {
                id: node4_003
                objectName: "4.003"
                y: -0.007399423513561487
                z: 0.0001061552029568702
                rotation: Qt.quaternion(0.994522, -0.104529, 0, 0)
                Model {
                    id: solid1_018
                    objectName: "Solid1.018"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_003_mesh.mesh"
                    materials: [
                        m192192192_001_material
                    ]
                }
                Model {
                    id: solid2_013
                    objectName: "Solid2.013"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_001_mesh.mesh"
                    materials: [
                        m255255255_material
                    ]
                }
                Model {
                    id: solid3_010
                    objectName: "Solid3.010"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_001_mesh.mesh"
                    materials: [
                        m363636_material
                    ]
                }
            }
            Node {
                id: node5_003
                objectName: "5.003"
                y: 0.005900000222027302
                Model {
                    id: solid1_019
                    objectName: "Solid1.019"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_004_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
                Model {
                    id: solid2_014
                    objectName: "Solid2.014"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_002_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
                Model {
                    id: solid3_011
                    objectName: "Solid3.011"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_002_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
            }
            Node {
                id: node6_003
                objectName: "6.003"
                Model {
                    id: solid1_020
                    objectName: "Solid1.020"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_005_mesh.mesh"
                    materials: [
                        m203210239_002_material
                    ]
                }
                Model {
                    id: solid2_015
                    objectName: "Solid2.015"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_003_mesh.mesh"
                    materials: [
                        m11100170_material
                    ]
                }
            }
        }
        Node {
            id: mts_1xx_A1_blue_6
            objectName: "MTS-1xx-A1-blue:6"
            x: 0.023399999365210533
            y: -0.03525000065565109
            z: -0.002400000113993883
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 1
            scale.y: 1
            scale.z: 1
            Node {
                id: node1_004
                objectName: "1.004"
                Model {
                    id: solid1_021
                    objectName: "Solid1.021"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_001_mesh.mesh"
                    materials: [
                        material_005_material
                    ]
                }
                Model {
                    id: solid2_016
                    objectName: "Solid2.016"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid3_012
                    objectName: "Solid3.012"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid4_004
                    objectName: "Solid4.004"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid4_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid5_004
                    objectName: "Solid5.004"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid5_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
            }
            Node {
                id: node2_004
                objectName: "2.004"
                y: -0.008799999952316284
                Model {
                    id: sw2_004
                    objectName: "sw2.004"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/sw2_mesh.mesh"
                    materials: [
                        material_004_material
                    ]
                }
            }
            Node {
                id: node3_004
                objectName: "3.004"
                y: 0.005900000222027302
                Model {
                    id: solid1_022
                    objectName: "Solid1.022"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_002_mesh.mesh"
                    materials: [
                        m192192192_material
                    ]
                }
            }
            Node {
                id: node4_004
                objectName: "4.004"
                y: -0.007399423513561487
                z: 0.0001061552029568702
                rotation: Qt.quaternion(0.994522, -0.104529, 0, 0)
                Model {
                    id: solid1_023
                    objectName: "Solid1.023"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_003_mesh.mesh"
                    materials: [
                        m192192192_001_material
                    ]
                }
                Model {
                    id: solid2_017
                    objectName: "Solid2.017"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_001_mesh.mesh"
                    materials: [
                        m255255255_material
                    ]
                }
                Model {
                    id: solid3_013
                    objectName: "Solid3.013"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_001_mesh.mesh"
                    materials: [
                        m363636_material
                    ]
                }
            }
            Node {
                id: node5_004
                objectName: "5.004"
                y: 0.005900000222027302
                Model {
                    id: solid1_024
                    objectName: "Solid1.024"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_004_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
                Model {
                    id: solid2_018
                    objectName: "Solid2.018"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_002_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
                Model {
                    id: solid3_014
                    objectName: "Solid3.014"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_002_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
            }
            Node {
                id: node6_004
                objectName: "6.004"
                Model {
                    id: solid1_025
                    objectName: "Solid1.025"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_005_mesh.mesh"
                    materials: [
                        m203210239_002_material
                    ]
                }
                Model {
                    id: solid2_019
                    objectName: "Solid2.019"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_003_mesh.mesh"
                    materials: [
                        m11100170_material
                    ]
                }
            }
        }
        Node {
            id: mts_1xx_A1_blue_7
            objectName: "MTS-1xx-A1-blue:7"
            x: 0.039000000804662704
            y: -0.03525000065565109
            z: -0.002400000113993883
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 1
            scale.y: 1
            scale.z: 1
            Node {
                id: node1_005
                objectName: "1.005"
                Model {
                    id: solid1_026
                    objectName: "Solid1.026"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_001_mesh.mesh"
                    materials: [
                        material_005_material
                    ]
                }
                Model {
                    id: solid2_020
                    objectName: "Solid2.020"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid3_015
                    objectName: "Solid3.015"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid4_005
                    objectName: "Solid4.005"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid4_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
                Model {
                    id: solid5_005
                    objectName: "Solid5.005"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid5_mesh.mesh"
                    materials: [
                        m203210239_material
                    ]
                }
            }
            Node {
                id: node2_005
                objectName: "2.005"
                y: -0.008799999952316284
                Model {
                    id: sw2_005
                    objectName: "sw2.005"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/sw2_mesh.mesh"
                    materials: [
                        material_004_material
                    ]
                }
            }
            Node {
                id: node3_005
                objectName: "3.005"
                y: 0.005900000222027302
                Model {
                    id: solid1_027
                    objectName: "Solid1.027"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_002_mesh.mesh"
                    materials: [
                        m192192192_material
                    ]
                }
            }
            Node {
                id: node4_005
                objectName: "4.005"
                y: -0.007399423513561487
                z: 0.0001061552029568702
                rotation: Qt.quaternion(0.994522, -0.104529, 0, 0)
                Model {
                    id: solid1_028
                    objectName: "Solid1.028"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_003_mesh.mesh"
                    materials: [
                        m192192192_001_material
                    ]
                }
                Model {
                    id: solid2_021
                    objectName: "Solid2.021"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_001_mesh.mesh"
                    materials: [
                        m255255255_material
                    ]
                }
                Model {
                    id: solid3_016
                    objectName: "Solid3.016"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_001_mesh.mesh"
                    materials: [
                        m363636_material
                    ]
                }
            }
            Node {
                id: node5_005
                objectName: "5.005"
                y: 0.005900000222027302
                Model {
                    id: solid1_029
                    objectName: "Solid1.029"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_004_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
                Model {
                    id: solid2_022
                    objectName: "Solid2.022"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_002_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
                Model {
                    id: solid3_017
                    objectName: "Solid3.017"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_002_mesh.mesh"
                    materials: [
                        m192192192_002_material
                    ]
                }
            }
            Node {
                id: node6_005
                objectName: "6.005"
                Model {
                    id: solid1_030
                    objectName: "Solid1.030"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_005_mesh.mesh"
                    materials: [
                        m203210239_002_material
                    ]
                }
                Model {
                    id: solid2_023
                    objectName: "Solid2.023"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_003_mesh.mesh"
                    materials: [
                        m11100170_material
                    ]
                }
            }
        }
        Node {
            id: rocker_switch_v5_5
            objectName: "Rocker switch v5:5"
            x: -0.028149999678134918
            y: 0.009999999776482582
            z: 0.003000000026077032
            rotation: Qt.quaternion(-7.93016e-17, 0, 0, 1)
            Node {
                id: component2_1
                objectName: "Component2:1"
                y: 0.00035039614886045456
                z: -3.247661516070366e-05
                rotation: Qt.quaternion(0.996195, -0.0871558, 0, 0)
                scale.x: 1
                scale.y: 1
                scale.z: 1
                Model {
                    id: solid1_031
                    objectName: "Solid1.031"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_031_mesh.mesh"
                    materials: [
                        m66121158_material,
                        material_006_material
                    ]
                }
            }
            Node {
                id: part41
                objectName: "Part41"
                Model {
                    id: solid1_032
                    objectName: "Solid1.032"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_007_mesh.mesh"
                    materials: [
                        m494942_material
                    ]
                }
                Model {
                    id: solid2_024
                    objectName: "Solid2.024"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_004_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid3_018
                    objectName: "Solid3.018"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_003_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid4_006
                    objectName: "Solid4.006"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid4_001_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid5_006
                    objectName: "Solid5.006"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid5_001_mesh.mesh"
                    materials: [
                        m224217206_material
                    ]
                }
                Model {
                    id: solid6
                    objectName: "Solid6"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid6_mesh.mesh"
                    materials: [
                        m224217206_material
                    ]
                }
                Model {
                    id: solid7
                    objectName: "Solid7"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid7_mesh.mesh"
                    materials: [
                        m224217206_material
                    ]
                }
                Model {
                    id: solid8
                    objectName: "Solid8"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid8_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid9
                    objectName: "Solid9"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid9_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
            }
        }
        Node {
            id: rocker_switch_v5_6
            objectName: "Rocker switch v5:6"
            x: 0.028699999675154686
            y: 0.009999999776482582
            z: 0.003000000026077032
            rotation: Qt.quaternion(0, 0, 0, 1)
            Node {
                id: component2_1_001
                objectName: "Component2:1.001"
                y: 0.00035039614886045456
                z: -3.247661516070366e-05
                rotation: Qt.quaternion(0.996195, -0.0871558, 0, 0)
                scale.x: 1
                scale.y: 1
                scale.z: 1
                Model {
                    id: solid1_033
                    objectName: "Solid1.033"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_033_mesh.mesh"
                    materials: [
                        m66121158_material,
                        material_006_material
                    ]
                }
            }
            Node {
                id: part41_001
                objectName: "Part41.001"
                Model {
                    id: solid1_034
                    objectName: "Solid1.034"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_007_mesh.mesh"
                    materials: [
                        m494942_material
                    ]
                }
                Model {
                    id: solid2_025
                    objectName: "Solid2.025"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_004_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid3_019
                    objectName: "Solid3.019"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_003_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid4_007
                    objectName: "Solid4.007"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid4_001_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid5_007
                    objectName: "Solid5.007"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid5_001_mesh.mesh"
                    materials: [
                        m224217206_material
                    ]
                }
                Model {
                    id: solid6_001
                    objectName: "Solid6.001"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid6_mesh.mesh"
                    materials: [
                        m224217206_material
                    ]
                }
                Model {
                    id: solid7_001
                    objectName: "Solid7.001"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid7_mesh.mesh"
                    materials: [
                        m224217206_material
                    ]
                }
                Model {
                    id: solid8_001
                    objectName: "Solid8.001"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid8_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid9_001
                    objectName: "Solid9.001"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid9_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
            }
        }
        Node {
            id: rocker_switch_v5_7
            objectName: "Rocker switch v5:7"
            x: -0.014000000432133675
            y: 0.009999999776482582
            z: 0.003000000026077032
            rotation: Qt.quaternion(0, 0, 0, 1)
            Node {
                id: component2_1_002
                objectName: "Component2:1.002"
                y: 0.00035039614886045456
                z: -3.247661516070366e-05
                rotation: Qt.quaternion(0.996195, -0.0871558, 0, 0)
                scale.x: 1
                scale.y: 1
                scale.z: 1
                Model {
                    id: solid1_035
                    objectName: "Solid1.035"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_035_mesh.mesh"
                    materials: [
                        m66121158_material,
                        material_006_material
                    ]
                }
            }
            Node {
                id: part41_002
                objectName: "Part41.002"
                Model {
                    id: solid1_036
                    objectName: "Solid1.036"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_007_mesh.mesh"
                    materials: [
                        m494942_material
                    ]
                }
                Model {
                    id: solid2_026
                    objectName: "Solid2.026"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_004_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid3_020
                    objectName: "Solid3.020"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_003_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid4_008
                    objectName: "Solid4.008"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid4_001_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid5_008
                    objectName: "Solid5.008"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid5_001_mesh.mesh"
                    materials: [
                        m224217206_material
                    ]
                }
                Model {
                    id: solid6_002
                    objectName: "Solid6.002"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid6_mesh.mesh"
                    materials: [
                        m224217206_material
                    ]
                }
                Model {
                    id: solid7_002
                    objectName: "Solid7.002"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid7_mesh.mesh"
                    materials: [
                        m224217206_material
                    ]
                }
                Model {
                    id: solid8_002
                    objectName: "Solid8.002"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid8_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid9_002
                    objectName: "Solid9.002"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid9_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
            }
        }
        Node {
            id: rocker_switch_v5_8
            objectName: "Rocker switch v5:8"
            x: 0.014550000429153442
            y: 0.009999999776482582
            z: 0.003000000026077032
            rotation: Qt.quaternion(0, 0, 0, 1)
            Node {
                id: component2_1_003
                objectName: "Component2:1.003"
                y: 0.00035039614886045456
                z: -3.247661516070366e-05
                rotation: Qt.quaternion(0.996195, -0.0871558, 0, 0)
                scale.x: 1
                scale.y: 1
                scale.z: 1
                Model {
                    id: solid1_037
                    objectName: "Solid1.037"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_037_mesh.mesh"
                    materials: [
                        m66121158_material,
                        material_006_material
                    ]
                }
            }
            Node {
                id: part41_003
                objectName: "Part41.003"
                Model {
                    id: solid1_038
                    objectName: "Solid1.038"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid1_007_mesh.mesh"
                    materials: [
                        m494942_material
                    ]
                }
                Model {
                    id: solid2_027
                    objectName: "Solid2.027"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid2_004_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid3_021
                    objectName: "Solid3.021"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid3_003_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid4_009
                    objectName: "Solid4.009"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid4_001_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid5_009
                    objectName: "Solid5.009"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid5_001_mesh.mesh"
                    materials: [
                        m224217206_material
                    ]
                }
                Model {
                    id: solid6_003
                    objectName: "Solid6.003"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid6_mesh.mesh"
                    materials: [
                        m224217206_material
                    ]
                }
                Model {
                    id: solid7_003
                    objectName: "Solid7.003"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid7_mesh.mesh"
                    materials: [
                        m224217206_material
                    ]
                }
                Model {
                    id: solid8_003
                    objectName: "Solid8.003"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid8_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
                Model {
                    id: solid9_003
                    objectName: "Solid9.003"
                    scale.x: 0.01
                    scale.y: 0.01
                    scale.z: 0.01
                    source: "meshes/solid9_mesh.mesh"
                    materials: [
                        m160160160_material
                    ]
                }
            }
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: default2_material
            objectName: "Default2"
            baseColor: "#ff040404"
            roughness: 0.9599999785423279
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: material_001_material
            objectName: "Material.001"
            baseColor: "#ffcccccc"
            roughness: 0.5
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: material_005_material
            objectName: "Material.005"
            metalness: 1
            roughness: 0.5555555820465088
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: m203210239_material
            objectName: "M203210239"
            metalness: 1
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: material_004_material
            objectName: "Material.004"
            metalness: 1
            roughness: 0.5158730149269104
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: m192192192_material
            objectName: "M192192192"
            baseColor: "#ff868686"
            roughness: 0.8999999761581421
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: m192192192_001_material
            objectName: "M192192192.001"
            baseColor: "#ff868686"
            roughness: 0.8999999761581421
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: m255255255_material
            objectName: "M255255255"
            roughness: 0.8999999761581421
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: m363636_material
            objectName: "M363636"
            baseColor: "#ff040404"
            roughness: 0.8999999761581421
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: m192192192_002_material
            objectName: "M192192192.002"
            baseColor: "#ff868686"
            roughness: 0.8999999761581421
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: m203210239_002_material
            objectName: "M203210239.002"
            baseColor: "#ff98a4dc"
            roughness: 0.8999999761581421
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: m11100170_material
            objectName: "M11100170"
            baseColor: "#ff012067"
            roughness: 0.8999999761581421
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: m66121158_material
            objectName: "M66121158"
            baseColor: "#ff0e3157"
            roughness: 0.8999999761581421
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: material_006_material
            objectName: "Material.006"
            baseColor: "#ffcccccc"
            roughness: 0.5
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: m494942_material
            objectName: "M494942"
            baseColor: "#ff080806"
            roughness: 0.8999999761581421
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: m160160160_material
            objectName: "M160160160"
            baseColor: "#ff5a5a5a"
            roughness: 0.8999999761581421
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: m224217206_material
            objectName: "M224217206"
            baseColor: "#ffbeb19d"
            roughness: 0.8999999761581421
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
    }

    property Transition switchTransition: Transition {
            id: switchTransition
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        property: "eulerRotation.x"
                        easing.bezierCurve: [0.65,0.299,0.972,0.0423,1,1]
                        duration: 300
                    }
                }
            }
            to: "*"
            from: "*"
    }

    property Transition armSwitchTransition: Transition {
            id: armSwitchTransition
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        property: "eulerRotation.x"
                        easing.bezierCurve: [0.215,0.61,0.355,1,1,1]
                        duration: 300
                    }
                }
            }
            to: "*"
            from: "*"
    }

    StateGroup {
        id: altBat1
        state: "OFF"
        states: [
            State {
                name: "OFF"

                PropertyChanges {
                    target: solid1_031
                    eulerRotation.x: 0
                }
            },

            State {
                name: "ON"

                PropertyChanges {
                    target: solid1_031
                    eulerRotation.x: 20
                }
            }
        ]
        transitions: switchTransition
    }

    StateGroup {
        id: altBat2
        state: "OFF"
        states: [
            State {
                name: "OFF"
            },
            State {
                name: "ON"

                PropertyChanges {
                    target: solid1_035
                    eulerRotation.x: 20
                }
            }
        ]
        transitions: switchTransition
    }

    StateGroup {
        id: bus1
        state: "OFF"
        states: [
            State {
                name: "OFF"
            },
            State {
                name: "ON"

                PropertyChanges {
                    target: solid1_037
                    eulerRotation.x: 20
                }
            }
        ]
        transitions: switchTransition
    }

    StateGroup {
        id: bus2
        state: "OFF"
        states: [
            State {
                name: "OFF"
            },
            State {
                name: "ON"

                PropertyChanges {
                    target: solid1_033
                    eulerRotation.x: 20
                }
            }
        ]
        transitions: switchTransition
    }

    StateGroup {
        id: fPump
        state: "OFF"
        states: [
            State {
                name: "OFF"

                PropertyChanges {
                    target: sw2
                    z: 0.00005
                    y: 0.0019
                    pivot.y: 0.2
                    eulerRotation.x: 20
                }

                PropertyChanges {
                    target: solid3_001
                    eulerRotation.x: 20
                }
            },

            State {
                name: "ON"

                PropertyChanges {
                    target: sw2
                    z: 0.00005
                    y: 0.0019
                    pivot.y: 0.2
                }

            }        ]
        transitions: armSwitchTransition

    }

    StateGroup {
        id: bcn
        state: "OFF"
        states: [
            State {
                name: "OFF"

                PropertyChanges {
                    target: sw2_001
                    z: 0.00005
                    y: 0.0019
                    pivot.y: 0.2
                    eulerRotation.x: 20
                }

                PropertyChanges {
                    target: solid3_004
                    eulerRotation.x: 20
                }
            },

            State {
                name: "ON"


                PropertyChanges {
                    target: sw2
                    z: 0.00005
                    y: 0.0019
                    pivot.y: 0.2
                }
            }        ]
        transitions: armSwitchTransition

    }

    StateGroup {
        id: land
        state: "OFF"
        states: [
            State {
                name: "OFF"

                PropertyChanges {
                    target: sw2_002
                    z: 0.00005
                    y: 0.0019
                    pivot.y: 0.2
                    eulerRotation.x: 20
                }

                PropertyChanges {
                    target: solid3_007
                    eulerRotation.x: 20
                }
            },

            State {
                name: "ON"


                PropertyChanges {
                    target: sw2
                    z: 0.00005
                    y: 0.0019
                    pivot.y: 0.2
                }
            }        ]
        transitions: armSwitchTransition

    }

    StateGroup {
        id: taxi
        state: "OFF"
        states: [
            State {
                name: "OFF"

                PropertyChanges {
                    target: sw2_003
                    z: 0.00005
                    y: 0.0019
                    pivot.y: 0.2
                    eulerRotation.x: 20
                }

                PropertyChanges {
                    target: solid3_010
                    eulerRotation.x: 20
                }
            },

            State {
                name: "ON"


                PropertyChanges {
                    target: sw2
                    z: 0.00005
                    y: 0.0019
                    pivot.y: 0.2
                }
            }        ]
        transitions: armSwitchTransition

    }

    StateGroup {
        id: nav
        state: "OFF"
        states: [
            State {
                name: "OFF"

                PropertyChanges {
                    target: sw2_004
                    z: 0.00005
                    y: 0.0019
                    pivot.y: 0.2
                    eulerRotation.x: 20
                }

                PropertyChanges {
                    target: solid3_013
                    eulerRotation.x: 20
                }
            },

            State {
                name: "ON"


                PropertyChanges {
                    target: sw2
                    z: 0.00005
                    y: 0.0019
                    pivot.y: 0.2
                }
            }        ]
        transitions: armSwitchTransition

    }

    StateGroup {
        id: strobe
        state: "OFF"
        states: [
            State {
                name: "OFF"

                PropertyChanges {
                    target: sw2_005
                    z: 0.00005
                    y: 0.0019
                    pivot.y: 0.2
                    eulerRotation.x: 20
                }

                PropertyChanges {
                    target: solid3_016
                    eulerRotation.x: 20
                }
            },

            State {
                name: "ON"


                PropertyChanges {
                    target: sw2
                    z: 0.00005
                    y: 0.0019
                    pivot.y: 0.2
                }
            }        ]
        transitions: armSwitchTransition

    }

    // Animations:

    property alias altBat1State: altBat1.state
    property alias altBat2State: altBat2.state
    property alias bus1State: bus1.state
    property alias bus2State: bus2.state
    property alias fPumpState: fPump.state
    property alias bcnState: bcn.state
    property alias landState: land.state
    property alias taxiState: taxi.state
    property alias navState: nav.state
    property alias strobeState: strobe.state

}



/*##^##
Designer {
    D{i:0;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/
