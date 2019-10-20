import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 1.4
import io.qt.examples.backend 1.0


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    BackEnd {
        id: backend
    }

    Rectangle {
        id: page
        anchors.fill: parent

        Grid {
            id: colorPicker
            x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
            rows: 2; columns: 3; spacing: 3

            Cell { cellColor: "red"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "green"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "blue"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "yellow"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "steelblue"; onClicked: helloText.color = cellColor }
            Cell { cellColor: "black"; onClicked: helloText.color = cellColor }

        }
    }
}
