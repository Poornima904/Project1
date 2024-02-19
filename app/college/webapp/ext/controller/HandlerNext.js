sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        NextMethod: function(oEvent) {
            MessageToast.show("NO NEXT PAGE FOUND.");
        }
    };
});
