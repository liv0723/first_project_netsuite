// @module BR.DuplicatePriceProductPDP.DuplicatePriceProductPDP
define('BR.DuplicatePriceProductPDP.DuplicatePriceProductPDP.View'
,	[
	'SCView',
	'br_duplicatepriceproductpdp_duplicatepriceproductpdp.tpl'
    ]
, function (
	SCViewModule,
	br_duplicatepriceproductpdp_duplicatepriceproductpdp_tpl
	
)
{
    'use strict';

	var SCView = SCViewModule.SCView;

	function MYDuplicatePriceProductPDPView (options) {
		SCView.call(this,options);

		this.template = br_duplicatepriceproductpdp_duplicatepriceproductpdp_tpl;
		this.options = options;
		this.contextDataRequest = ['item'];
		this.stockInfo = options.pdp.getStockInfo().stock;
		this.quantity = options.pdp.getItemInfo().quantity
		this.price = options.pdp.getPrice().price;
		//console.log(options.pdp.getItemInfo())
		//console.log(options.pdp.getPrice().price)
	}

	MYDuplicatePriceProductPDPView.prototype = SCView.prototype;
	MYDuplicatePriceProductPDPView.prototype.constructor = MYDuplicatePriceProductPDPView;

//	MYDuplicatePriceProductPDPView.prototype.render = function(){
//		console.log(typeof this.price)
//		if(this.price == 199.99) {
//			SCView.prototype.render.call(this);
//		}
//	}

	MYDuplicatePriceProductPDPView.prototype.getContext = function() {
		if(this.quantity > 1){
			return {
				price: this.price * 2
			}
		}else{
		return {
			price: this.price
		}
	}
		
	}

	return MYDuplicatePriceProductPDPView;
});
