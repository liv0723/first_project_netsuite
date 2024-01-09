define(
    'BR.AddLinkToLayout.SecundaryView.View',[
    'SCView',
    'br_addlinktolayout_secundaryview.tpl'
    
], function(
    SCViewModule,
    br_addlinktolayout_secundaryview_tpl
    ) {
    'use strict';

    var SCView = SCViewModule.SCView;

    function MySecundaryView(options) {
        SCView.call(this,options)

        this.options = options;
        this.template = br_addlinktolayout_secundaryview_tpl;
    }

    MySecundaryView.prototype = Object.create(SCView.prototype);
    MySecundaryView.prototype.constructor = MySecundaryView;

    MySecundaryView.prototype.getContext = function() {
        return {
            message: 'Secundary View'
        }
    }

    
    return MySecundaryView;
    
});