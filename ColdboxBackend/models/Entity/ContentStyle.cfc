component name="ContentStyle" accessors="true" extends="baseObject"{

	property type = "string" name = "uiContentStyleID";
	property type = "string" name = "vcContentStyleName";
	property type = "number" name = "intStylePopularity";


	public ContentStyle function init ()
	{
		setUiContentStyleID( '' );
		setVcContentStyleName( '' );
		setIntStylePopularity( 0 );
		return this;
	}
}
