import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 800
    height: 800
    visible: true
    title: qsTr("Keyboard Interaction")


    Image {
        id: logo
        anchors.centerIn: parent
        source: "Tribalyte.png"
        focus: true

        Keys.onLeftPressed:
            logo.rotation = (logo.rotation - 10) % 360
        Keys.onRightPressed:
            logo.rotation = (logo.rotation + 10) % 360
    }
}
