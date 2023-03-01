import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.4

Window {
    id: window
    width: 1000
    height: 1000
    visible: true
    title: qsTr("Automobile Dashboard")

    Rectangle{
        width: 1000
        height: 1000
        color: "#00273b"
        anchors.fill: parent

    }

    Column {
        id:leftPanel
        width: 200
        height: 58
        anchors.verticalCenter: parent.verticalCenter
        anchors.top: parent.top
        anchors.topMargin: 471
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 20


        Button {
            id: simButton
            text: "Dashboard Simulation"
            anchors.fill: parent

            onClicked: {
                centralPanelLoader.source = "DashboardSimulator.qml"
            }
        }
    }

    Loader {
        id: centralPanelLoader
        anchors.centerIn: parent
        width: parent.width
    }

}

