<!DOCTYPE html>
<html>
    <head>
           <script type="text/javascript">
        $(document).ready(function() {
            var t = $('#tablita').DataTable({
         });
        });
    </script>

        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cita.label', default: 'Cita')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-cita" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><g:link class="create" action="create"><g:message code="Agendar cita" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <table id="tablita" class="display" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>No. Paciente</th>
                        <th>Fecha</th>
                        <th>Hora</th>
                        <th>opciones</th>
                        <th>status</th>
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${ulsa.citasclinica.Cita.list()}">
                    <g:if test="${it.status== 'Agendada'}">
                    <tr>
                        <td>
                            <g:link action="show" params="${[id: it.id]}">
                            ${it.id}
                            </g:link>
                        </td>
                        <td>${it.paciente}</td>
                        <td>${it.fecha.format("yyyy-MM-dd")}</td>
                        <td>${it.hora}</td>
                        <td>${it.status}</td>
                        
                        <td>
                            <g:link action="show" params="${[id: it.id]}">
                            Ver
                            </g:link>
                        </td>
                        
                    </tr>
                    </g:if>
                    </g:each>
                </tbody>
            </table>
        </div>
    </body>
</html>