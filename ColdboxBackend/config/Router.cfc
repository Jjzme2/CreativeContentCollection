component {

	function configure()
	{
		// Set Full Rewrites
        setFullRewrites( true );

        // User Resource
        route( "/api/users/:userID" )
            .withAction( {
                GET    = 'view',
                POST   = 'save',
                PUT    = 'save',
                DELETE = 'remove'
            } )
            .toHandler( "api.users" );





		// Conventions based routing
		route( ":handler/:action?" ).end();
	}
}
