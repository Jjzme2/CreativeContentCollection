<cfcomponent persistent="true">

	<cffunction name="Create">
		<cfargument name="AuthorObj" type="struct" required="true">

		<cfquery>
			INSERT INTO tblAuthor
			(
				-- uiAuthorID
				--uiFeaturedContentID
				uiUserID -- This should be the user ID of the author.
				,vcAuthorName
				,vcAuthorBio
				,vcAuthorImageLink
				,intAuthorRanking
				,dtJoinDate
				,dtModifiedDate
			)
			VALUES
			(
				<cfqueryparam value="#AuthorObj.getUserID()#" cfsqltype="cf_sql_idstamp">
				,<cfqueryparam value="#AuthorObj.getAuthorName()#" cfsqltype="cf_sql_VARCHAR">
				,<cfqueryparam value="#AuthorObj.getAuthorBio()#" cfsqltype="cf_sql_VARCHAR">
				,<cfqueryparam value="#AuthorObj.getAuthorImageLink()#" cfsqltype="cf_sql_VARCHAR">
				,<cfqueryparam value="#AuthorObj.getAuthorRanking()#" cfsqltype="cf_sql_NUMERIC">
				,GETUTCDate()
				-- ,GETUTCDate()
			);
		</cfquery>
	</cffunction>

	<cffunction name="List">

		<cfquery name="qList" result="res">
			SELECT
				-- uiAuthorID
				uiFeaturedContentID
				,uiUserID
				,vcAuthorName
				,vcAuthorBio
				,vcAuthorImageLink
				,intAuthorRanking
				,dtJoinDate
				,dtModifiedDate
			FROM
				tblAuthor
			ORDER BY
				intAuthorRanking
		</cfquery>

		<cfreturn qList>
	</cffunction>
</cfcomponent>