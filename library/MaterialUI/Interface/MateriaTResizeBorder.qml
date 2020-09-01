import QtQuick 2.7

Rectangle {
    id: root
    color: "transparent"
    border.width: 4
    border.color: "transparent"  // 边框颜色透明设置
    width: parent.width
    height: parent.height
    property var control: parent
    property var minimumWidth: 0
    property var minimumHeight: 0
    MaterialTDragRect {
        posType: posLeftTop
        onPosChange: {
            //不要简化这个判断条件，至少让以后维护的人能看懂。化简过后我自己都看不懂了。
            if (control.x + xOffset < control.x + control.width)
                control.x += xOffset;
            if (control.y + yOffset < control.y + control.height)
                control.y += yOffset;
            if (control.width - xOffset > minimumWidth )
                control.width-= xOffset;
            if (control.height -yOffset > minimumHeight)
                control.height -= yOffset;
            console.log(minimumWidth);
            console.log(minimumHeight);
        }
    }
    MaterialTDragRect {
        posType: posMidTop
        x: (parent.width - width) / 2
        onPosChange: {
            if (control.y + yOffset < control.y + control.height)
                control.y += yOffset;
            if (control.height - yOffset > minimumHeight)
                control.height -= yOffset;
            console.log("posMidTop 2");
        }
    }
    MaterialTDragRect {
        posType: posRightTop
        x: parent.width - width
        onPosChange: {
            //向左拖动时，xOffset为负数
            if (control.width + xOffset > minimumWidth)
                control.width += xOffset;
            if (control.height - yOffset > minimumHeight)
                control.height -= yOffset;
            if (control.y + yOffset < control.y + control.height)
                control.y += yOffset;
            console.log("posRightTop 3");
        }
    }
    MaterialTDragRect {
        posType: posLeftMid
        y: (parent.height - height) / 2
        onPosChange: {
            if (control.x + xOffset < control.x + control.width)
                control.x += xOffset;
            if (control.width - xOffset > minimumWidth)
                control.width-= xOffset;
            console.log("posLeftMid 4");
        }
    }
    MaterialTDragRect {
        posType: posRightMid
        x: parent.width - width
        y: (parent.height - height) / 2
        onPosChange: {
            if (control.width + xOffset > minimumWidth)
                control.width += xOffset;
            console.log("posRightMid 5");
        }
    }
    MaterialTDragRect {
        posType: posLeftBottom
        y: parent.height - height
        onPosChange: {
            if (control.x + xOffset < control.x + control.width)
                control.x += xOffset;
            if (control.width - xOffset > minimumWidth)
                control.width-= xOffset;
            if (control.height + yOffset > minimumHeight)
                control.height += yOffset;
            console.log("posLeftBottom 6");
        }
    }
    MaterialTDragRect {
        posType: posMidBottom
        x: (parent.width - width) / 2
        y: parent.height - height
        onPosChange: {
            if (control.height + yOffset > minimumWidth)
                control.height += yOffset;
            console.log("posMidBottom 7");
        }
    }
    MaterialTDragRect {
        posType: posRightBottom
        x: parent.width - width
        y: parent.height - height
        onPosChange: {
            if (control.width + xOffset > minimumWidth)
                control.width += xOffset;
            if (control.height + yOffset > minimumHeight)
                control.height += yOffset;
            console.log("posRightBottom 8");
        }
    }
}
