import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    width: 350
    height: 115
    title: qsTr("Binding")

    TextInput {
        id: title
        x: 50 ; y: 25
        text: qsTr("Hello World")
        font.family: "Helvetica"
        font.pixelSize: 50
    }

    Rectangle {
        x: 50 ; y: 80
        width: title.width
        height: 5
        color: "green"
    }
}
