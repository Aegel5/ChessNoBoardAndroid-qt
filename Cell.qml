import QtQuick 2.0
import QtQuick 2.12

Item {
    id: container
    property alias cellColor: rectangle.color
    signal clicked(color cellColor)

    width: 40; height: 25

    Rectangle {
        id: rectangle
        border.color: "black"
        border.width: 5
        anchors.fill: parent
        radius: 10
    }

    MouseArea {
        anchors.fill: parent
        onClicked: container.clicked(container.cellColor)
    }
}
