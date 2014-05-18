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

Page {
    SilicaFlickable {
        anchors.fill: parent
        id: gameArea

        ScoreArea {
            id: score
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 10
            height: 200
            y: 5
        }

        PullDownMenu {
            MenuItem {
                text: qsTr("New game")
                onClicked: newgame.open()
            }

            MenuItem {
                text: qsTr("About")
                onClicked: about.open()
            }
        }
    }

    Board {
        id: board
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 150
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 10

        onMerged: score.addScore(value, grid_size)
        onEnd: loseScreen.show()

        SwipeArea {
            id: swipe
            anchors.fill: parent

            onSwipeUp: board.moveTilesUp()
            onSwipeDown: board.moveTilesDown()
            onSwipeLeft: board.moveTilesLeft()
            onSwipeRight: board.moveTilesRight()
        }
    }


    Dialog {
        id: newgame

        DialogHeader {
            title: qsTr("Create a new game")
        }

        Slider {
            anchors.centerIn: parent
            id: slider
            label: qsTr("Grid size")
            minimumValue: 2
            maximumValue: 10
            value: 4
            stepSize: 1
            valueText: value
            width: parent.width
        }

        onAccepted: {
            mainPage.newGameRequest(slider.value)
        }
    }

    About {
        id: about
        version: "v.0.3.3"
        height: parent.height
        width: parent.width
    }

    LosePage {
        id: loseScreen
        width: gameArea.width
        height: gameArea.height
        y: - height
        color: "#80000000"

        onNewGameClicked: {
            hide()
            newGameRequest()
        }
    }


    function newGameRequest(size) {
        score.reset(size)
        board.newGame(size)
    }
}
