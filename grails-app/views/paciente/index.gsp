<!DOCTYPE html>
<html>
    <head>
           <script type="text/javascript">
        $(document).ready(function() {
            $('#tablita').DataTable();
        });
    </script>

        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="Inicio"/></a></li>
                <li><g:link class="create" action="create"><g:message code="Registrar paciente" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <table id="tablita" class="display" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>No. Paciente</th>
                        <th>Nombre</th>
                        <th>Apellido Paterno</th>
                        <th>Apellido Materno</th>
                        <th>Curp</th>
                        <th>Teléfono</th>
                        <th>Direccion</th>
                        <th>Diagnostico</th>
                        <th>Status</th>
                        <th>Fecha Nac.</th>
                        <th>opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${ulsa.citasclinica.Paciente.list()}">
                    <tr>
                        <td>
                            <g:link action="show" params="${[id: it.id]}">
                            ${it.id}
                            </g:link>
                        </td>
                        <td>${it.pNombre}</td>
                        <td>${it.pApPaterno}</td>
                        <td>${it.pApMaterno}</td>
                        <td>${it.pCurp}</td>
                        <td>${it.pTelefono}</td>
                        <td>${it.pDireccion}</td>
                        <td>${it.pDiagnostico}</td>
                        <td>${it.pStatus}</td>
                        <td>${it.pFechaNac.format("yyyy-MM-dd")}</td>
                        <td>
                            <g:link action="show" params="${[id: it.id]}">
                            Ver
                            </g:link>
                        </td>
                        
                    </tr>
                    </g:each>
                </tbody>
            </table>
        </div>
    </body>
</html>