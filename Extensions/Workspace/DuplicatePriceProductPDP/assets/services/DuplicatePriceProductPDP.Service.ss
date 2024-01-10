
function service(request, response)
{
	'use strict';
	try 
	{
		require('BR.DuplicatePriceProductPDP.DuplicatePriceProductPDP.ServiceController').handle(request, response);
	} 
	catch(ex)
	{
		console.log('BR.DuplicatePriceProductPDP.DuplicatePriceProductPDP.ServiceController ', ex);
		var controller = require('ServiceController');
		controller.response = response;
		controller.request = request;
		controller.sendError(ex);
	}
}