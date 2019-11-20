<!DOCTYPE html>
<html>
<body>
	<h1>Historial de paciente</h1>
	<g:if test="${hist != null}">
	<g:each in="${hist}">
		<p><label>Terapeuta: ${it.terapeuta}</label></p>
		<p><label>S: ${it.s}</label></p>
		<p><label>O: ${it.o}</label></p>
		<p><label>A: ${it.a}</label></p>
		<p><label>P: ${it.p}</label></p>
	</g:each>
	</g:if>
	<g:if test="${hist == null}">
		<h4>Historial clínico vacio.</h4>
	</g:if>
</body>
</html>