<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
 <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="datatables.css"/>
    
    <asset:javascript src="jquery-1.12.4.js"/>
    <asset:javascript src="popper.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="miLibreria.js"/>
    <asset:javascript src="datatables.js"/>
    <g:layoutHead/>
    <style>
        body {
            background: #E6E6E6;
        }
        footer {
            background: #1B1464;
        }
        nav {
            background: #1B1464;
            color: #008000;
        }
        #se{
            padding: left;    
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <sec:ifLoggedIn>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <sec:ifAnyGranted roles='ROLE_ADMIN'>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="${createLink(uri: '/Cita')}"><font color="white">Citas</font></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${createLink(uri: '/Documentos')}"><font color="white">Documentos</font></a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="${createLink(uri: '/DocumentosPersonales')}"><font color="white">Documentos personales</font></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${createLink(uri: '/HistoriaCita')}"><font color="white">Historia Cita</font></a>
                </li>
                  <li class="nav-item">
                        <a class="nav-link" href="${createLink(uri: '/Paciente')}"><font color="white">Paciente</font></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(uri: '/StatusCit')}"><font color="white">Status citas</font></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(uri: '/Terapeutas')}"><font color="white">Terapeutas</font></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(uri: '/TipoArchivo')}"><font color="white">Tipo archivos</font></a>
                    </li>
                <li class="nav-item">
                        <a class="nav-link" href="${createLink(uri: '/')}"><font color="white">Inicio</font></a>
                    </li>
                     <li>
                        <a href="logoff">Salir</a>
                    </li>
            </ul>
        </div>
    </sec:ifAnyGranted>
    <sec:ifAnyGranted roles='ROLE_USUARIO'>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="${createLink(uri: '/Cita')}"><font color="white">Citas</font></a>
                </li>
                  <li class="nav-item">
                        <a class="nav-link" href="${createLink(uri: '/Paciente')}"><font color="white">Paciente</font></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${createLink(uri: '/Terapeutas')}"><font color="white">Terapeutas</font></a>
                    </li>
                <li class="nav-item">
                        <a class="nav-link" href="${createLink(uri: '/')}"><font color="white">Inicio</font></a>
                    </li>
                     <li>
                        <a href="logoff">Salir</a>
                    </li>
            </ul>
        </div>
    </sec:ifAnyGranted>
    </sec:ifLoggedIn>
    </nav>

     </div>
    <g:layoutBody/>
    <footer class="page-footer font-small blue pt-4 mt-4"><center>Desarrollado en la universidad la Salle Oaxaca</center></footer>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>
</body>
</html>
