// Model.js
// -----------------------
// @module Case
define("BR.AddExternalUsersToPLP.AddExternalUsersToPLP.SS2Model", ["Backbone", "Utils"], function(
    Backbone,
    Utils
) {
    "use strict";

    // @class Case.Fields.Model @extends Backbone.Model
    return Backbone.Model.extend({
        //@property {String} urlRoot
        urlRoot: Utils.getAbsoluteUrl(
            getExtensionAssetsPath(
                "Modules/AddExternalUsersToPLP/SuiteScript2/AddExternalUsersToPLP.Service.ss"
            ),
            true
        )
});
});
