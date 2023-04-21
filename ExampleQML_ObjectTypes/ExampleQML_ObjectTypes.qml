import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Window {
    id: mainWindow
    visible: true
    width: windowWidth
    height: windowHeight
    title: "Tribalyte Experts"
    minimumHeight: 600
    maximumHeight: 600
    minimumWidth: 1200
    maximumWidth: 1800

    property int headerHeight: 100
    property int windowWidth: 1400
    property int windowHeight: 600
    property int numberOfExperts: 3

    Component {
        id: headerComponent
        Rectangle {
            id: headerSpace
            height: headerHeight
            color: "#afd600"
            anchors.left: parent.left
            anchors.right: parent.right
            Image {
                id: headerImage
                scale: 0.25
                source: "tribalyte-tech-blanco.png"
                anchors.centerIn: parent
            }
        }

    }

    Component.onCompleted: {
        headerComponent.createObject(mainWindow, {"y": 0})
        id: header
    }

    Experts {
        id: expert1
        width: mainWindow.width / numberOfExperts
        height: mainWindow.height - headerHeight
        nameExpert: "Expert 1"
        studies: "Software Engineer"
        expertIn: "C | C++ | Shell Scripts | Qt | C#"
        detail: qsTr("I studied Computer Engineering. My experience is based\non software development in C/C++.\n\nMy goal is to learn new things in order to be able to apply\nthem to my day-to-day work.")
    }

    Experts {
        id: expert2
        width: mainWindow.width / numberOfExperts
        height: mainWindow.height - headerHeight
        anchors.left: expert1.right
        nameExpert: "Expert 2"
        studies: "Programmer Analyst"
        expertIn: "Web Services | Java | Spring | NodeJS | Databases"
        detail: qsTr("I am an expert in the development of web and API services\nin different technologies, languages, and backend frameworks.\n\nMy mission is to bring my experience in software development\nand contribute to the development of efficient and quality\nsoftware solutions.")
    }

    Experts {
        id: expert3
        width: mainWindow.width / numberOfExperts
        height: mainWindow.height - headerHeight
        anchors.left: expert2.right
        nameExpert: "Expert 3"
        studies: "Software Developer"
        expertIn: "C | C ++ | Python | PHP"
        detail: qsTr("I had studied systemical computing administration.\nI also have worked with Virtualization and Unix systems.\n\nMy main goal in Tribalyte is keep on enjoying my passion about\ntechnology and developing as a proffesional into technological\nnovelties.")
    }




}
