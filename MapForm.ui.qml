import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12

Page {
    id: page2
    title: qsTr("Map")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight
        Material.primary: Material.Orange

        ToolButton {
            id: toolButton
            text: "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: drawer.open()
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

     Image {
        id: map
        x: 84
        y: 48
        width: 290
        height: 533
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        source: "assets/map.png"
        fillMode: Image.PreserveAspectFit
        property int duration: 4000
        property bool running: false

        Image {
            id: image1
            x: 231
            y: 38
            width: 51
            height: 39
            anchors.right: parent.right
            anchors.rightMargin: 8
            fillMode: Image.PreserveAspectFit
            source: "assets/robot icon.png"
            NumberAnimation on y {
                id: anim
                to: movement.ycoord
                duration: map.duration
                running: map.running
            }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: map.running = true
        }
    }

}