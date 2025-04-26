import QtQuick
import QtQuick.Controls

import "./device"

Item{
	anchors.fill: parent
	anchors.topMargin: 20

	ListModel {
		id: model_air_conditioning
		ListElement{name: "AC 01"; node_id: 01; end_device: 01}
		ListElement{name: "AC 02"; node_id: 02; end_device: 02}
		ListElement{name: "AC 03"; node_id: 03; end_device: 03}
	}

	GridView{
		id: home_lights_view
		anchors.fill: parent

		model: model_air_conditioning
		delegate: AirConditioning{
			required name
			required node_id
			required end_device
		}
	}
}
