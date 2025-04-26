import QtQuick
import QtQuick.Controls

Item {
    id: light
    width: 80
    height: 120

    property string name
    property int node_id
    property int end_device
    property bool onoff_status: false

    // toggle on-off status
    function set_onoff_status(onoff_status_) {
        if (onoff_status_ == onoff_status)
            return;
        if (onoff_status_ == true) {
            home_labs.model.turn_on(light.node_id, light.end_device);
            console.log("turn on node-id: ", light.node_id, ", end-device: ", light.end_device);
        } else {
            console.log("turn off node-id: ", light.node_id, ", end-device: ", light.end_device);
            home_labs.model.turn_off(light.node_id, light.end_device);
        }

        onoff_status = onoff_status_;
    }

    Rectangle {
        anchors.fill: light

        color: "#beb9b9"
        opacity: 0.7
        radius: 5

        Button {
            width: 60
            height: 60
            icon.source: "qrc:/avble/resources/images/light/on_off.svg"
            icon.color: "antiquewhite"
            icon.width: 60
            icon.height: 60
            visible: true
            // anchors.fill: light
            background.opacity: 0
        }

        Switch {
            id: onoff_switch
            y: 60
            anchors.horizontalCenter: parent.horizontalCenter
            position: onoff_status == true ? 1.0 : 0.0
            text: position === 1.0 ? qsTr("ON") : qsTr("OFF")
            onClicked: mouse => {
                light.set_onoff_status(position == 1.0);
                text = position === 1.0 ? qsTr("ON") : qsTr("OFF");
            }
        }
        Text {
            id: nameLabel
            y: 100
            anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
            font.family: "Helvetica"
            font.bold: true
            font.pixelSize: 16
            style: Text.Raised
            styleColor: "black"
            text: light.name
        }
    }
}
