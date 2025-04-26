import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material


import "./device"

Item {
	anchors.fill: parent
	anchors.topMargin: 20

	ListModel {
		id: model_switches
		ListElement{name: "Switch 01"; node_id: 01; end_device: 01}
		ListElement{name: "Switch 02"; node_id: 02; end_device: 02}
		ListElement{name: "Switch 03"; node_id: 03; end_device: 03}
		ListElement{name: "Switch 04"; node_id: 04; end_device: 04}
		ListElement{name: "Switch 05"; node_id: 05; end_device: 05}
		ListElement{name: "Switch 06"; node_id: 06; end_device: 06}
	}


	GridView{
		id: home_swiches_view
		anchors.fill: parent

		model: model_switches
		delegate: Switches{
			required name
			required node_id
			required end_device
		}

	}

}

