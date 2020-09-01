import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0
import "qrc:/MaterialUI/Interface/"

Window {
    id : root2
    visible: true
    width: 640
    height: 480

    flags:Qt.FramelessWindowHint   //隐藏外框

    MateriaTMoveArea {    // 窗口可拖动设置
        anchors.fill: parent
        control: root
    }

   MateriaTResizeBorder { // 窗口可变大小设置
       anchors.fill: parent
       control: root2
       minimumWidth: 500
       minimumHeight: 400
   }

    Rectangle {
        id: mainTitle                       //创建标题栏
        anchors.top: parent.top             //对标题栏定位
        anchors.left: parent.left
        anchors.right: parent.right
        height: 25
        color: "#000"
    }
}


