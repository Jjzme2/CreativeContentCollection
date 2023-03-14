component name="Author" accessors="true" extends="baseObject"{

	property type = "string"    name = "uiAuthorID";
	property type = "string"    name = "uiUserID";
	property type = "string"    name = "uiFeaturedContentID";
	property type = "string"    name = "vcAuthorName";
	property type = "string"    name = "vcAuthorBio";
	property type = "string"    name = "vcAuthorImageLink";
	property type = "integer"   name = "intAuthorRanking";
	property type = "dateTime"  name = "dtJoinDate";
	property type = "dateTime"  name = "dtModifiedDate";


	public Author function init ()
	{
		setUiAuthorID( '' );
		setUiUserID( '' );
		setUiFeaturedContentID( '' );
		setVcAuthorName( '' );
		setVcAuthorBio( '' );
		setVcAuthorImageLink( '' );
		setIntAuthorRanking( 0 );
		setDtJoinDate( '' );
		setDtModifiedDate( '' );
		return this;
	}
}
