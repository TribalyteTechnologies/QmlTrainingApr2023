import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Window {
    visible: true
    width: windowWidth
    height: windowHeight
    title: "Tribalyte"
    minimumHeight: 600
    minimumWidth: 800
    property int buttonTopMargin: 20
    property int windowWidth: 1400
    property int windowHeight: 800
    property int buttonsWidth: 100
    property int buttonsHeight: 40
    property string leftColor: "#afd600"
    property string rightColor: "#4287f5"
    property string hoverColor: "#ffffff"
    property string textColor: "#ffffff"

    Rectangle {
        id: left
        width: parent.width / 2
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        color: leftColor
        Image {
            id: tech
            scale: 0.75
            source: "./tribalyte-tech-blanco.png"
            anchors.centerIn: parent
        }
        Text {
            id: techdesc
            color: textColor
            width: 160
            text: qsTr("INGENIERÍA DE SOFTWARE\nDESARROLLO DE APLICACIONES A MEDIDA\nCONSULTORÍA Y FORMACIÓN")
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: tech.horizontalCenter
            anchors.top: tech.bottom
        }
        Rectangle {
            Text {
                id: buttonTechText
                text: qsTr("Más info")
                color: textColor
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
            }
            MouseArea {
                hoverEnabled: true
                onEntered: onHover()
                anchors.fill: parent
                onExited: exitHover()
                onClicked: console.log("Tech clicked!")
                function onHover() {
                    buttonTech.color = hoverColor
                    buttonTechText.color = left.color
                    buttonTech.border.width = 0
                }
                function exitHover() {
                    buttonTech.color = left.color
                    buttonTechText.color = textColor
                    buttonTech.border.width = 1
                }
            }
            id: buttonTech
            anchors.top: techdesc.bottom;
            anchors.topMargin: buttonTopMargin
            anchors.horizontalCenter: tech.horizontalCenter;
            implicitWidth: buttonsWidth
            implicitHeight: buttonsHeight
            color: "#00000000"
            border.width: 1
            border.color: hoverColor
        }
    }

    Rectangle {
        id: right
        width: parent.width / 2
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: left.right
        color: rightColor
        Image {
            id: ideas
            height: tech.height
            scale: 0.75
            fillMode: Image.PreserveAspectFit
            source: "./Tribalyte-ideas-blanco.png"
            anchors.centerIn: parent
        }
        Text {
            id: ideasdesc
            color: textColor
            width: 160
            text: qsTr("PATENTES Y MODELOS DE UTILIDAD\nANÁLISIS DE PATENTABILIDAD\nVALORACIÓN DE PATENTES")
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: ideas.horizontalCenter
            anchors.top: ideas.bottom
        }
        Rectangle {
            Text {
                id: buttonIdeasText
                text: qsTr("Más info")
                color: textColor
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
            }
            MouseArea {
                hoverEnabled: true
                onEntered: onHover()
                anchors.fill: parent
                onExited: exitHover()
                onClicked: console.log("Ideas clicked!")
                function onHover() {
                    buttonIdeas.color = hoverColor
                    buttonIdeasText.color = right.color
                    buttonIdeas.border.width = 0
                }
                function exitHover() {
                    buttonIdeas.color = right.color
                    buttonIdeasText.color = textColor
                    buttonIdeas.border.width = 1
                }
            }
            id: buttonIdeas
            anchors.top: ideasdesc.bottom;
            anchors.topMargin: buttonTopMargin
            anchors.horizontalCenter: ideas.horizontalCenter;
            implicitWidth: buttonsWidth
            implicitHeight: buttonsHeight
            color: "#00000000"
            border.width: 1
            border.color: hoverColor
        }
    }
}
