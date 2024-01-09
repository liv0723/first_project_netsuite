// Model.js
// -----------------------
// @module Case
define("BR.AddLinkToLayout.AddLinkToLayout.Model", ["Backbone", "Utils"], function(
    Backbone,
    Utils
) {
    "use strict";

    // @class Case.Fields.Model @extends Backbone.Model
    return Backbone.Model.extend({

        
        //@property {String} urlRoot
     /*   urlRoot: Utils.getAbsoluteUrl(
            getExtensionAssetsPath("services/AddLinkToLayout.Service.ss")
        )  */


        urlRoot: "https://jsonplaceholder.typicode.com/users/1"
        
});
});
