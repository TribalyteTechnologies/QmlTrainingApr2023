import QtQuick 2.0

Rectangle {
    property alias nameExpert: nameExpert.text
    property alias studies: studies.text
    property alias expertIn: expertIn.text
    property alias detail: detail.text

    property int widthImage: 165
    property int heightImage: 200
    property string expertRectangleColor: "light gray"
    property int expertRectangleBorder: 2
    property string expertRectangleBorderColor: "white"
    property int marginDefault: 25
    property string iconImage: "icon.png"

    id: expertRectangle
    color: expertRectangleColor
    anchors.top: header.bottom
    anchors.bottom: parent.bottom
    border.width: expertRectangleBorder
    border.color: expertRectangleBorderColor

    BorderImage {
        id: imageExpert
        source: iconImage
        width: widthImage
        height: heightImage
        anchors.top: parent.top
        anchors.topMargin: marginDefault
        anchors.horizontalCenter: parent.horizontalCenter
        Rectangle {
            anchors.fill: parent
            z: -1
            border.width: 0
            color: 'transparent'
        }
    }

    Text {
        id: nameExpert
        color: "Black"
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: imageExpert.bottom
        anchors.topMargin: marginDefault
    }

    Text {
        id: studies
        color: "Black"
        horizontalAlignment: Text.AlignLeft
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: nameExpert.bottom
        anchors.topMargin: marginDefault
    }

    Text {
        id: expertIn
        color: "Black"
        horizontalAlignment: Text.AlignLeft
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: studies.bottom
        anchors.topMargin: marginDefault
    }

    Text {
        id: detail
        color: "Black"
        horizontalAlignment: Text.AlignJustify
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: expertIn.bottom
        anchors.topMargin: marginDefault
    }

}
