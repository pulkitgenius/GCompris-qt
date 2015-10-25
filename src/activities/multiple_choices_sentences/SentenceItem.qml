/* GCompris - SentenceItem.qml
 *
 * Copyright (C) 2015 Pulkit Gupta <pulkitgenius@gmail.com>
 *
 * Authors:
 *   Pulkit Gupta <pulkitgenius@gmail.com>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick 2.1
import GCompris 1.0
import "../../core"
import "multiple_choices_sentences.js" as Activity

import "componentCreation.js" as MyScript

Item {
    id: displayText

    property variant sentenceSegments
    property double backGroundWidth
    property double flowXPosition
    property double flowYPosition

    backGroundWidth: parent.width - x - 100
    flowXPosition: parent.width / 10
    flowYPosition: parent.height / 5


    Component.onCompleted: {
        console.log("mySentenceItems completed -----------------------------------------------------------------------------")
        Activity.start(mySentenceItems)
    }


    // Add here the QML items you need to access in javascript
    QtObject {
        id: mySentenceItems

        property alias myFlow1: myFlow1
    }




 /*   // Add here the QML items you need to access in javascript
    QtObject {
        id: items
        property alias background: background
        property alias bar: bar
        property alias bonus: bonus
        property alias availablePieces: availablePieces
        property alias backgroundPiecesModel: backgroundPiecesModel
        property alias file: file
        property alias grid: grid
        property alias backgroundImage: backgroundImage
        property alias leftWidget: leftWidget
        property alias instruction: instruction
        property alias toolTip: toolTip
        property alias score: score
        property alias dataset: dataset
    }    */


    Flow {
        id: myFlow1

        x: flowXPosition
        y: flowYPosition
        width: backGroundWidth
        anchors.margins: 4
        spacing: 20

        Repeater {
            model: sentenceSegments

            WordItem { text: modelData[1]}

           /* WordItem { text: "---"}
            WordItem { text: modelData[1]}
            WordItem { text: "///"}*/
        }
    }
}



