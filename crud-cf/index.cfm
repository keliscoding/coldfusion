<cfset urlString = CGI.SCRIPT_NAME>
<cfset filename = ListLast(urlString, "/")>
                
<cfif filename EQ "/" OR filename EQ "index.cfm">
    <cflocation url="pages/list-person.cfm"/>
</cfif>