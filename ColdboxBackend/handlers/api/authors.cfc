/**
 * I am a Author API
 */
component {

	property name = "authorService"     inject = "Services/AuthorService";

	this.allowedMethods = {
		"index" : "GET",
		"view" : "GET",
		"save" : "POST,PUT",
		"remove" : "POST,DELETE"
	};

	/**
	 * List all authors. By naming this index, the default route will be /api/authors/
	 */
	function index( event, rc, prc ) {
		var qAuthors = authorService.List();

    	event.renderData( type="JSON", data=qAuthors );
	}

	/**
	 * List a single author by id
	 */
	function view( event, rc, prc ) {
		// Get employee to view
	}

	/**
	 * This will save a author to the database
	 */
	function save( event, rc, prc ){
		event.setView( "api/author/save" );
	}

	/**
	 * This will remove a author by id
	 */
	function remove( event, rc, prc ){
		event.setView( "api/author/remove" );
	}

}
