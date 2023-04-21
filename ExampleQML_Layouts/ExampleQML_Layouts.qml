import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    color: "green"
    title: qsTr("Anchors Layouts Example")

    Rectangle {
        id: rectangleBlue
        color: "blue"
        width: 100
        height: 100
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }

    Rectangle {
        id: rectangleRed
        color: "red"
        width: 50
        height: 50
        anchors{
            right: parent.right
            left: parent.left
            bottom: rectangleBlue.top
        }
    }

    Rectangle {
        id: rectangleYellow
        color: "yellow"
        width: 100
        height: 100
        anchors{
            horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: rectangleOrange
        color: "orange"
        width: 100
        height: 100
        anchors.left: parent.left
        anchors.leftMargin: 50
    }

    Rectangle {
        id: rectanglePurple
        color: "purple"
        width: 100
        height: 100
        anchors.centerIn: parent
    }

    Rectangle {
        id: rectangleBrown
        color: "brown"
        anchors.fill: rectanglePurple
        anchors.margins: 20
    }
}
