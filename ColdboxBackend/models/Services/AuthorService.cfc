component singleton accessors="true" extends="BaseService" {

	AuthorService function init ()
	{
		return this;
	}

	Author function getEmpty(){
		return new models.Entity.Author();
	}

	Array function List() {
		qry = AuthorGateway.List();
		authors = [];
		for (row in qry) {
			ArrayAppend(authors, row);
		}
		return authors;
	}
}