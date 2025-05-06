import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

import "../device"

Item {
    anchors.fill: parent
    anchors.topMargin: 20

    ListModel{
        id: lab_devices
        ListElement {
            name: "device 01"
            node_id: 1
            end_device: 2
        }

        ListElement {
            name: "device 02"
            node_id: 1
            end_device: 3
        }

    }    

    GridView {
        id: home_labs
        anchors.fill: parent

        model: lab_devices

        delegate: Light {
            required name
            required node_id
            required end_device
        }
    }
}
