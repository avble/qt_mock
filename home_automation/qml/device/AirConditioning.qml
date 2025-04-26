import QtQuick
import QtQuick.Controls

Item{

	id: _air_conditioning
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
			icon.source: "qrc:/avble/resources/images/icons/air-conditioning.svg"
			icon.color: "antiquewhite"
			icon.width: 60
			icon.height: 60
			visible: true
			// anchors.fill: light
			background.opacity: 0
		}

		Text {
			id: nameLabel
			y: 100
			anchors.horizontalCenter: parent.horizontalCenter
			color: "white"
			font.family: "Helvetica"
			font.bold: true; font.pixelSize: 16
			style: Text.Raised; styleColor: "black"
			text: _air_conditioning.name
		}
	}
}

