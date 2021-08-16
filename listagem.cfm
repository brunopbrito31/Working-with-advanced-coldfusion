<!---<cfquery datasource = "estudo" name = "qProducts">
    SELECT * from produtos
</cfquery>--->

<cfinvoke  component ="workspace.cfc_comp_prod" method = "retornarProdutos" returnvariable = "listarProdutos">
<cfif isDefined("url.produto")>
    <cfinvokeargument  name= "nome" value="#url.produto#">
</cfif>
<cfif isDefined("url.tempo")>
    <cfinvokeargument  name= "tempo" value = #url.tempo#>
</cfif>

</cfinvoke>


<cfinclude  template="header.cfm">

<main>
    <div id = "janela_pesquisa">
        <form action = "listagem.cfm" method = "get">
            <tr>
                <td><input type="text" name="produto" placeholder="Pesquisa"></td>
                <td><input type="image" name="pesquisa" src="asserts/searchicon.jpg"></td>
            </tr>
        
            <cfset dias_de_entrega = "10,15">

            <cfoutput>
                <select name = "tempo">
                    <option value = "0">Tempo de entrega</option>
                    <cfloop list="#dias_de_entrega#" item="i">
                        <option value = "#i#" <cfif isDefined("url.tempo") and url.tempo eq #i#> selected </cfif> >#i#</option>
                    </cfloop>
                </select>
            </cfoutput>
            
    
        </form>


        <cfoutput>
            <cfloop query="listarProdutos">
                Nome: #nome#<br>
                Valor: #valor#<br>
                Tempo de Entrega: #tempo_entrega#<br>
                <img src = #ilustracao#><br>
            </cfloop>
        </cfoutput>
        
        <!---Cafe:
        <img src = "asserts/cofee.png">--->
    </div>
</main>

<cfinclude  template="footer.cfm">