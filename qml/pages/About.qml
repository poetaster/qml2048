/**
 * qml2048, 2048 Game
 *
 * Copyright (C) 2014 Fabien Proriol
 *
 * This file is part of qml2048.
 *
 * qml2048 is free software: you can redistribute it and/or modify it under the terms of the
 * GNU General Public License as published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * qml2048 is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * See the GNU General Public License for more details. You should have received a copy of the GNU
 * General Public License along with CarBudget. If not, see <http://www.gnu.org/licenses/>.
 *
 * Authors: Fabien Proriol
 */


import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {

    property string version: "<empty>"

    Column {

        DialogHeader {
            title: qsTr("About")
        }
    Label {
        x: Theme.paddingLarge
        text: qsTr("License: GPLv3")
        font.pixelSize: Theme.fontSizeSmall
    }
    Label {
        x: Theme.paddingLarge
        text: qsTr("Created by condo4 (Fabien Proriol)")
        font.pixelSize: Theme.fontSizeSmall
    }

    Label {
        x: Theme.paddingLarge
        text: qsTr("Based on the port for Harmattan by raandoom")
        font.pixelSize: Theme.fontSizeExtraSmall
    }

    Button {
       id: homepage
       anchors.horizontalCenter: parent.horizontalCenter
       text: "<a href=\"https://github.com/condo4/qml2048tr\">Sourcecode on Github</a>"
       onClicked: {
           Qt.openUrlExternally("https://github.com/condo4/qml2048")
       }
    }
}
}
