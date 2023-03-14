component name="CreativeContentCollection" accessors="true" extends="baseObject"{

	property type = "string"   name = "uiContentID";
	property type = "string"   name = "uiAuthorID";
	property type = "string"   name = "uiStyleID";
	property type = "string"   name = "vcContentTitle";
	property type = "dateTime" name = "dtCreationDate";


	public CreativeContentCollection function init ()
	{
		SetUiContentID( "" );
		SetUiAuthorID( "" );
		SetUiStyleID( "" );
		SetVcContentTitle( "" );
		SetDtCreationDate( "" );
		return this;
	}
}
