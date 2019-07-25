import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12

ApplicationWindow {
    id: window
    height: 750
    width: 480
    visible: true
    title: qsTr("Robot")
    Material.theme: Material.Light

    StackView {
        id: stackView
        initialItem: "Splashpage.ui.qml"
        anchors.fill: parent
    }

    Drawer {
        id: drawer
        width: window.width * .33
        height: window.height

        Column {
            anchors.fill: parent
            
             ItemDelegate {
                text: qsTr ("Map")
                width: parent.width
                onClicked: {
                    stackView.push("MapForm.ui.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr ("Battery Status")
                width: parent.width
                onClicked: {
                    stackView.push("Battery.ui.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr ("Usage over time")
                width: parent.width
                onClicked: {
                    stackView.push("Poweruse.ui.qml")
                    drawer.close()
                }
            }
        }
    }
}