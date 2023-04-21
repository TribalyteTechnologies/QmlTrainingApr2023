import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button {
        id: button1
        text: "Click to call QmlConnection Cpp Function"
        anchors.centerIn: parent
        onClicked: classQmlConnection.callFromQml()
    }
}
