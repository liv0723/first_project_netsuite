// Model.js
// -----------------------
// @module Case
define("BR.DuplicatePriceProductPDP.DuplicatePriceProductPDP.SS2Model", ["Backbone", "Utils"], function(
    Backbone,
    Utils
) {
    "use strict";

    // @class Case.Fields.Model @extends Backbone.Model
    return Backbone.Model.extend({
        //@property {String} urlRoot
        urlRoot: Utils.getAbsoluteUrl(
            getExtensionAssetsPath(
                "Modules/DuplicatePriceProductPDP/SuiteScript2/DuplicatePriceProductPDP.Service.ss"
            ),
            true
        )
});
});
