component singleton accessors="true" extends="BaseService" {

	CreativeContentCollectionService function init ()
	{
		return this;
	}

	CreativeContentCollection function getEmpty(){
		return new models.Entity.CreativeContentCollection();
	}

	Array function List() {
		qry = CreativeContentCollectionGateway.List();
		collection = [];
		for (row in qry) {
			ArrayAppend(collection, row);
		}
		return collection;
	}
}