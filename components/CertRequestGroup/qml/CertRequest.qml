import QtQuick 2.7
import QtQuick.Controls 1.4
import "qrc:/MaterialUI/"
import "qrc:/MaterialUI/Interface/"
import CertRequest 1.0

Rectangle {
    id: loadFiles   //文件导入
    anchors.top: upTitle.bottom
    width: mainCanvas.width
    height: mainCanvas.height * 0.4

    color : "#ffffff"

    Image {
        anchors.verticalCenterOffset: -loadFiles.height * 0.1
        width: loadFiles.width * 0.07
        height: loadFiles.height * 0.2
        source: "qrc:/image/file.png"
        //fillMode: Image.PreserveAspectFit
        anchors.horizontalCenter: loadFiles.horizontalCenter
        anchors.verticalCenter: loadFiles.verticalCenter
    }

    MaterialLabel {
        text:"将证书请求文件（.csr）拖到此处"
        anchors.verticalCenterOffset: loadFiles.height * 0.2
        //anchors.horizontalCenterOffset: 40
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}
