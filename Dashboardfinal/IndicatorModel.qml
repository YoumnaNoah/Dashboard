import QtQuick 2.0
import QtQml.Models 2.12
import QtQml 2.12

QtObject {
    id: indicatorModel



    property ListModel rightIcons: ListModel {
        id: rightIconModel

        ListElement {
            name: "battery"
            src: "images/battery.svg"
            isvisible: false
        }
        ListElement {
            name: "gasoline"
            src: "images/gasoline.svg"
            isvisible: false
        }
        ListElement {
            name: "settings"
            src: "images/settings.svg"
            isvisible: false
        }
        ListElement {
            name: "enginefault"
            src: "images/enginefault.svg"
            isvisible: false
        }
    }

    function getIconVisibility(name)
    {

        for (var i=0; i < rightIcons.count; i++)
        {
            if(rightIcons.get(i).name === name)
            {
                return rightIcons.get(i).isvisible;
            }
        }
    }

    function setIconVisibilty( name, value)
    {

        for (var i=0; i < rightIcons.count; i++)
        {
            if(rightIcons.get(i).name === name)
            {
                rightIcons.setProperty(i,"isvisible",value)
                return;
            }
        }
    }


}
