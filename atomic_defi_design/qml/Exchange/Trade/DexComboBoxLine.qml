import QtQuick 2.14
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.14
import QtGraphicalEffects 1.0
import QtQuick.Controls.Universal 2.12

import "../../Components"
import "../../Constants"

RowLayout {
    id: root

    property int padding: 0
    property var details
    property color color: !details ? "white" : Style.getCoinColor(details.ticker)
    Behavior on color { ColorAnimation { duration: Style.animationDuration } }

    DefaultImage {
        id: icon
        source: General.coinIcon(ticker)
        Layout.preferredWidth: 32
        Layout.preferredHeight: Layout.preferredWidth
        Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
        Layout.leftMargin: padding
        Layout.topMargin: Layout.leftMargin
        Layout.bottomMargin: Layout.leftMargin

        ColumnLayout {
            anchors.left: parent.right
            anchors.leftMargin: 12
            anchors.verticalCenter: parent.verticalCenter

            DefaultText {
                text_value: API.app.settings_pg.empty_string + (!details ? "" :
                                `<font color="${root.color}"><b>${details.ticker}</b></font>&nbsp;&nbsp;&nbsp;<font color="${Style.colorText}">${details.name}</font>`)
                color: Style.colorText
                font.pixelSize: Style.textSizeSmall3
            }

            DefaultText {
                text_value: API.app.settings_pg.empty_string + (!details ? "" :
                                details.balance + "  (" + General.formatFiat("", details.main_currency_balance, API.app.settings_pg.current_currency) + ")")
                color: Style.colorText2
                font.pixelSize: Style.textSizeSmall2
            }
        }
    }
}
