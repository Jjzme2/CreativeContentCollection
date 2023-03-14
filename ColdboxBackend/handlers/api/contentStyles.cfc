/**
 * I am a ContentStyle API
 */
component {

	property name = "contentStyleService"     inject = "Services/ContentStyleService";

	this.allowedMethods = {
		"index" : "GET",
		"view" : "GET",
		"save" : "POST,PUT",
		"remove" : "POST,DELETE"
	};

	/**
	 * List all contentStyles. By naming this index, the default route will be /api/contentStyles/
	 */
	function index( event, rc, prc ) {
		var qContentStyles = contentStyleService.List();

    	event.renderData( type="JSON", data=qContentStyles );
	}

	/**
	 * List a single contentStyle by id
	 */
	function view( event, rc, prc ) {
		// Get employee to view
	}

	/**
	 * This will save a contentStyle to the database
	 */
	function save( event, rc, prc ){
		event.setView( "api/contentStyle/save" );
	}

	/**
	 * This will remove a contentStyle by id
	 */
	function remove( event, rc, prc ){
		event.setView( "api/contentStyle/remove" );
	}

}
