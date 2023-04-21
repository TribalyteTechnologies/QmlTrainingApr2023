import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 400
    height: 400
    visible: true
    color: "lightGreen"
    title: qsTr("Change cpp variable")

    TextField {
        id: field1
        width: 300
        placeholderText: qsTr("Enter a name")
        anchors {
            top: parent.top
            horizontalCenter: parent.horizontalCenter
            topMargin: 50
        }
    }

    Button {
        id: button1
        text: "Save name"
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: field1.bottom
            topMargin: 50
        }
        onClicked: aliasNameHandler.nameSaved = field1.text
        //onClicked: aliasNameHandler.setName(field1.text)
    }

    Text {
        id: text1
        text: aliasNameHandler.nameSaved
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: button1.bottom
            topMargin: 50
        }
    }
}
