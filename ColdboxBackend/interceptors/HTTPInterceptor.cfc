/**
 * I am a new interceptor
 */
component{

	/**
	 * Configure the interceptor
	 */
	void function configure(){

	}

	/**
	 * preProcess
	 */
	function preProcess( event, interceptData, buffer, rc, prc ){
		// writeDump( var="#event#");
		// abort;
        event.setHTTPHeader(name="Access-Control-Allow-Origin", value="http://localhost:8080");
        event.setHTTPHeader(name="Access-Control-Allow-Methods", value="GET, POST");
	}
}
