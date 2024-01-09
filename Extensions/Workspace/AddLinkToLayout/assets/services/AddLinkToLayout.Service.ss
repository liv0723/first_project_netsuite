
function service(request, response)
{
	'use strict';
	try 
	{
		require('BR.AddLinkToLayout.AddLinkToLayout.ServiceController').handle(request, response);
	} 
	catch(ex)
	{
		console.log('BR.AddLinkToLayout.AddLinkToLayout.ServiceController ', ex);
		var controller = require('ServiceController');
		controller.response = response;
		controller.request = request;
		controller.sendError(ex);
	}
}