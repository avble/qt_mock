import QtQuick
import QtQuick.Controls
import QtQuick.Layouts


Item{
	id: _switch
	width: 80
	height: 120

	property string name
	property int node_id
	property int end_device

	Rectangle{
		anchors.fill: parent

		color: "#beb9b9"
		opacity: 0.4
		radius: 5

		Button{
			width: 60
			height: 60
			icon.source: "qrc:/avble/resources/images/icons/switch.svg"
			icon.width: 60
			icon.height: 60
			visible: true
			background.opacity: 0
		}

		Switch{
			text: position === 1.0? "ON": "OFF"
			y: 60
		}

		Text{
			y: 100
			text: _switch.name 
			anchors.horizontalCenter: parent.horizontalCenter
			color: "white"
			font.family: "Helvetica"
			font.bold: true; font.pixelSize: 16
			style: Text.Raised; styleColor: "black"
		}
	}

}
