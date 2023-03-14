/**
 * I am a User API
 */
component {

	property name = "userService"     inject = "Services/UserService";

	this.allowedMethods = {
		"index" : "GET",
		"view" : "GET",
		"getEmpty": "GET",
		"save" : "POST,PUT",
		"remove" : "POST,DELETE"
	};

	/** Get an Empty User */
	function getEmpty( event, rc, prc ) {
		var user = userService.getEmptyUser();
		event.renderData( type="JSON", data=user );
	}

	/**
	 * List all users. By naming this index, the default route will be /api/users/
	 */
	function index( event, rc, prc ) {
		var qUsers = userService.List();

    	event.renderData( type="JSON", data=qUsers );
	}

	/**
	 * List a single user by id
	 */
	function view( event, rc, prc ) {
		// Get employee to view
	}

	/**
	 * This will save a user to the database
	 */
	function save( event, rc, prc ){
		event.setView( "api/user/save" );
	}

	/**
	 * This will remove a user by id
	 */
	function remove( event, rc, prc ){
		event.setView( "api/user/remove" );
	}

}
