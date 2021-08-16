<cfdump  var="#form#">

<cfinvoke component = "workspace.cfc_comp_prod"  
          method="retornarEstados"
          returnvariable = "qEstados">
<cfinclude  template="header.cfm">
</cfinvoke>
<div id = "janela_formulario">

    <form action= "inserirtransportadoras.cfm" method = "post">
        <input type = "text" name = "nometransportadora" placeholder= "nome" style = "border-radius:50px">
        <input type = "text" name = "telefone" placeholder= "telefone" style = "border-radius:50px">
        <select name = "estados" style = "border-radius:50px">
            <cfoutput query = "qEstados">
                <option value = "#id#">
                    #nome#
                </option>
            </cfoutput>
        </select>
        <input type = "submit" value = "inserir" style = "border-radius:50px">
    </form>

</div>

<cfinclude  template="footer.cfm">