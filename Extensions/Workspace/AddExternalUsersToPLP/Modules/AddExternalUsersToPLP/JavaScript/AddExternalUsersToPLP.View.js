// @module BR.AddExternalUsersToPLP.AddExternalUsersToPLP
define('BR.AddExternalUsersToPLP.AddExternalUsersToPLP.View'
,	[
	'SCCollectionView',

	'BR.AddExternalUsersToPLP.AddExternalUsersToPLP.Collection',

	'BR.AddExternalUsersToPLP.AddExternalUsersToPLP.Cell.View',

	'br_addexternaluserstoplp_addexternaluserstoplp.tpl'
	
	,	'BR.AddExternalUsersToPLP.AddExternalUsersToPLP.SS2Model'
	
    ]
, function (
	SCCollectionViewModule,

	AddExternalUsersToPLPCollection,

	AddExternalUsersToPLPCellView,

	br_addexternaluserstoplp_addexternaluserstoplp_tpl
	
	,	AddExternalUsersToPLPSS2Model
	
)
{
    'use strict';

    var SCCollectionView = SCCollectionViewModule.SCCollectionView;

	function MYAddExternalUsersToPLPView (options) {
		//var collection = ['Hats', 'Scarves', 'Gloves'];
		SCCollectionView.call(this, options.collections);

		this.application = options.application;
		this.collection = new AddExternalUsersToPLPCollection([],options);
		this.template = br_addexternaluserstoplp_addexternaluserstoplp_tpl;
	}

	MYAddExternalUsersToPLPView.prototype = Object.create(SCCollectionView.prototype);
	MYAddExternalUsersToPLPView.prototype.constructor = MYAddExternalUsersToPLPView;

	MYAddExternalUsersToPLPView.prototype.getCellViewInstance = function (model) {
        console.log('from collectionView')
		console.log(model)

		return new AddExternalUsersToPLPCellView({
			application: this.application,
			model: model
		})
	}

	MYAddExternalUsersToPLPView.prototype.getCellViewsPerRow = function () {
		return 5;
	  }

	MYAddExternalUsersToPLPView.prototype.render = function () {
		var self = this;

		console.log(this.collection)
		this.collection.fetch().done(function () {
			SCCollectionView.prototype.render.call(self)
		})
	}

	MYAddExternalUsersToPLPView.prototype.getContext = function () {
		return {};
	}

	return MYAddExternalUsersToPLPView;

});
