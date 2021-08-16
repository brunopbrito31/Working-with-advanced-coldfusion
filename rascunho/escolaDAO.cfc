<cfcomponent>

    <cfproperty  name="nome">

    <cffunction name="mostrarTodasEscolas" returntype = "query">
        <cfquery datasource = "estudo" name = "qFuncaoSQLTeste">
            SELECT * FROM escola
        </cfquery>
        <cfreturn qFuncaoSQLTeste>
    </cffunction>

    <cffunction  name="somar" returntype = "numeric">
        <cfargument name ="numeroA" default = 0>
        <cfargument name ="numeroB" default = 0>

        <cfset resultado = #numeroA# + #numeroB#>

        <cfreturn resultado>

    </cffunction>

</cfcomponent>