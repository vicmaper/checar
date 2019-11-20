<!DOCTYPE html>
<html>
    <head>
         <script type="text/javascript">
        $(document).ready(function() {
            $('#tablita').DataTable();
        });
    </script>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'historiaCita.label', default: 'HistoriaCita')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-historiaCita" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="Inicio"/></a></li>
                <sec:ifAnyGranted roles='ROLE_ADMIN'>
                <li><g:link class="create" action="create"><g:message code="Crear historia" args="[entityName]" /></g:link></li></sec:ifAnyGranted>
            </ul>
        </div>
        <table id="tablita" class="display" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>No.cita</th>
                        <th>Terapeuta</th>
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${ulsa.citasclinica.HistoriaCita.list()}">
                    <tr>
                        <td>
                            <g:link action="show" params="${[id: it.id]}">
                            ${it.id}
                            </g:link>
                        </td>
                        <td>${it.terapeuta}</td>
                    </tr>
                    </g:each>
                </tbody>
            </table>
    </body>
</html>