/**
 * @NApiVersion 2.0
 * @NScriptType ClientScript
 */

define([
    'N/ui/dialog'
], function(dialog) {
    'use strict';

    function entryPoint () {
        var options = {
            title: 'Hello',
            message: 'Hello world'
        }

        try {
            dialog.alert(options);

            log.debug({
                title: 'Success',
                details: 'Alert displayed successfully'
            });
        } catch (error) {

            log.error({
                title: error.name,
                details: error.message
            })
            
        }
    }
    
    return {
        pageInit: entryPoint
    }
});


