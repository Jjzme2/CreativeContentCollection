<cfcomponent persistent="true">

	<cffunction name="Create">
		<cfargument name="ContentStyle" type="struct" required="true">

		<cfquery>
			INSERT INTO tblContentStyle
			(
				--uiContentStyleID
				vcContentStyleName
				--intStylePopularity
			)
			VALUES
			(
				<cfqueryparam value="#ContentStyle.getVcContentStyleName()#" cfsqltype="cf_sql_VARCHAR">
			);
		</cfquery>
	</cffunction>

	<cffunction name="List">

		<cfquery name="qList" result="res">
			SELECT
				uiContentStyleID
				,vcContentStyleName
				,intStylePopularity
			FROM
				tblContentStyle
			ORDER BY
				intStylePopularity,
				vcContentStyleName
		</cfquery>

		<cfreturn qList>
	</cffunction>
</cfcomponent>