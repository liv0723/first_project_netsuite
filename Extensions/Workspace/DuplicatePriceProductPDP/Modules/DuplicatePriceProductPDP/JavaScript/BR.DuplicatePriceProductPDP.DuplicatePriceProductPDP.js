
define(
	'BR.DuplicatePriceProductPDP.DuplicatePriceProductPDP'
,   [
		'BR.DuplicatePriceProductPDP.DuplicatePriceProductPDP.View'
	]
,   function (
		DuplicatePriceProductPDPView
	)
{
	'use strict';

	return  {
		mountToApp: function mountToApp (container)
		{
			var pdp = container.getComponent('PDP');

			if(pdp) {
				pdp.addChildViews(pdp.PDP_FULL_VIEW, {
					'Product.Price': {
						'Product.Price': { 
						childViewIndex : 10,
						childViewConstructor: function() {
							return new DuplicatePriceProductPDPView({pdp: pdp});
						}
					}
					}
				})
			}

		}
	};
});
