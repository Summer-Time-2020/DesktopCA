import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0
import "qrc:/MaterialUI/Interface/"

Window {
    id : root
    visible: true
    width: 800
    height: 600
    title: qsTr("Desktop CA  ")

    minimumWidth: 400
    minimumHeight: 300

    Rectangle {
        id: mainTitle      //标题栏
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height:0
        color: "#CDCEC0"

        //MaterialButton{
        //    height:parent.height
        //    width:50
        //    textColor : "#000"
        //    text : "Help"
         //   backgroundColor : "#CDCEC0"
        //    textSize :13
        //}
    }

    Rectangle {
        id: upTitle      //上栏
        anchors.right: parent.right
        height:20
        width: root.width - leftTitle.width
        y : mainTitle.y + mainTitle.height
        color: "#333333"
    }

    Rectangle {
        id: leftTitle          //左栏
        anchors.left: parent.left
        height: parent.height - mainTitle.height
        width: 70
        y : mainTitle.height
        color: "#333333"

        MaterialButtomImage{
            id : requestButton
            img_src : "/image/request.png"
            btn_txt : "证书请求"
            clr_exit : "#333333"
            clr_enter : "#666666"
            clr_click :　"#82A3B2"
            color : "#333333"
            clr_text : "#ffffff"
            width : parent.width
            height :parent.width
            anchors.top: parent.top
            qrcLocation : "qrc:/CertRequest/CertRequest.qml"
        }
        MaterialButtomImage{
            id : manageButton
            img_src : "/image/manage.png"
            btn_txt : "证书管理"
            clr_exit : "#333333"
            clr_enter : "#666666"
            clr_click :　"#82A3B2"
            color : "#333333"
            clr_text : "#ffffff"
            width : parent.width
            height :parent.width
            anchors.top: requestButton.bottom
        }
        MaterialButtomImage{
            id : systenmButton
            img_src : "/image/system.png"
            btn_txt : "配置"
            clr_exit : "#333333"
            clr_enter : "#666666"
            clr_click :　"#82A3B2"
            clr_text : "#ffffff"
            color : "#333333"
            width : parent.width
            height :parent.width
            anchors.top: manageButton.bottom
        }

        MaterialButtomImage{
            id : helpButton
            img_src : "/image/help.png"
            btn_txt : "帮助"
            clr_exit : "#333333"
            clr_enter : "#666666"
            clr_click :　"#82A3B2"
            clr_text : "#ffffff"
            color : "#333333"
            width : parent.width
            height :parent.width
            anchors.top: systenmButton.bottom
            qrcLocation : "qrc:/Help/Help.qml"
        }
    }

    Rectangle{
        id : mainCanvas
        width: upTitle.width
        height: leftTitle.height

        anchors.left: leftTitle.right
        anchors.top : upTitle.bottom
        anchors.right : root.right
        anchors.bottom: root.bottom
        color: "#ffff33"

        Loader{
           source: "qrc:/CertRequest/CertRequest.qml"
           id: mainCanvasId
        }
    }


}


