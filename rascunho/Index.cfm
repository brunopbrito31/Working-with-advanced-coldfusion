<cfset lista = "arroz, feijao, trigo">

<cfinvoke  component="workspace.escolaDAO" method = "mostrarTodasEscolas" returnvariable = "listaEscolas"></cfinvoke>
<cfinvoke  component="workspace.escolaDAO" method = "somar" returnvariable = "soma">
    <cfinvokeargument  name="numeroA"  value="5">
    <cfinvokeargument  name="numeroB"  value="3">
</cfinvoke> 

<cfinclude  template="header.cfm">
    <cfoutput>
        <cfloop query="#listaEscolas#">
            Nome da escola: #nome# Telefone da Escola: #telefone# <br>
        </cfloop>

        Testando a soma: #soma#<br>

        <ul>
            <cfloop list="#lista#" item="item">
                <li>Item da Lista: #item#</li>
            </cfloop>
        </ul>

                
    </cfoutput>
<cfinclude  template="footer.cfm">
