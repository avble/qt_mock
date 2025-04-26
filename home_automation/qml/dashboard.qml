import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts

ColumnLayout {
    spacing: 2

    Rectangle {
        Layout.alignment: Qt.AlignLeft
        color: "transparent"
        Layout.preferredWidth: 200
        Layout.preferredHeight: 120

        RowLayout {
            id: row_one
            spacing: 6
            Layout.leftMargin: 6
            Layout.topMargin: 6
            anchors.fill: parent
            Rectangle {
                //Layout.fillWidth: true
                Layout.minimumWidth: 350
                Layout.preferredWidth: 350
                Layout.maximumWidth: 370
                Layout.minimumHeight: 120
                //color: "red"
                Image {
                    source: "qrc:/avble/resources/images/weather_forcast.png"
                    visible: true
                    anchors.fill: parent
                }
            }

            Rectangle {
                //color: "blue"
                //Layout.fillWidth: true
                Layout.minimumWidth: 350
                Layout.preferredWidth: 350
                Layout.maximumWidth: 370
                Layout.minimumHeight: 120
                Image {
                    source: "qrc:/avble/resources/images/automation.png"
                    visible: true
                    anchors.fill: parent
                }
            }
        }
    }

    ListModel {
        id: model_dashboard
        ListElement {
            icon_source: "qrc:/avble/resources/images/icons/lighting.svg"
            name: "Light"
            num_device: 2
        }
        ListElement {
            icon_source: "qrc:/avble/resources/images/icons/cctv.svg"
            name: "Camera"
            num_device: 4
        }
        ListElement {
            icon_source: "qrc:/avble/resources/images/icons/sensor.svg"
            name: "Sensor"
            num_device: 4
        }
        ListElement {
            icon_source: "qrc:/avble/resources/images/icons/switch.svg"
            name: "Switch"
            num_device: 10
        }
        ListElement {
            icon_source: "qrc:/avble/resources/images/icons/curtains.svg"
            name: "Curtain"
            num_device: 4
        }
        ListElement {
            icon_source: "qrc:/avble/resources/images/icons/air-conditioning.svg"
            name: "AC"
            num_device: 2
        }
    }

    Rectangle {
        Layout.alignment: Qt.AlignBottom
        Layout.fillWidth: true
        Layout.fillHeight: true
        color: "transparent"

        GridView {
            anchors.fill: parent
            model: model_dashboard
            cellWidth: 150
            cellHeight: 200
            anchors.topMargin: 10
            anchors.leftMargin: 10

            delegate: Rectangle {
                color: "#beb9b9"
                opacity: 0.6
                radius: 5
                width: 130
                height: 160

                required property string icon_source
                required property string name
                required property int num_device

                ColumnLayout {
                    RowLayout {
                        Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                        //Layout.preferredWidth: 120
                        //Layout.preferredHeight: 120
                        Layout.leftMargin: 0
                        Layout.rightMargin: 0
                        spacing: 1
                        Button {
                            width: 30
                            height: 30
                            anchors.margins: 1
                            background.opacity: 0
                            icon.color: "blue"
                            icon.source: icon_source
                        }
                        Text {
                            Layout.alignment: Qt.AlignLeft
                            text: name
                            color: "blue"
                            font.pointSize: 20
                        }
                    }
                    Text {
                        Layout.alignment: Qt.AlignHCenter
                        Layout.preferredWidth: 120
                        Layout.preferredHeight: 120
                        horizontalAlignment: Text.AlignHCenter
                        text: num_device
                        font.pointSize: 46
                        color: "white"
                    }
                }
            }
        }
    }
}
