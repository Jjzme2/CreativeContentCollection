/**
 * I am a CreativeContentCollection API
 */
component {

	property name = "creativeContentCollectionService"     inject = "Services/CreativeContentCollectionService";

	this.allowedMethods = {
		"index" : "GET",
		"view" : "GET",
		"save" : "POST,PUT",
		"remove" : "POST,DELETE"
	};

	/**
	 * List all creativeContentCollections. By naming this index, the default route will be /api/creativeContentCollections/
	 */
	function index( event, rc, prc ) {
		var qCreativeContentCollections = creativeContentCollectionService.List();

    	event.renderData( type="JSON", data=qCreativeContentCollections );
	}

	/**
	 * List a single creativeContentCollection by id
	 */
	function view( event, rc, prc ) {
		// Get employee to view
	}

	/**
	 * This will save a creativeContentCollection to the database
	 */
	function save( event, rc, prc ){
		event.setView( "api/creativeContentCollection/save" );
	}

	/**
	 * This will remove a creativeContentCollection by id
	 */
	function remove( event, rc, prc ){
		event.setView( "api/creativeContentCollection/remove" );
	}

}
