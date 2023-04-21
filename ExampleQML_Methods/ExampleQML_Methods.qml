import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    color: "lightGreen"
    title: qsTr("Methods Example")

    property int exampleValue: 0

    Text {
        id: label
        text: exampleValue
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 150
    }

    Button {
        text: "Increase"
        onClicked: increase()
        anchors.horizontalCenter: label.horizontalCenter
        anchors.top: label.bottom
        anchors.topMargin: 50
    }

    function increase() {
        exampleValue++
    }
}
