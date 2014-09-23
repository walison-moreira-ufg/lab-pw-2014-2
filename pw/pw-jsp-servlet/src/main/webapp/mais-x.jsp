<!DOCTYPE html>
<html>
	<head>
		<title>PW - JSP e Servlet - Mais X (com sess�o)</title>
		<meta charset="utf-8">
		<!-- CSS do Bootstrap. -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- CSS da aplica��o. -->
		<link rel="stylesheet" type="text/css" href="css/pw-jsp-servlet.css">
  </head>
	<body>
		<h1>Mais X (com sess�o)</h1>
		<form>
			X: <input type="text" name="numero">
			<button>Mais X</button>
		</form>
		<%
		String numeroString = request.getParameter("numero");
		if (numeroString == null) {
			numeroString = "0.0";
		}
		Double numero = Double.parseDouble(numeroString);

		//Pegando um valor da sess�o.
		Double resultado = (Double) session.getAttribute("resultado");
		
		if (resultado == null) {
			resultado = 0.0;
		}

		resultado += numero;

		//Definindo um valor na sess�o.
		session.setAttribute("resultado", resultado);
		%>
		<h2>Resultado = ${resultado}</h2>
		<!-- O mesmo que: -->
		<!--h2>Resultado = <%//out.print(session.getAttribute("resultado"));%></h2-->
	</body>
</html>