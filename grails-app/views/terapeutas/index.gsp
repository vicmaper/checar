<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'terapeutas.label', default: 'Terapeutas')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-terapeutas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="Inicio"/></a></li>
                <li><g:link class="create" action="create"><g:message code="Registar Terapeuta" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-terapeutas" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${terapeutasList}" />

            <div class="pagination">
                <g:paginate total="${terapeutasCount ?: 0}" />
            </div>
        </div>
    </body>
</html>