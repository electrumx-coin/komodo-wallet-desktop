import QtQuick 2.12
import atomicQtDesign 1.0
import QtQuick.Layouts 1.3
import Qt.SafeRenderer 1.1
import QtQuick.Studio.Effects 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.12

Item {
    id: root

    Image {
        id: image1
        x: 0
        y: 0
        antialiasing: true
        scale: 0.5
        fillMode: Image.PreserveAspectFit
        source: "assets/komodo-icon.png"
    }

    ColumnLayout {
        id: window_layout
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        transformOrigin: Item.Center
        spacing: 20

        Image {
            id: image
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            fillMode: Image.PreserveAspectFit
            source: "assets/setup-wallet-restore-2.svg"
        }

        PaneWithTitle {
            title: "Recovery"
            inside: ColumnLayout {
                id: rows

                TextFieldWithTitle {
                    id: seed_input
                    title: qsTr("Seed")
                }

                TextFieldWithTitle {
                    id: password_input
                    title: qsTr("Password")
                }

                RowLayout {
                    id: columns

                    Button {
                        id: back_button
                        text: qsTr("Back")
                    }

                    Button {
                        id: confirm_button
                        text: qsTr("Confirm")
                    }
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
