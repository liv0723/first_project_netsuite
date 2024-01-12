define('BR.AddExternalUsersToPLP.AddExternalUsersToPLP.Cell.View',
[
    'SCView',
    'Utils',
    'br_addexternaluserstoplp_addexternaluserstoplpcell.tpl'
], function(
    SCViewModel,
    Utils,
    br_addexternaluserstoplp_addexternaluserstoplp_cell) {
    'use strict';

    var SCView = SCViewModel.SCView;

    function MYAddExternalUsersToPLPCellView (options) {
        SCView.call(this, options);

       // console.log('from cellView')
       // console.log(options.model)

        this.model = options.model;
        this.template = br_addexternaluserstoplp_addexternaluserstoplp_cell;
        this.Environment = options.application.getComponent('Environment'); 

    }

    MYAddExternalUsersToPLPCellView.prototype = Object.create( SCView.prototype);
    MYAddExternalUsersToPLPCellView.prototype.constructor = MYAddExternalUsersToPLPCellView;

    MYAddExternalUsersToPLPCellView.prototype.getContext = function () {
        return {
            id: this.model.attributes.id,
            name: this.model.attributes.name
        }
        
    }
    return MYAddExternalUsersToPLPCellView;
    
});