import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material


import "./device"

Item {
	anchors.fill: parent
	anchors.topMargin: 20

	ListModel {
		id: model_switches
		ListElement{name: "Sensor 01"; node_id: 01; end_device: 01; on_off: true}
		ListElement{name: "sensor 02"; node_id: 02; end_device: 02; on_off: true}
		ListElement{name: "sensor 03"; node_id: 03; end_device: 03; on_off: false}
		ListElement{name: "sensor 04"; node_id: 04; end_device: 03; on_off: false}
		ListElement{name: "sensor 05"; node_id: 05; end_device: 03; on_off: false}
		ListElement{name: "sensor 06"; node_id: 06; end_device: 03; on_off: false}
	}


	GridView{
		id: home_swiches_view
		anchors.fill: parent

		model: model_switches
		delegate: Sensor{ 
			required name
			required node_id
			required end_device
			required on_off
		}
	}

}

