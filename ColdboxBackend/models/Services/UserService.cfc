component singleton accessors="true" extends="BaseService" {

	UserService function init ()
	{
		return this;
	}

	User function getEmpty(){
		return new models.Entity.User();
	}

	Array function List() {
		qry = userGateway.List();
		users = [];
		for (row in qry) {
			ArrayAppend(users, row);
		}
		return users;
	}
}