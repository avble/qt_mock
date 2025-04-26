import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "device"

Item{

	anchors.fill: parent
	anchors.topMargin: 20

	ListModel {
		id: model_cameras
		ListElement{name: "Camera 01"; node_id: 01; end_device: 01}
		ListElement{name: "Camera 02"; node_id: 02; end_device: 02}
		ListElement{name: "Camera 03"; node_id: 03; end_device: 03}
	}

	GridView{
		id: home_cameras_view
		anchors.fill: parent

		model: model_cameras
		delegate: Camera{
			required name
			required node_id
			required end_device
		}
	}

}

