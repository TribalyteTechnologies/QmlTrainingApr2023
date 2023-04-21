import QtQuick 2.6
import QtQuick.Window 2.2

Rectangle {
    width: 400
    height: 400
    color: "grey"

    Rectangle {
        color: "lightblue"
        x: 50;y: 50
        width: 300
        height: 150
        Rectangle {
            x: 50; y: 50
            width: 50; height: 50
            color: "white"
        }

    }
    Rectangle {
        color: "green"
        x: 50;y: 200
        width: 300
        height: 150

        Rectangle {
            x: 100; y: 50
            width: 150; height: 50
            color: "blue"
        }
    }
}
