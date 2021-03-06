<cfcomponent displayname="PvPTentacle" output="false" extends="com.hanzo.cf.Kathune.tentacle.LookingForGuild.NorthAmerica.Horde.HordeTentacle" implements="com.hanzo.cf.Kathune.interface.ITentacle">

	<cffunction name="init" returntype="com.hanzo.cf.Kathune.tentacle.LookingForGuild.NorthAmerica.Horde.PvPTentacle" access="public" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setForumURL('http://www.lookingforguild.net/viewsublist.asp?cid=10001&sid=50003&3id=100009') />
		<cfset setSource('LookingForGuild.net -> Players looking for a guild -> North America -> Horde -> PvP') />
		
		<cfreturn super.init( arguments.settings ) />
	</cffunction>
	
	<cffunction name="CreatePostObjectFromQueryRow" returntype="com.hanzo.cf.Kathune.Post" access="public" output="false">
		<cfargument name="dataQuery" type="query" required="true" >
		<cfargument name="row" type="numeric" required="true" />

		<cfset var postObject = super.CreatePostObjectFromQueryRow( arguments.dataQuery, arguments.row ) />

		<cfset postObject.setIsPvP( true ) />
		
		<cfreturn postObject />
	</cffunction>
	
</cfcomponent>