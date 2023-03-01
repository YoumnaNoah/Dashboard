import QtQuick 2.0
import QtQml.Models 2.12
import QtQml 2.12
ListModel {
    id: vehicleConfMod

    ListElement {
        name: "engineRPM"
        value: 8000
        unit: ""
    }
    ListElement {
        name: "upshiftRPM"
        value: 3000
        unit: ""
    }
    ListElement {
        name: "driveRatio"
        value: 3.4
        unit: ""
    }
    ListElement {
        name: "tyreDiameter"
        value: 680
        unit: "mm"
    }
    ListElement {
        name: "firstGear"
        value: 2.7
        unit: ""
    }
    ListElement {
        name: "secondGear"
        value: 2.1
        unit: ""
    }

    ListElement {
        name: "threeGear"
        value: 1.5
        unit: ""
    }
    ListElement {
        name: "fourGear"
        value: 1
        unit: ""
    }
    ListElement {
        name: "fiveGear"
        value: 0.85
        unit: ""
    }
    ListElement {
        name: "sixGear"
        value: 0.6
        unit: ""
    }

    function refreshProperties() {
        for (var i=0; i < vehicleConfModel.count; i++)
        {
            vehicleConfModel.setProperty(i,"value", engineConfigCPP.getEngineProperty(vehicleConfModel.get(i).name));
        }
    }
    Component.objectName: {
        refreshProperties();
    }
}
