import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12

Page {
    id: page4
    title: qsTr("Power Usage")

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
}