<cffunction name="arrayFind">
	<cfargument name="arr" type="array" required="true">
	<cfargument name="toFind" type="any" required="true"/>

	<cfset var position = arguments.arr.indexOf(arguments.toFind)+1/>

	<cfreturn position/>
</cffunction>
<cffunction name="arrayFindNoCase">
	<cfargument name="arr" type="array" required="true">
	<cfargument name="toFind" type="any" required="true"/>


	<cfset var position = 0/>

	<cfif isSimpleValue(arguments.toFind)>
		<cfset position = arguments.arr.indexOf(lcase(arguments.toFind))+1/>
	<cfelse>
		<cfset position = arguments.arr.indexOf(arguments.toFind)+1/>
	</cfif>


	<cfreturn position/>
</cffunction>

<cffunction name="arrayContains">
	<cfargument name="arr" type="array" required="true">
	<cfargument name="toFind" type="any" required="true"/>

	<cfset var position = arrayFind(arguments.arr,arguments.toFind)/>

	<cfreturn position neq 0>
</cffunction>