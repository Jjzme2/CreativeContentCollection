<cfcomponent persistent="true">

	<cffunction name="Create">
		<cfargument name="employeeObj" type="struct" required="true">

		<cfquery>
			INSERT INTO tblUsers
			(
				vcUsername
				,vcUserPass
				,vcUserEmail
				,dtJoinDate
				-- ,dtModifiedDate
			)
			VALUES
			(
				<cfqueryparam value="#employeeObj.getUsername()#" cfsqltype="cf_sql_VARCHAR">
				,<cfqueryparam value="#employeeObj.getPassword()#" cfsqltype="cf_sql_VARCHAR">
				,<cfqueryparam value="#employeeObj.getEmail()#" cfsqltype="cf_sql_VARCHAR">
				,GETUTCDate()
				-- ,GETUTCDate()
			);
		</cfquery>
	</cffunction>

	<cffunction name="List">

		<cfquery name="qList" result="res">
			SELECT
				uiUserId
				,intIsAdmin
				,s.vcSuffixName as suffix
				,vcUsername
				,vcUserEmail
				,vcUserPassword
				,vcFirstName
				,vcLastName
				,dtJoinDate
			FROM
				tblUsers
			LEFT JOIN tblSuffix s ON s.intSuffixID = tblUsers.intSuffixID
			ORDER BY
				vcUsername
		</cfquery>

		<cfreturn qList>
	</cffunction>
</cfcomponent>