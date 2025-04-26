import QtQuick
import QtQuick.Controls

Item {
    id : sensor
    width: 80 
    height: 120

    property string name
    property int node_id
    property int end_device
    property bool on_off


    Rectangle {
        anchors.fill: parent 

        color: "#beb9b9"
        opacity: 0.4
        radius: 5

        Button{
            width: 60
            height: 60
            icon.source: "qrc:/avble/resources/images/icons/sensor.svg"
            icon.color: "antiquewhite"
            icon.width: 60
            icon.height: 60
            visible: true
            // anchors.fill: light
            background.opacity: 0
        }


        Switch {
            id: door_sensor
            y: 60
            anchors.horizontalCenter: parent.horizontalCenter
            position: on_off == true? 1.0: 0.0
            text: position === 1.0? qsTr("Close"): qsTr("Open")
        }

        Text {
            id: nameLabel
            y: 100
            anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
            font.family: "Helvetica"
            font.bold: true; font.pixelSize: 16
            style: Text.Raised; styleColor: "black"
            text: sensor.name
        }
    }
}
