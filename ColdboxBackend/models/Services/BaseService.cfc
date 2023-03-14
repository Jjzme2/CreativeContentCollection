/**
 * This will get the needed information that might be used across many different services.
 *
 * @Author  Jj Zettler
 * @date    11/15/2022
 * @version 0.1
 */
component singleton accessors="true" {

	property name = "userGateway"   	  			   inject = "Gateway/UserGateway";
	property name = "authorGateway" 	  			   inject = "Gateway/AuthorGateway";
	property name = "contentStyleGateway" 			   inject = "Gateway/ContentStyleGateway";
	property name = "creativeContentCollectionGateway" inject = "Gateway/creativeContentCollectionGateway";


	property name = "populator"     	  inject = "wirebox:populator";



	BaseService function init ()
	{
		return this;
	}

	/**
	 * Populates an empty obj with given data
	 *
	 * @type What type of file are we populating from? (XML, JSON, Query, Struct)
	 * @data The data we are using to populate the empty object.
	 */
	any function populate ( required string type, required any data )
	{
		switch ( type )
		{
			case LCase( 'struct' ):
			case LCase( 's' ):
				obj = populator.populateFromStruct( target = GetEmpty(), memento = data )
				return obj;
				break;
			case LCase( 'query' ):
			case LCase( 'qry' ):
			case LCase( 'q' ):
				obj = populator.populateFromQuery( target = GetEmpty(), qry = data )
				return obj;
				break;
			case LCase( 'json' ):
			case LCase( 'j' ):
				obj = populator.populateFromJSON( target = GetEmpty(), JSONString = data )
				return obj;
				break;
			case LCase( 'xml' ):
			case LCase( 'x' ):
				obj = populator.populateFromXML( target = GetEmpty(), xml = data )
				return obj;
				break;
			default:
				// What are we populating from?
				return;
		}
	}

}
