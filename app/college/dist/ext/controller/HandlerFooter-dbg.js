sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        FooterMethod: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
