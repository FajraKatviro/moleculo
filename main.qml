import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtMultimedia 5.6

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Moleculo")

    Rectangle {
        anchors.fill: parent
        Button{
            anchors.centerIn: parent
            text: "PLAY"
            onClicked: sound.play()
        }
        SoundEffect{
            id: sound
            source: "moleculo.wav"
            volume: volumeSlider.value
        }
        Slider{
            id: volumeSlider
            anchors{
                left: parent.left
                right: parent.right
                bottom: parent.bottom
                margins: 50
            }
            maximumValue: 1.0
            minimumValue: 0.0
        }
    }
}
