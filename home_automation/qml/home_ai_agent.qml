import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: chat_root

    anchors.fill: parent
    anchors.topMargin: 10


    ColumnLayout {
        anchors.fill: parent

        RowLayout {
            id: inputMsg
            anchors.top: parent.top
            anchors.left: parent.left
            width: parent.width
            // opacity: 0.6
            // radius: 5

            TextField {
                id: textPrompt
                placeholderText: qsTr("your message")
                Layout.fillWidth: true

            }
            Button {
                id: buttonSend
                text: qsTr("Send")
                onClicked: {
                    console.log("[Button][Send] is clicked.");
                    llmWrapper.process_prompt(textPrompt.text)
                }
            }
        }
        Rectangle {
            id: textFieldMsg
            anchors.top: inputMsg.bottom
            anchors.topMargin: 15
            anchors.left: inputMsg.left
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
            anchors.right: parent.right
            width: parent.width
            // onAccepted: buttonConnect.clicked()
            opacity: 0.6
            radius: 5
            Text {
                anchors.fill: parent
                text: "**Hello** *World!*"
            }
        }
    }
}
