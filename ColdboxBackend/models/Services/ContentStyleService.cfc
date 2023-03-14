component singleton accessors="true" extends="BaseService" {

	ContentStyleService function init ()
	{
		return this;
	}

	ContentStyle function getEmpty(){
		return new models.Entity.ContentStyle();
	}

	Array function List() {
		qry = contentStyleGateway.List();
		styles = [];
		for (row in qry) {
			ArrayAppend(styles, row);
		}
		return styles;
	}
}