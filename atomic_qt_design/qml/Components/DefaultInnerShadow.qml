import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.0
import "../Constants"

InnerShadow {
    anchors.fill: parent
    source: parent
    cached: false
    horizontalOffset: 0.7
    verticalOffset: 0.7
    radius: 13
    samples: 32
    color: "#40000000"
    smooth: true
}
