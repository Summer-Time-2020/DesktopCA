import QtQuick 2.7
import QtQuick.Controls 1.4
import "qrc:/MaterialUI/Interface/"
import CertRequest 1.0

Item {
    id: helpItem
    width: 620
    height: 540

    CertRequestManage {
        id: certrequestManage
    }

    MaterialLabel {
        x: 162
        y: 170
        text:
"欢迎使用Desktop CA，这是一个基于Qt开发的开源小工具包。
包含了在开发程序（尤其是Qt程序）时，需要的各种小功能。
本工具使用 QML(界面) 和 C++(逻辑) 开发，源码均已开源在了GitHub上。
若要浏览更详细的介绍，也可以前往GitHub"
        anchors.verticalCenterOffset: -68
        anchors.horizontalCenterOffset: 40
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    MaterialButton {
        x: 254
        y: 278
        width: 120
        height: 40
        text: "前往GitHub"
        anchors.verticalCenterOffset: 53
        anchors.horizontalCenterOffset: -45
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        onClicked: {
            certrequestManage.openGitHubLink();
        }
    }

    MaterialButton {
        //x: 254
        //y: 278
       // //width: 120
        //height: 40
        text: "下载最新版本"
        anchors.verticalCenterOffset: 53
        anchors.horizontalCenterOffset: 150
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        onClicked: {
            certrequestManage.openLatestVersionDownloadLink();
        }
    }
}
