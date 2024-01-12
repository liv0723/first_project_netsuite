define('BR.AddExternalUsersToPLP.AddExternalUsersToPLP.Collection',
[
    'SCCollection',
    'SCModel',
    'underscore'
], function(
    SCCollectionModule,
    SCModelModule,
    _) {
    'use strict';

    var SCCollection = SCCollectionModule.SCCollection;
    var SCModel = SCModelModule.SCModel;

    function MyAddExternalUsersToPLPCollection (models,options) {
        SCCollection.call(this, models, options);

        this.model = SCModel;
        this.url = function url () {
        return 'https://jsonplaceholder.typicode.com/users/';
        }
        this.parse = function parse (response) {
            //console.log('from collection')
            //console.log(response)
            return _.compact(response) || []
        }
    }

    MyAddExternalUsersToPLPCollection.prototype = Object.create(SCCollection.prototype);
    MyAddExternalUsersToPLPCollection.prototype.constructor = MyAddExternalUsersToPLPCollection;

    return MyAddExternalUsersToPLPCollection;
    
});