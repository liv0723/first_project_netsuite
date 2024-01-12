
function service(request, response)
{
	'use strict';
	try 
	{
		require('BR.AddExternalUsersToPLP.AddExternalUsersToPLP.ServiceController').handle(request, response);
	} 
	catch(ex)
	{
		console.log('BR.AddExternalUsersToPLP.AddExternalUsersToPLP.ServiceController ', ex);
		var controller = require('ServiceController');
		controller.response = response;
		controller.request = request;
		controller.sendError(ex);
	}
}