import QtQuick
import QtQuick.Controls.Basic
ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "HelloApp"
    property string currTime: "00:00:00"
    property QtObject backend
    Rectangle {
        anchors.fill: parent
        Image {
            sourceSize.width: parent.width
            sourceSize.height: parent.height
            source: "./images/playas.jpg"
            fillMode: Image.PreserveAspectCrop
        }
        Rectangle {
            anchors {
                    bottom: parent.bottom
                    bottomMargin: 50
                    left: parent.left
                    leftMargin: 12
                }
            Text {
                text: currTime
                font.pixelSize: 24
                color: "white"
            }
        }
        Connections {
            target: backend

            function onUpdated(msg) {
                currTime = msg;
            }
        }
    }
}