sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        exit1_method: function(oEvent) {
            // MessageToast.show("Custom handler invoked."); //last value it will take
            MessageToast.show("Custom exit button invoked by pp.");
           
            // window.location.href = "https://port33627-workspaces-ws-crf8t.us10.trial.applicationstudio.cloud.sap/";
            // window.location.href = "https://www.w3schools.com/js/", '_blank';
            window.open('https://support.wwf.org.uk/earth_hour/index.php?type=individual',
            '_blank');
            
        }
    };
});
