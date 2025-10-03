import QtQuick
import QtQuick3D

Node {
    id: node


    property real wheelRotateZ

    Behavior on wheelRotateZ {
        id: trimAnimation
          NumberAnimation {
              duration: 500      // 0.5 másodperc
              easing.type: Easing.InOutQuad
          }
      }



    // Resources

    // Nodes:
    Model {
        id: trim_wheel
        objectName: "trim_wheel"
        scale.x: 10
        scale.y: 10
        scale.z: 10
        eulerRotation.z: wheelRotateZ
        source: "meshes/trim_wheel_mesh.mesh"
        materials: [
            material_001_material
        ]
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: material_001_material
            objectName: "Material.001"
            baseColor: "#ff020202"
            roughness: 0.8253968358039856
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
    }

    // Animations:
}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/
