// @module BR.AddLinkToLayout.AddLinkToLayout
define('BR.AddLinkToLayout.AddLinkToLayout.View'
,	[
	'SCView',
	'br_addlinktolayout_addlinktolayout.tpl',
	'BR.AddLinkToLayout.SecundaryView.View'
    ]
, function (
	SCViewModule,
	br_addlinktolayout_addlinktolayout_tpl,
	SecundaryView
)
{
    'use strict';
	
	var SCView = SCViewModule.SCView;

	function MYAddLinkToLayoutView(options) {
		SCView.call(this)

		this.options = options;
		this.template = br_addlinktolayout_addlinktolayout_tpl;
		this.attribute = {id: 'IdMyViewAddLinkToLayout', class: 'ClassMyViewAddLinkToLayout' }
	}

	MYAddLinkToLayoutView.prototype = Object.create(SCView.prototype);
	MYAddLinkToLayoutView.prototype.constructor = MYAddLinkToLayoutView;

	MYAddLinkToLayoutView.prototype.getContext = function() {
		return {
			link: 'https://www.google.com.uy/'
		}
	}

	
	MYAddLinkToLayoutView.prototype.getChildViews = function() {
        return {
            'NewView.Link': function() {
                return new SecundaryView();
            }
        }
    }

	
	return MYAddLinkToLayoutView;

});
