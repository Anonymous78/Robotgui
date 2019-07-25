import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12

Page {
    id: page1
    title: qsTr("Splash")

    Text {
        id: element
        width: 140
        height: 16
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("Robot Launch pad")
        font.family: "Times New Roman"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 30

        Button {
            id: button
            x: 20
            y: 43
            text: qsTr("Launch")
            font.weight: Font.Thin
            font.pointSize: 13
            font.family: "Times New Roman"
            spacing: -1
            focusPolicy: Qt.NoFocus
            Material.background: Material.Teal
            onClicked: stackView.push("MapForm.ui.qml", replace)
        }
    }

}