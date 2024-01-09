// Model.js
// -----------------------
// @module Case
define("BR.AddLinkToLayout.AddLinkToLayout.SS2Model", ["Backbone", "Utils"], function(
    Backbone,
    Utils
) {
    "use strict";

    // @class Case.Fields.Model @extends Backbone.Model
    return Backbone.Model.extend({
        //@property {String} urlRoot
        urlRoot: Utils.getAbsoluteUrl(
            getExtensionAssetsPath(
                "Modules/AddLinkToLayout/SuiteScript2/AddLinkToLayout.Service.ss"
            ),
            true
        )
});
});
