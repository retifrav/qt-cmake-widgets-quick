import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 500
    minimumWidth: 200
    height: 300
    minimumHeight: 100
    title: "CMake and Qt Quick"

    ColumnLayout {
        anchors.fill: parent

        Text {
            id: txt
            Layout.fillWidth: true
            Layout.fillHeight: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: "ololo"
            font.family: "Verdana"
            font.pointSize: 30
            wrapMode: Text.WordWrap
        }

        Button {
            Layout.fillWidth: true
            text: "some button"
            onClicked: {
                txt.text = "Some random number: ".concat(Math.floor((Math.random() * 100) + 1))
            }
        }
    }
}
