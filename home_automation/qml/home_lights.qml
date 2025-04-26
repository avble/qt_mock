import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts

import "./device"

Item{

	anchors.fill: parent
	anchors.topMargin: 20

	ListModel {
		id: model_lights
		ListElement{name: "Living light"; node_id: 01; end_device: 01}
		ListElement{name: "Kitchen light"; node_id: 02; end_device: 02}
		ListElement{name: "Bedroom light"; node_id: 03; end_device: 03}
	}

	GridView{
		id: home_lights_view
		anchors.fill: parent

		model: model_lights
		delegate: Light{
			required name
			required node_id
			required end_device
		}
	}

}


