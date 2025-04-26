import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material 2.4
import QtQuick.Layouts
//import QtQuick3D
//import QtQuick3D.Physics

// import App

ApplicationWindow {
	id: root
	width: 800
	height: 560
	visible: true
	title: qsTr("A-Connect Smart Living")
	// Material.theme: Material.Dark
	// Material.accent: Material.Purple

	Image {
		id: backround
		source: "qrc:/avble/resources/images/background.png"
		visible: true
		anchors.fill: parent
	}

	header: ToolBar {
		id: toolbar_

		RowLayout {
			anchors.fill: parent
			ToolButton {
				id: toolButton
				text: "\u2630" 
				font.pixelSize: Qt.application.font.pixelSize * 1.6
				onClicked: {
					drawer.open()
				}
			}

			TabBar {
				// anchors.horizontalCenter: parent.horizontalCenter
				// anchors.centerIn: parent

				// background.opacity: 0.2
				anchors.centerIn: parent
				background: Rectangle{
					color: toolbar_.background.color
					opacity: 0.2
				}

				TabButton{
					text: qsTr("Home")
					width: 100
					icon.source: "qrc:/avble/resources/images/icons/home.svg"
					display: TabButton.TextUnderIcon
					onClicked: {
						content_main.setSource("dashboard.qml")
					}
				}

				TabButton {
					text: qsTr("Labs")
					width: 100
					icon.source: "qrc:/avble/resources/images/icons/lab.svg"
					display: TabButton.TextUnderIcon
					onClicked:{ 
						content_main.setSource("room/labs.qml")
					}
				}
				TabButton {
					text: qsTr("Living")
					width: 100            
					icon.source: "qrc:/avble/resources/images/icons/living-room.svg"
					display: TabButton.TextUnderIcon            
					onClicked:{ 
						content_main.setSource("room/room.qml")
					}
				}
				TabButton {
					text: qsTr("Kitchen")
					width: 100
					icon.source: "qrc:/avble/resources/images/icons/kitchen-room.svg"
					display: TabButton.TextUnderIcon
					onClicked:{ 
						content_main.setSource("room/room.qml")
					}
				}
				TabButton {
					text: qsTr("Bedroom")
					width: 100
					icon.source: "qrc:/avble/resources/images/icons/bedroom.svg"
					display: TabButton.TextUnderIcon
					onClicked:{ 
						content_main.setSource("room/room.qml")
					}
				}
				TabButton {
					text: qsTr("Garden")
					width: 100
					icon.source: "qrc:/avble/resources/images/icons/garden.svg"
					display: TabButton.TextUnderIcon
					onClicked:{ 
						content_main.setSource("room/room.qml")
					}
				}
			}
		}
	}

	Loader{
		id: content_main
		// anchors.fill: parent
		anchors{
			fill: parent
			topMargin: 5
			leftMargin: 20
			rightMargin: 20
		}

		//sourceComponent: home_devices
		source: "dashboard.qml"
		asynchronous: true

		onLoaded: {
			console.log("[content_main][onLoaded] is called.")
		}
	}

	Drawer {
		id: drawer
		y: toolbar_.height
		width: 200
		height: root.height - toolbar_.height
		background: Rectangle{
			color: toolbar_.background.color
		}

		Column {
			anchors.fill: parent
			// topMargin: 50

			// Text{
			//     text: qsTr("Dashboard")
			//     width: parent.width
			// }

			ItemDelegate {
				text: qsTr("Dashboard")
				width: parent.width
				icon.source: "qrc:/avble/resources/images/icons/dashboard.svg"
				// color: "white"
				onClicked: {
					//stackView.push("Page1Form.ui.qml")
					content_main.setSource("dashboard.qml")
					drawer.close()
				}
			}
			ItemDelegate {
				text: qsTr("Lighting")
				width: parent.width
				icon.source: "qrc:/avble/resources/images/icons/lighting.svg"
				// color: "white"
				onClicked: {
					//stackView.push("Page2Form.ui.qml")
					content_main.setSource("home_lights.qml")
					drawer.close()
				}
			}

			ItemDelegate {
				text: qsTr("Switch")
				width: parent.width
				icon.source: "qrc:/avble/resources/images/icons/switch.svg"
				// color: "white"
				onClicked: {
					//stackView.push("Page2Form.ui.qml")
					content_main.setSource("home_switches.qml")
					drawer.close()
				}
			}

			ItemDelegate {
				text: qsTr("Sensor")
				width: parent.width
				icon.source: "qrc:/avble/resources/images/icons/sensor.svg"
				// color: "white"
				onClicked: {
					content_main.setSource("home_sensors.qml")
					drawer.close()
				}
			}

			ItemDelegate {
				text: qsTr("HVAC")
				width: parent.width
				icon.source: "qrc:/avble/resources/images/icons/air-conditioning.svg"
				onClicked: {
					content_main.setSource("home_air_conditioning.qml")
					drawer.close()
				}
			}

			ItemDelegate {
				text: qsTr("Camera")
				width: parent.width
				icon.source: "qrc:/avble/resources/images/icons/cctv.svg"
				// color: "white"
				onClicked: {
					//stackView.push("Page2Form.ui.qml")
					content_main.setSource("home_cameras.qml")
					drawer.close()
				}
			}

			ItemDelegate {
				text: qsTr("Automation")
				width: parent.width
				icon.source: "qrc:/avble/resources/images/icons/automation.svg"
				// color: "white"
				onClicked: {
					content_main.setSource("home_automation.qml")
					drawer.close()
				}
			}

			ItemDelegate {
				text: qsTr("AI Agent")
				width: parent.width
				icon.source: "qrc:/avble/resources/images/icons/ai.svg"
				// color: "white"
				onClicked: {
					content_main.setSource("home_ai_agent.qml")
					drawer.close()
				}
			}

			ItemDelegate {
				text: qsTr("Settings")
				width: parent.width
				icon.source: "qrc:/avble/resources/images/icons/settings.svg"
				// color: "white"
				onClicked: {
					//stackView.push("Page2Form.ui.qml")
					content_main.setSource("home_setting.qml")
					drawer.close()
				}
			}
		}
	}

}

