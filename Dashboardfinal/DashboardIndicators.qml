import QtQuick 2.0

Row {
    id: rowIndicators
    spacing: height * 0.2

    property alias iconModel: iconRep.model

    Repeater {
        id : iconRep

        Rectangle{
            height: parent.height
            width: height
            color: "#00273b"
            Image {
                id: iconImage
                anchors.fill: parent
                source: src
                visible: isvisible
            }
        }
    }

}
