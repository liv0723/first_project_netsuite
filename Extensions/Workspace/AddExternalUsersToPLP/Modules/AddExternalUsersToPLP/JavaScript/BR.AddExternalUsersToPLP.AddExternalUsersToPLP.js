
define(
	'BR.AddExternalUsersToPLP.AddExternalUsersToPLP'
,   [
		'BR.AddExternalUsersToPLP.AddExternalUsersToPLP.View'
	]
,   function (
		AddExternalUsersToPLPView
	)
{
	'use strict';

	return  {
		mountToApp: function mountToApp (container)
		{
			var plp = container.getComponent('PLP');

			if(plp){

				plp.addChildViews(plp.PLP_VIEW, {
					'Facets.Items': {
						'MYView.ListUsers': {
							childViewIndex: 1,
							childViewConstructor: function() {
								return new AddExternalUsersToPLPView({
									application: container
								});
							}
						}
					}
				})
			}

		}
	};
});
