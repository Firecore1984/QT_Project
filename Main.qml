import QtQuick
import QtQuick.Window



Window {
    //property int MinimumWidth : 300 // Enabling this line and the one below will trow ninja: build stopped: subcommand failed.
    width: 1000
    height: 600
    //minimumWidth: MinimumWidth
    visible: true
    title: qsTr("Hello World")


    Row {
        id : row1
            Rectangle
            // first rectangle
            {
            id : rect1
            //property int MaxWidth: 50
            x: 0
            y: 0
            width : 50
            height: 50

            color: "red"
            Text {
                width: parent.width
                id: rect1_text
                text: qsTr("Text1234567890")
                wrapMode: Text.Wrap
                elide: Text.ElideRight
            }
            }

            Rectangle
            // second rectangle
            {
            id : rect2
            anchors.top : rect1.bottom

            width : 50
            height: 50
            color: "blue"

            Text {
                id: rect2_text
                width : parent.width + 10 // by adding px to the width, it will first aligh it to the right and then use + 10 pixels to move it to the alignment-> in this case right
                text: qsTr("Text in second rectangle")
                horizontalAlignment: Text.AlignLeft // aligns the text to the right
                verticalAlignment: Text.AlignHCenter // NOT WORKING ?? Expectation is to align Bottom on vertical alignment ??
                wrapMode: Text.WordWrap
                maximumLineCount: 2 // enables writing of the text only to 2 lines
                elide: Text.ElideRight //if the text is not fitting and without WordWrap, it will truncate the text in the right part - same for left
                font.bold: true
                font.italic: true
               }
            }

            Rectangle
            // third rectangle
            {
            id : rect3
            x:100

            width : 50
            height: 50
            color: "yellow"

            Text {
                id: rect3_text
                width : parent.width
                text: qsTr("Text in third rectangle")
                wrapMode: Text.WordWrap
                elide: Text.ElideRight
                font.family: Georgia
            }

            }

        Image
        {
         z : 0
         width : 600
         height: 400
         id : background
         source: "Images/Car_Image.jpeg"
         scale: 0.8
         rotation : 90 // rotation is in degree's
        }
    }



}
