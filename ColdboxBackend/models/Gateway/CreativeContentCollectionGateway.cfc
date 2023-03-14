<cfcomponent persistent="true">

	<cffunction name="Create">
		<cfargument name="CreativeContentCollection" type="struct" required="true">

		<cfquery>
			INSERT INTO tblCreativeContentCollection
			(
				--uiContentID
				uiAuthorID
				,uiStyleID
				,vcContentTitle
				,dtCreationDate
			)
			VALUES
			(
				<cfqueryparam value="#CreativeContentCollection.getUiAuthorID()#" cfsqltype="cf_sql_VARCHAR">
				,<cfqueryparam value="#CreativeContentCollection.getUiStyleID()#" cfsqltype="cf_sql_VARCHAR">
				,<cfqueryparam value="#CreativeContentCollection.getVcContentTitle()#" cfsqltype="cf_sql_VARCHAR">
				,<cfqueryparam value="#CreativeContentCollection.getDtCreationDate()#" cfsqltype="cf_sql_DATETIME">
			);
		</cfquery>
	</cffunction>

	<cffunction name="List">

		<cfquery name="qList" result="res">
			SELECT
				uiContentID
				,uiAuthorID
				,uiStyleID
				,vcContentTitle
				,dtCreationDate
			FROM
				tblCreativeContentCollection
			ORDER BY
				uiStyleID
				,uiAuthorID
				,vcContentTitle
		</cfquery>

		<cfreturn qList>
	</cffunction>
</cfcomponent>