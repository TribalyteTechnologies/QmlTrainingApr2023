import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 600
    visible: true
    color: "green"
    title: qsTr("Mouse Interaction")

    Rectangle {
        id: rectangle1
        width: 200
        height: 200
        color: "black"

        anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: 50
        }

        MouseArea {
            anchors.fill: parent
            onClicked: rectangle1.color = "white"
        }
    }

    Rectangle {
        id: rectangle2
        width: 200
        height: 200
        color: "yellow"

        anchors {
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
            bottomMargin: 50
        }

        MouseArea {
            anchors.fill: parent
            onPressed: rectangle2.color="orange"
            onReleased: rectangle2.color="yellow"
        }

    }
}
