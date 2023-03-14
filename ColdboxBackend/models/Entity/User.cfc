component name="User" accessors="true" extends="baseObject"{

	property type = "number" name = "intUserID";
	property type = "number" name = "intSuffixID";
	property type = "number" name = "intIsAdmin";
	property type = "string" name = "vcUsername";
	property type = "string" name = "vcUserEmail";
	property type = "string" name = "vcUserPassword";
	property type = "string" name = "vcFirstName";
	property type = "string" name = "vcLastName";
	property type = "string" name = "dateJoinDate";


	public User function init ()
	{
		SetIntUserID( 0 );
		SetIntSuffixID( 0 );
		SetIntIsAdmin( 0 );
		SetVcUsername( "" );
		SetVcUserEmail( "" );
		SetVcPassword( "" );
		SetVcFirstName( "" );
		SetVcLastName( "" );
		SetDateJoinDate( "" );
		return this;
	}
}
