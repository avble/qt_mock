import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

import avhome

import "../device"

Item {
    anchors.fill: parent
    anchors.topMargin: 20

    GridView {
        id: home_labs
        anchors.fill: parent

        model: DeviceModel {}

        delegate: Light {
            required name
            required node_id
            required end_device
        }
    }
}
