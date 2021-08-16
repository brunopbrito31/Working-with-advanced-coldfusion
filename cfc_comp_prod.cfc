<cfcomponent>

    <!--- Função para retornar todos os produtos existentes no banco de dados --->
    <cffunction  name="retornarProdutos" returntype = "query">
        <cfargument  name= "nome" default = 0>
        <cfargument  name= "tempo" default = 0>

        <cfquery datasource = "estudo" name = "qProducts">
            SELECT * from produtos
            WHERE 1=1
            <cfif #ARGUMENTS.nome# not equal 0>
                AND nome LIKE '%#ARGUMENTS.nome#%'
            </cfif>
            <cfif #ARGUMENTS.tempo# neq 0>
                AND tempo_entrega = #ARGUMENTS.tempo#
            </cfif>
        </cfquery>

        <cfreturn qProducts>
    </cffunction>

    <!--- Função para retornar todos os estados existentes no banco de dados --->
    <cffunction  name="retornarEstados" returntype = "Query">
        <cfquery datasource = "estudo" name = "qEstados">
            SELECT id,nome 
            FROM estados
        </cfquery>
        <cfreturn qEstados>
    </cffunction>

</cfcomponent>